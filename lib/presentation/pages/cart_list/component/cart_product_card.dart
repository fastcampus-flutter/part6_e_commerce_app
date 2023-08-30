import 'package:flutter/material.dart';

import '../../../../core/theme/constant/app_icons.dart';
import '../../../../core/theme/custom/custom_font_weight.dart';
import '../../../../core/theme/custom/custom_theme.dart';
import '../../../../core/utils/widgets/cart_counter_btn.dart';
import '../../../main/component/top_app_bar/widgets/svg_icon_button.dart';

/// 78
const double _imageHeight = 78;

/// 60
const double _imageWidth = 60;

class CartProductCard extends StatelessWidget {
  const CartProductCard({super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    return Padding(
      padding: const EdgeInsets.only(left: 16, top: 20, right: 16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SvgIconButton(
            icon: AppIcons.checkMarkCircle,
            color: colorScheme.contentFourth,
            //TODO 상품 선택
            onPressed: null,
          ),
          const SizedBox(width: 8),
          Expanded(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Text(
                          '상품이름',
                          style: textTheme.titleSmall?.copyWith(
                            color: colorScheme.contentPrimary,
                          ),
                        ),
                      ],
                    ),
                    Center(
                      child: SvgIconButton(
                        icon: AppIcons.close,
                        color: colorScheme.contentTertiary,
                        //TODO 장바구니에서 상품 삭제
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 11),
                Row(
                  children: [
                    // 상품 이미지
                    Container(
                      color: Colors.yellow,
                      width: _imageWidth,
                      height: _imageHeight,
                    ),
                    const SizedBox(width: 20),
                    // 가격 + 수량
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '7,300원',
                          style: textTheme.titleMedium.bold?.copyWith(
                            color: colorScheme.contentPrimary,
                          ),
                        ),
                        const SizedBox(height: 20),
                        CartCountBtn(
                          quantity: 1,
                          decreased: null,
                          increased: null,
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Divider(
                  height: 1,
                  thickness: 1,
                  color: colorScheme.outline,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
