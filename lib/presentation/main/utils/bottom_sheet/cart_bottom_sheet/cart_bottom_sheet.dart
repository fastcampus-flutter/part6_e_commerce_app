import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/extensions.dart';
import '../../../../pages/cart_list/bloc/cart_list_bloc/cart_list_bloc.dart';
import '../../snack_bar/common_snack_bar.dart';
import 'widgets/add_cart_btn.dart';
import 'widgets/cart_benefit.dart';
import 'widgets/cart_price_info.dart';
import 'widgets/cart_product_info.dart';

Future<bool?> cartBottomSheet(BuildContext context) {
  return showModalBottomSheet(
    context: context,
    builder: (_) {
      return SafeArea(
        child: BlocListener<CartListBloc, CartListState>(
          listener: (_, state) {
            if (state.status.isError) {
              CommonSnackBar.errorSnackBar(context, error: state.error);
            }
            if (context.canPop()) {
              Navigator.pop(context, !state.status.isError);
            }
          },
          listenWhen: (prev, cur) =>
              (prev.status != cur.status) && !cur.status.isLoading,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CartProductInfo(),
                Divider(thickness: 1),
                CartPriceInfo(),
                CartBenefit(),
                SizedBox(height: 12),
                SizedBox(height: 12),
                AddCartBtn(),
                SizedBox(height: 10),
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
    isScrollControlled: true,
    showDragHandle: true,
    useSafeArea: true,
  );
}
