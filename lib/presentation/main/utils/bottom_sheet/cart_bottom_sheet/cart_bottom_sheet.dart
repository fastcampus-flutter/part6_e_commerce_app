import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../pages/cart_list/bloc/cart_list_bloc/cart_list_bloc.dart';
import 'widgets/add_cart_btn.dart';
import 'widgets/cart_price_info.dart';
import 'widgets/cart_product_info.dart';

Future<bool?> cartBottomSheet(BuildContext context) {
  return showModalBottomSheet(
    context: context,
    builder: (_) {
      return SafeArea(
        child: BlocListener<CartListBloc, CartListState>(
          listener: (context, state) {
            if (context.canPop()) {
              context.pop();
            }
          },
          listenWhen: (prev, cur) => prev.status != cur.status,
          child: const SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CartProductInfo(),
                Divider(thickness: 1),
                CartPriceInfo(),
                AddCartBtn(),
              ],
            ),
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
