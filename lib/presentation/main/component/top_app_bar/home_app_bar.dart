import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/theme/constant/app_icons.dart';
import '../../../../core/theme/custom/custom_theme.dart';
import '../../cubit/mall_type_cubit.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return BlocBuilder<MallTypeCubit, MallType>(
      builder: (_, state) {
        return AnimatedContainer(
          padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 8),
          color:
              (state.isMarket) ? colorScheme.primary : colorScheme.background,
          child: AppBar(
            leading: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SvgPicture.asset(
                AppIcons.mainLogo,
                colorFilter: ColorFilter.mode(
                  state.isMarket ? colorScheme.onPrimary : colorScheme.primary,
                  BlendMode.srcIn,
                ),
              ),
            ),
            title: SizedBox(
              height: 28,
              child: DefaultTabController(
                length: MallType.values.length,
                initialIndex: state.index,
                child: TabBar(
                  tabs: List.generate(
                    MallType.values.length,
                    (index) => Tab(text: MallType.values[index].toName),
                  ),
                  labelColor: Colors.black,
                  unselectedLabelColor: Colors.black,
                  onTap: (index) =>
                      context.read<MallTypeCubit>().changeMallType(index),
                ),
              ),
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: SvgPicture.asset(
                  AppIcons.location,
                  colorFilter: ColorFilter.mode(
                    state.isMarket
                        ? colorScheme.background
                        : colorScheme.contentPrimary,
                    BlendMode.srcIn,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: SvgPicture.asset(
                  AppIcons.cart,
                  colorFilter: ColorFilter.mode(
                    state.isMarket
                        ? colorScheme.background
                        : colorScheme.contentPrimary,
                    BlendMode.srcIn,
                  ),
                ),
              ),
            ],
            backgroundColor: Colors.transparent,
            centerTitle: true,
            leadingWidth: 86,
            systemOverlayStyle: (state.isMarket)
                ? SystemUiOverlayStyle.light
                : SystemUiOverlayStyle.dark,
          ),
          duration: Duration(milliseconds: 400),
        );
      },
    );
  }
}
