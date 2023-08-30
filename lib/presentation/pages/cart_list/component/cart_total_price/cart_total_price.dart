import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

import '../../../../../core/theme/constant/app_icons.dart';
import '../../../../../core/theme/custom/custom_font_weight.dart';
import '../../../../../core/theme/custom/custom_theme.dart';
import '../../../../../core/utils/extensions.dart';
import '../../bloc/cart_list_bloc/cart_list_bloc.dart';

class CartTotalPrice extends StatelessWidget {
  const CartTotalPrice({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;

    return BlocBuilder<CartListBloc, CartListState>(
      builder: (context, state) {
        if (state.cartList.isEmpty) {
          return Container(
            height: 400,
            child: Center(
              child: Text('장바구니에 담긴 상품이 없습니다'),
            ),
          );
        }

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
                        state.totalPrice.toWon(),
                        style: textTheme.titleLarge
                            ?.copyWith(
                              color: colorScheme.contentPrimary,
                            )
                            .regular,
                      ),
                    ],
                  ),
                  SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '상품할인금액',
                        style: textTheme.titleSmall
                            ?.copyWith(color: colorScheme.contentPrimary)
                            .regular,
                      ),
                      Text(
                        '0원',
                        style: textTheme.titleLarge
                            ?.copyWith(
                              color: colorScheme.contentPrimary,
                            )
                            .regular,
                      ),
                    ],
                  ),
                  SizedBox(height: 8),
                  Text(
                    '로그인 후 할인 금액 적용',
                    style: textTheme.labelMedium
                        ?.copyWith(
                          color: colorScheme.contentSecondary,
                        )
                        .regular,
                  ),
                  SizedBox(height: 8),
                  Divider(
                    thickness: 1,
                    color: Theme.of(context).colorScheme.outline,
                  ),
                  SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '결제예정금액',
                        style: textTheme.titleSmall
                            ?.copyWith(color: colorScheme.contentPrimary)
                            .regular,
                      ),
                      Text.rich(
                        TextSpan(
                          children: [
                            WidgetSpan(
                              child: Padding(
                                padding: EdgeInsets.only(right: 4),
                                child: Text(
                                  NumberFormat('###,###,###,###')
                                      .format(state.totalPrice),
                                  style: textTheme.titleLarge
                                      ?.copyWith(
                                        color: colorScheme.contentPrimary,
                                      )
                                      .bold,
                                ),
                              ),
                            ),
                            TextSpan(
                              text: '원',
                              style: textTheme.titleMedium
                                  ?.copyWith(color: colorScheme.contentPrimary)
                                  .regular,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 8),
                  Text(
                    '쿠폰/적립금은 주문서에서 사용 가능합니다',
                    style: textTheme.labelMedium
                        ?.copyWith(
                          color: colorScheme.contentSecondary,
                        )
                        .regular,
                  ),
                  SizedBox(height: 8),
                  Container(
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.surface,
                      borderRadius: const BorderRadius.all(
                        Radius.circular(4),
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 12,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            AppIcons.badge,
                            width: 31,
                            height: 17,
                          ),
                          SizedBox(
                            width: 8,
                          ),
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
      },
    );
  }
}
