import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

import '../../../../core/theme/constant/app_icons.dart';
import '../../../../core/theme/custom/custom_font_weight.dart';
import '../../../../core/theme/custom/custom_theme.dart';
import '../../../../core/utils/extensions.dart';
import '../bloc/cart_list_bloc/cart_list_bloc.dart';

class CartTotalPrice extends StatelessWidget {
  const CartTotalPrice({required this.isEmpty, super.key});

  final bool isEmpty;

  @override
  Widget build(BuildContext context) {
    if (isEmpty) {
      return Container(
        height: 400,
        child: Center(child: Text('장바구니에 담긴 상품이 없습니다.')),
      );
    }

    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    final totalPrice = context.watch<CartListBloc>().state.totalPrice;

    return Column(
      children: [
        Divider(
          height: 8,
          thickness: 8,
          color: colorScheme.surface,
        ),
        Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '상품금액',
                    style: textTheme.titleSmall
                        ?.copyWith(
                          color: colorScheme.contentPrimary,
                        )
                        .regular,
                  ),
                  Text(
                    totalPrice.toWon(),
                    style: textTheme.titleLarge?.copyWith(
                      color: colorScheme.contentPrimary,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '상품할인금액',
                    style: textTheme.titleSmall
                        ?.copyWith(color: colorScheme.contentPrimary),
                  ),
                  Text(
                    '0원',
                    style: textTheme.titleLarge
                        ?.copyWith(color: colorScheme.contentPrimary),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              Text(
                '로그인 후 할인 금액 적용',
                style: textTheme.labelMedium?.copyWith(
                  color: colorScheme.contentSecondary,
                ),
              ),
              const SizedBox(height: 8),
              Divider(
                height: 1,
                thickness: 1,
                color: Theme.of(context).colorScheme.outline,
              ),
              const SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '결제예정금액',
                    style: textTheme.titleSmall
                        ?.copyWith(color: colorScheme.contentPrimary),
                  ),
                  Text.rich(
                    TextSpan(
                      children: [
                        WidgetSpan(
                          child: Padding(
                            padding: EdgeInsets.only(right: 4),
                            child: Text(
                              NumberFormat('###,###,###,###')
                                  .format(totalPrice),
                              style: textTheme.titleLarge.bold?.copyWith(
                                color: colorScheme.contentPrimary,
                              ),
                            ),
                          ),
                        ),
                        TextSpan(
                          text: '원',
                          style: textTheme.titleMedium
                              ?.copyWith(
                                color: colorScheme.contentPrimary,
                              )
                              .regular,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              Text(
                '쿠폰/적립금은 주문서에서 사용 가능합니다',
                style: textTheme.labelMedium
                    ?.copyWith(color: colorScheme.contentSecondary),
              ),
              const SizedBox(height: 8),
              Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.surface,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(4),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        AppIcons.badge,
                        width: 31,
                        height: 17,
                      ),
                      const SizedBox(width: 8),
                      Text(
                        '로그인 후, 할인 및 적립 혜택 제공',
                        style: textTheme.labelMedium
                            ?.copyWith(
                              color: colorScheme.contentSecondary,
                            )
                            .regular,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
