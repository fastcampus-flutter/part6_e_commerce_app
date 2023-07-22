import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/theme/custom/custom_app_bar.dart';
import '../../../../core/theme/custom/custom_font_weight.dart';
import '../../../../core/utils/constant.dart';
import '../../cubit/bottom_nav_cubit.dart';
import '../../cubit/mall_type_cubit.dart';

class DefaultAppBar extends StatelessWidget {
  const DefaultAppBar(this.bottomNav, {super.key});

  final BottomNav bottomNav;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MallTypeCubit, MallType>(
      builder: (_, state) {
        return AnimatedContainer(
          padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 8),
          color: state.theme.backgroundColor,
          child: AppBar(
            title: Text(
              bottomNav.toName,
              style: Theme.of(context)
                  .textTheme
                  .titleMedium
                  .semiBold
                  ?.copyWith(color: state.theme.iconColor),
            ),
            backgroundColor: Colors.transparent,
            centerTitle: true,
          ),
          duration:
              const Duration(milliseconds: CustomAppBarTheme.animationDuration),
        );
      },
    );
  }
}
