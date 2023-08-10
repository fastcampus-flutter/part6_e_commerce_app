import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/theme/constant/app_icons.dart';
import '../../../../core/theme/custom/custom_app_bar.dart';
import '../../../../core/theme/custom/custom_font_weight.dart';
import '../../../../core/utils/constant.dart';
import '../../../pages/cart_list/bloc/cart_list_bloc/cart_list_bloc.dart';
import '../../../routes/route_path.dart';
import '../../cubit/mall_type_cubit.dart';
import '../../utils/server_selector.dart';
import 'widgets/svg_icon_button.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MallTypeCubit, MallType>(
      builder: (_, state) {
        return AnimatedContainer(
          padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 8),
          color: state.theme.backgroundColor,
          child: AppBar(
            leading: SvgIconButton(
              icon: AppIcons.mainLogo,
              color: state.theme.logoColor,
              padding: 8,
              onPressed: () async {
                await showDialog<bool>(
                  context: context,
                  builder: (_) {
                    return ServerSelector();
                  },
                );
              },
            ),
            title: AnimatedContainer(
              decoration: BoxDecoration(
                color: state.theme.containerColor,
                borderRadius: const BorderRadius.all(
                  Radius.circular(CustomAppBarTheme.tabBarRadius),
                ),
              ),
              child: SizedBox(
                height: 28,
                child: DefaultTabController(
                  length: MallType.values.length,
                  initialIndex: state.index,
                  child: TabBar(
                    tabs: List.generate(
                      MallType.values.length,
                      (index) => Tab(text: MallType.values[index].toName),
                    ),
                    isScrollable: true,
                    indicator: BoxDecoration(
                      color: state.theme.indicatorColor,
                      borderRadius: const BorderRadius.all(
                        Radius.circular(CustomAppBarTheme.tabBarRadius),
                      ),
                    ),
                    indicatorSize: TabBarIndicatorSize.tab,
                    dividerColor: Colors.transparent,
                    labelColor: state.theme.labelColor,
                    labelStyle: Theme.of(context).textTheme.labelLarge.bold,
                    labelPadding: const EdgeInsets.symmetric(horizontal: 12),
                    unselectedLabelColor: state.theme.unselectedLabelColor,
                    unselectedLabelStyle:
                        Theme.of(context).textTheme.labelLarge,
                    onTap: (index) =>
                        context.read<MallTypeCubit>().changeMallType(index),
                    splashBorderRadius: const BorderRadius.all(
                      Radius.circular(CustomAppBarTheme.tabBarRadius),
                    ),
                  ),
                ),
              ),
              duration: const Duration(
                milliseconds: CustomAppBarTheme.animationDuration,
              ),
            ),
            actions: [
              SvgIconButton(
                icon: AppIcons.location,
                color: state.theme.iconColor,
                onPressed: null,
              ),
              Stack(
                children: [
                  SvgIconButton(
                    icon: AppIcons.cart,
                    color: state.theme.iconColor,
                    onPressed: () => context.push(RoutePath.cartList),
                  ),
                  Positioned(
                    top: 2,
                    right: 0,
                    child: Container(
                      decoration: BoxDecoration(
                        color: state.theme.badgeBgColor,
                        shape: BoxShape.circle,
                      ),
                      width: 13,
                      height: 13,
                      child: Center(
                        child: Text(
                          '${context.watch<CartListBloc>().state.cartList.length}',
                          style: TextStyle(
                            color: state.theme.badgeNumColor,
                            fontSize: 9,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
            backgroundColor: Colors.transparent,
            centerTitle: true,
            leadingWidth: 86,
            systemOverlayStyle: state.theme.systemUiOverlayStyle,
          ),
          duration:
              const Duration(milliseconds: CustomAppBarTheme.animationDuration),
        );
      },
    );
  }
}
