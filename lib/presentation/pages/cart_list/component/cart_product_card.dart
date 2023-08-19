import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/theme/constant/app_icons.dart';
import '../../../../core/theme/custom/custom_font_weight.dart';
import '../../../../core/theme/custom/custom_theme.dart';
import '../../../../core/utils/extensions.dart';
import '../../../../core/utils/widgets/cart_counter_btn.dart';
import '../../../../domain/model/display/cart/cart.model.dart';
import '../../../main/component/top_app_bar/widgets/svg_icon_button.dart';
import '../bloc/cart_list_bloc/cart_list_bloc.dart';

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

    final productId = cart.product.productId;

    final bloc = context.read<CartListBloc>();
    final isSelected = context.select(
      (CartListBloc bloc) => bloc.state.selectedProduct.contains(productId),
    );

    return Padding(
      padding: const EdgeInsets.only(left: 16, top: 20, right: 16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SvgIconButton(
            icon: (isSelected)
                ? AppIcons.checkMarkCircleFill
                : AppIcons.checkMarkCircle,
            color:
                (isSelected) ? colorScheme.primary : colorScheme.contentFourth,
            onPressed: () => bloc.add(CartListSelected(cart: cart)),
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
                        onPressed: () => bloc.add(
                          CartListDeleted(productIds: [productId]),
                        ),
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
                          decreased: () =>
                              bloc.add(CartListQtyDecreased(cart: cart)),
                          increased: () =>
                              bloc.add(CartListQtyIncreased(cart: cart)),
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
