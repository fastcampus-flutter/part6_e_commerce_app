import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/theme/constant/app_colors.dart';
import '../../../../../core/theme/constant/app_icons.dart';
import '../../../../../core/theme/custom/custom_font_weight.dart';
import '../../../../../core/theme/custom/custom_theme.dart';
import '../../../../../core/utils/extensions.dart';
import '../../../../../domain/model/display/cart/cart.model.dart';

import '../../../../main/component/top_app_bar/widgets/svg_icon_button.dart';
import '../../bloc/cart_list_bloc/cart_list_bloc.dart';

class CartProductCard extends StatelessWidget {
  const CartProductCard({required this.cart, Key? key}) : super(key: key);
  final Cart cart;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;
    final selectedList = context.watch<CartListBloc>().state.selectedProduct;
    final bool isSelected = selectedList.contains(cart.product.productId);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16)
          .add(EdgeInsets.only(top: 20)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // 체크 박스
          GestureDetector(
            child: SvgPicture.asset(
              (isSelected)
                  ? AppIcons.checkMarkCircleFill
                  : AppIcons.checkMarkCircle,
              width: 28,
              height: 28,
              colorFilter: ColorFilter.mode(
                (isSelected) ? colorScheme.primary : colorScheme.contentFourth,
                BlendMode.srcIn,
              ),
            ),
            //TODO 상품 선택
            onTap: () {},
          ),
          const SizedBox(width: 8),
          Expanded(
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // 상품 정보
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // 상품 명
                          SizedBox(
                            height: 28,
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                cart.product.title,
                                style: textTheme.titleSmall
                                    ?.titleCopyWith()
                                    .regular,
                                overflow: TextOverflow.ellipsis,
                                maxLines: 1,
                              ),
                            ),
                          ),
                          const SizedBox(height: 11),
                          // 상품 정보
                          SizedBox(
                            height: 75,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                // 상품 이미지
                                Image.network(
                                  cart.product.imageUrl,
                                  width: 60,
                                  fit: BoxFit.cover,
                                ),
                                const SizedBox(width: 20),

                                // 상품 정보
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    // 가격
                                    Text(
                                      cart.product.price.toWon(),
                                      style: textTheme.titleMedium
                                          ?.priceCopyWith(),
                                    ),

                                    Spacer(),
                                    // 수량 설정
                                    Container(
                                      decoration: BoxDecoration(
                                        border: const Border.fromBorderSide(
                                          BorderSide(color: AppColors.outline),
                                        ),
                                        borderRadius: const BorderRadius.all(
                                          Radius.circular(4),
                                        ),
                                      ),
                                      width: 96,
                                      height: 36,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          //TODO 선택된 상품 장바구니 수량 증가
                                          SvgIconButton(
                                            icon: AppIcons.subtract,
                                            // iconSize: 16,
                                            color: colorScheme.contentFourth,
                                            onPressed: () {},
                                          ),
                                          Text(
                                            cart.quantity.toString(),
                                            style: textTheme.labelLarge
                                                ?.copyWith(
                                                  color: colorScheme
                                                      .contentPrimary,
                                                )
                                                .semiBold,
                                          ),
                                          //TODO 선택된 상품 장바구니 수량 증가
                                          SvgIconButton(
                                            icon: AppIcons.add,
                                            // iconSize: 16,
                                            color: colorScheme.contentPrimary,
                                            onPressed: () {},
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 28,
                      child: GestureDetector(
                        child: SvgPicture.asset(
                          AppIcons.close,
                          width: 28,
                          height: 28,
                          colorFilter: ColorFilter.mode(
                            colorScheme.contentTertiary,
                            BlendMode.srcIn,
                          ),
                        ),
                        //TODO 선택된 상품 장바구니 삭제
                        onTap: () {},
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 40,
                  ),
                  child: Divider(
                    height: 1,
                    thickness: 1,
                    color: colorScheme.outline,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
