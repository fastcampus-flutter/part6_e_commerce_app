import 'package:flutter/material.dart';

import 'widgets/add_cart_btn.dart';
import 'widgets/cart_benefit.dart';
import 'widgets/cart_price_info.dart';
import 'widgets/cart_product_info.dart';

Future<bool?> cartBottomSheet(BuildContext context) {
  return showModalBottomSheet(
    context: context,
    builder: (_) {
      return const SafeArea(
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
