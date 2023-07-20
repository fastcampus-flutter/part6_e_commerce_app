import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../cubit/bottom_nav.dart';
import 'default_app_bar.dart';
import 'home_app_bar.dart';

class TopAppBar extends StatelessWidget implements PreferredSizeWidget {
  const TopAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BottomNavCubit, BottomNav>(builder: (context, state) {
      switch (state) {
        case BottomNav.home:
          return const HomeAppBar();
        case BottomNav.category:
        case BottomNav.search:
        case BottomNav.user:
          return  DefaultAppBar(state);
      }
    });
  }

  @override
  Size get preferredSize => Size.fromHeight(44);
}
