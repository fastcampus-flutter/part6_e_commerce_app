import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

import '../../../core/theme/constant/app_colors.dart';
import '../../../core/theme/constant/app_icons.dart';
import '../../../core/theme/custom/custom_font_weight.dart';
import '../../../core/theme/custom/custom_theme.dart';
import '../../../core/utils/constant.dart';
import '../../main/component/top_app_bar/widgets/svg_icon_button.dart';
import 'bloc/cart_list_bloc/cart_list_bloc.dart';
import 'component/cart_product_card/cart_product_card.dart';
import 'component/cart_total_price/cart_total_price.dart';

class CartListPage extends StatelessWidget {
  const CartListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: BlocProvider.of<CartListBloc>(context)..add(CartListInitialized()),
      child: const CartListView(),
    );
  }
}

class CartListView extends StatelessWidget {
  const CartListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(
        leading: Align(
          alignment: Alignment.center,
          child: SvgIconButton(
            icon: AppIcons.close,
            color: colorScheme.contentPrimary,
            onPressed: () {
              if (context.canPop()) {
                context.pop();
              }
            },
          ),
        ),
        title: const Text('장바구니'),
        elevation: 0,
        backgroundColor: AppColors.white,
        titleTextStyle: textTheme.titleMedium
            ?.copyWith(color: colorScheme.contentPrimary)
            .semiBold,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  BlocBuilder<CartListBloc, CartListState>(
                    builder: (context, state) {
                      final cartList = state.cartList;
                      final selectedProducts = state.selectedProduct;

                      return Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          GestureDetector(
                            child: SvgPicture.asset(
                              (selectedProducts.length == cartList.length)
                                  ? AppIcons.checkMarkCircleFill
                                  : AppIcons.checkMarkCircle,
                              width: 28,
                              height: 28,
                              colorFilter: ColorFilter.mode(
                                (selectedProducts.length == cartList.length &&
                                        cartList.length != 0)
                                    ? colorScheme.primary
                                    : colorScheme.contentFourth,
                                BlendMode.srcIn,
                              ),
                            ),
                            onTap: () => context
                                .read<CartListBloc>()
                                .add(CartListSelectedAll()),
                          ),
                          const SizedBox(width: 10),
                          Text(
                            '전체 선택 ( ${selectedProducts.length} /${cartList.length})',
                            style: textTheme.titleSmall
                                ?.copyWith(
                                  color: colorScheme.contentPrimary,
                                )
                                .regular,
                          ),
                        ],
                      );
                    },
                  ),
                  GestureDetector(
                    child: Container(
                      alignment: Alignment.centerLeft,
                      height: 40,
                      child: Text(
                        '전체 삭제',
                        style: textTheme.titleSmall
                            ?.copyWith(
                              color: colorScheme.contentSecondary,
                            )
                            .semiBold,
                      ),
                    ),
                    //TODO 전체 삭제
                    onTap: () {},
                  ),
                ],
              ),
            ),
            Divider(
              height: 8,
              thickness: 8,
              color: colorScheme.surface,
            ),
            BlocBuilder<CartListBloc, CartListState>(
              builder: (context, state) {
                switch (state.status) {
                  case Status.initial:
                    return Container(
                      height: 300,
                      child: const Center(
                        child: Text('init'),
                      ),
                    );
                  case Status.success:
                    return Column(
                      children: [
                        ...state.cartList
                            .map((cart) => CartProductCard(cart: cart))
                            .toList(),
                        const CartTotalPrice(),
                      ],
                    );
                  case Status.loading:
                    return const Center(child: CircularProgressIndicator());
                  case Status.error:
                    return Container(
                      height: 300,
                      child: const Center(
                        child: Text('error'),
                      ),
                    );
                }
              },
            ),
          ],
        ),
      ),
      //TODO 결제 버튼
    );
  }
}
