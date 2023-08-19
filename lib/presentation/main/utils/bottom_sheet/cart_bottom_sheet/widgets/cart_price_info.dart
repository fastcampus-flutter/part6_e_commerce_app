import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../core/theme/custom/custom_font_weight.dart';
import '../../../../../../core/theme/custom/custom_theme.dart';
import '../../../../../../core/utils/extensions.dart';
import '../../../../../../core/utils/widgets/cart_counter_btn.dart';
import '../../../../bloc/cart_bloc/cart_bloc.dart';

class CartPriceInfo extends StatelessWidget {
  const CartPriceInfo({super.key});

  @override
  Widget build(BuildContext context) {
    final productInfo = context.watch<CartBloc>().state.productInfo;
    final quantity = context.watch<CartBloc>().state.quantity;

    void _qtyIncreased() =>
        context.read<CartBloc>().add(CartQuantityIncreased());
    void _qtyDecreased() =>
        context.read<CartBloc>().add(CartQuantityDecreased());

    final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;

    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: 16,
        horizontal: 20,
      ),
      child: Column(
        children: [
          Text(
            productInfo.title,
            style: textTheme.titleSmall,
            overflow: TextOverflow.ellipsis,
            maxLines: 3,
          ),
          const SizedBox(height: 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Text(
                    productInfo.price.toWon(),
                    style: textTheme.titleMedium?.priceCopyWith(),
                  ),
                  const SizedBox(width: 4),
                  Text(
                    productInfo.originalPrice.toWon(),
                    style: textTheme.titleMedium?.originalPriceCopyWith(),
                  ),
                ],
              ),
              CartCountBtn(
                quantity: quantity,
                decreased: _qtyDecreased,
                increased: _qtyIncreased,
              ),
            ],
          ),
          const SizedBox(height: 12),
          const Divider(thickness: 1),
          const SizedBox(height: 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 6),
                decoration: BoxDecoration(
                  color: Color(0xFFF5C142),
                  borderRadius: BorderRadius.all(Radius.circular(9)),
                ),
                child: Text(
                  '적립',
                  style: textTheme.labelSmall.semiBold
                      ?.copyWith(color: colorScheme.background),
                ),
              ),
              const SizedBox(width: 8),
              Text(
                '로그인 후, 할인 및 적립 혜택 적용',
                style: textTheme.labelMedium
                    ?.copyWith(color: colorScheme.contentSecondary),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
