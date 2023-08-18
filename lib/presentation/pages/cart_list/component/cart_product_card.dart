import 'package:flutter/material.dart';

import '../../../../core/theme/constant/app_icons.dart';
import '../../../../core/theme/custom/custom_font_weight.dart';
import '../../../../core/theme/custom/custom_theme.dart';
import '../../../../core/utils/extensions.dart';
import '../../../../core/utils/widgets/cart_counter_btn.dart';
import '../../../../domain/model/display/cart/cart.model.dart';
import '../../../main/component/top_app_bar/widgets/svg_icon_button.dart';

/// 78
const double _imageHeight = 78;

/// 60
const double _imageWidth = 60;

class CartProductCard extends StatelessWidget {
  final Cart cart;

  const CartProductCard({super.key, required this.cart});

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
                    Expanded(
                      child: Text(
                        cart.product.title,
                        style: textTheme.titleSmall?.copyWith(
                          color: colorScheme.contentPrimary,
                        ),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                      ),
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
                    Image.network(
                      cart.product.imageUrl,
                      width: _imageWidth,
                      height: _imageHeight,
                    ),
                    const SizedBox(width: 20),
                    // 가격 + 수량
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          cart.product.price.toWon(),
                          style: textTheme.titleMedium.bold?.copyWith(
                            color: colorScheme.contentPrimary,
                          ),
                        ),
                        const SizedBox(height: 20),
                        CartCountBtn(
                          quantity: cart.quantity,
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
