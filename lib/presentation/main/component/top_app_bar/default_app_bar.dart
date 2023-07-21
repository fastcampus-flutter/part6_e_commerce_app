import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../cubit/bottom_nav_cubit.dart';
import '../../cubit/mall_type_cubit.dart';

class DefaultAppBar extends StatelessWidget {
  const DefaultAppBar(this.bottomNav, {super.key});

  final BottomNav bottomNav;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return BlocBuilder<MallTypeCubit, MallType>(
      builder: (_, state) {
        return AnimatedContainer(
          padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 8),
          color: state.isMarket ? colorScheme.primary : colorScheme.background,
          child: AppBar(
            title: Text(
              bottomNav.toName,
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    color: state.isMarket
                        ? colorScheme.background
                        : colorScheme.primary,
                  ),
            ),
            backgroundColor: Colors.transparent,
            centerTitle: true,
          ),
          duration: Duration(milliseconds: 400),
        );
      },
    );
  }
}
