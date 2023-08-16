import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/utils/error/error_response.dart';
import '../../../../core/utils/exception/common_exception.dart';
import '../../../../core/utils/logger.dart';
import '../../../../domain/model/display/product_info/product_info.model.dart';

part 'cart_event.dart';

part 'cart_state.dart';

part 'cart_bloc.freezed.dart';

@injectable
class CartBloc extends Bloc<CartEvent, CartState> {
  CartBloc() : super(CartState()) {
    on<CartInitialized>(_onCartInitialized);
    on<CartOpened>(_onCartOpened);
    on<CartClosed>(_onCartClosed);
    on<CartQuantityIncreased>(_onCartQuantityIncreased);
    on<CartQuantityDecreased>(_onCartQuantityDecreased);
  }

  void _onCartInitialized(CartInitialized event, Emitter<CartState> emit) {}

  void _onCartOpened(CartOpened event, Emitter<CartState> emit) {
    if (state.status.isOpen) return;
    final productInfo = event.productInfo;
    final quantity = event.quantity;
    final totalPrice = productInfo.price * quantity;

    try {
      emit(state.copyWith(
        status: CartStatus.open,
        productInfo: productInfo,
        quantity: quantity,
        totalPrice: totalPrice,
      ));
    } catch (error) {
      CustomLogger.logger.e(error);
      emit(
        state.copyWith(
          status: CartStatus.error,
          error: CommonException.setError(error),
        ),
      );
    }
  }

  void _onCartClosed(CartClosed event, Emitter<CartState> emit) {
    try {
      if (state.status.isClose) return;
      emit(state.copyWith(status: CartStatus.close));
    } catch (error) {
      CustomLogger.logger.e(error);
      emit(
        state.copyWith(
          status: CartStatus.error,
          error: CommonException.setError(error),
        ),
      );
    }
  }

  void _onCartQuantityIncreased(
    CartQuantityIncreased event,
    Emitter<CartState> emit,
  ) {
    try {
      final quantity = state.quantity + 1;
      if (quantity > 999) return;
      final totalPrice = state.productInfo.price * quantity;
      emit(state.copyWith(quantity: quantity, totalPrice: totalPrice));
    } catch (error) {
      CustomLogger.logger.e(error);
      emit(
        state.copyWith(
          status: CartStatus.error,
          error: CommonException.setError(error),
        ),
      );
    }
  }

  void _onCartQuantityDecreased(
    CartQuantityDecreased event,
    Emitter<CartState> emit,
  ) async {
    try {
      final quantity = state.quantity - 1;
      if (quantity <= 0) return;
      final totalPrice = state.productInfo.price * quantity;
      emit(state.copyWith(quantity: quantity, totalPrice: totalPrice));
    } catch (error) {
      CustomLogger.logger.e(error);
      emit(
        state.copyWith(
          status: CartStatus.error,
          error: CommonException.setError(error),
        ),
      );
    }
  }
}

extension CartStatusEx on CartStatus {
  bool get isClose => this == CartStatus.close;

  bool get isOpen => this == CartStatus.open;

  bool get isError => this == CartStatus.error;
}
