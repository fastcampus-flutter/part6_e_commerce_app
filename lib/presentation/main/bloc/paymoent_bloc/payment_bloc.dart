import 'dart:async';
import 'dart:convert';

import 'package:bootpay/bootpay.dart';
import 'package:bootpay/model/extra.dart';
import 'package:bootpay/model/item.dart';
import 'package:bootpay/model/payload.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../domain/model/display/cart/cart.model.dart';

part 'payment_event.dart';

part 'payment_state.dart';

part 'payment_bloc.freezed.dart';

enum PaymentStatus {
  initial,
  success,
  error,
}

@injectable
class PaymentBloc extends Bloc<PaymentEvent, PaymentState> {
  PaymentBloc() : super(PaymentState()) {
    on<PayMoney>(_onPayMoney);
  }

  Future<void> _onPayMoney(
    PayMoney event,
    Emitter<PaymentState> emit,
  ) async {
    emit(state.copyWith(
      status: PaymentStatus.initial,
    ));

    Payload payload = _getPayLoad(event.cartList);

    var (isSuccess, data) = await _bootPay(
      event.context,
      payload,
    );

    if (isSuccess) {
      emit(
        state.copyWith(
          status: PaymentStatus.success,
          productIds:
              event.cartList.map((cart) => cart.product.productId).toList(),
        ),
      );
    } else {
      var message = '결제가 실패했습니다. 잠시후 다시 시도해주세요';
      if (data != null) {
        var decoded = jsonDecode(data);
        message = decoded['message'] ?? message;
      }
      emit(state.copyWith(status: PaymentStatus.error, message: message));
    }
  }
}

Future<(bool, String?)> _bootPay(BuildContext context, Payload payload) async {
  final Completer<(bool, String?)> completer = Completer();

  (bool, String?) response = (false, '');

  Bootpay().requestPayment(
    context: context,
    payload: payload,
    showCloseButton: false,
    onCancel: (String data) {
      response = (false, data);
    },
    onError: (String data) {
      Bootpay().dismiss(context);
      response = (false, data);
    },
    onClose: () {
      Bootpay().dismiss(context);
      completer.complete(response);
    },
    onConfirm: (String data) {
      return true;
    },
    onDone: (String data) {
      response = (true, data);
    },
  );

  return completer.future;
}

Payload _getPayLoad(List<Cart> cartList) {
  Payload payload = Payload();
  double totalPrice = 0.0;

  List<Item> itemList = cartList.map((cart) {
    Item item = Item();
    item.name = cart.product.title;
    item.qty = cart.quantity;
    item.id = cart.product.productId;
    item.price = cart.product.price.toDouble();

    totalPrice += (cart.product.price * cart.quantity).toDouble();

    return item;
  }).toList();

  payload.androidApplicationId = "64566178755e27001b376047";
  payload.iosApplicationId = "64566178755e27001b376048";

  payload.pg = 'kcp';
  payload.orderName = cartList.length > 1
      ? '${cartList.first.product.title} 외 ${cartList.length - 1}건'
      : cartList.first.product.title;

  payload.price = totalPrice;
  payload.orderId = DateTime.now().millisecondsSinceEpoch.toString();
  payload.items = itemList;

  Extra extra = Extra();
  extra.appScheme = 'facamMarket';

  payload.extra = extra;

  return payload;
}
