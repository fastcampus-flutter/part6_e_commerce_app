import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../domain/model/display/product_info/product_info.model.dart';
import '../../../bloc/cart_bloc/cart_bloc.dart';
import 'widgets/add_cart_btn.dart';
import 'widgets/cart_price_info.dart';
import 'widgets/cart_product_info.dart';

Future<bool?> cartBottomSheet(BuildContext context) {
  return showModalBottomSheet(
    context: context,
    builder: (_) {
      return SafeArea(
        child: SingleChildScrollView(
          child: BlocBuilder<CartBloc, CartState>(
            builder: (_, state) {
              final ProductInfo productInfo = state.productInfo;
              final int totalPrice = state.totalPrice;
              final int quantity = state.quantity;

              return Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CartProductInfo(productInfo: productInfo),
                  const Divider(thickness: 1),
                  CartPriceInfo(productInfo: productInfo, quantity: quantity),
                  AddCartBtn(totalPrice: totalPrice),
                ],
              );
            },
          ),
        ),
      );
    },
    shape: RoundedRectangleBorder(
      borderRadius: const BorderRadius.vertical(
        top: Radius.circular(12.0),
      ),
    ),
    showDragHandle: true,
  );
}
