import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../core/theme/constant/app_icons.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 8),
          color: Theme.of(context).colorScheme.primary,
          child: AppBar(
            leading: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SvgPicture.asset(AppIcons.mainLogo),
            ),
            title: Text(
              'tabBar',
              style: Theme.of(context)
                  .textTheme
                  .headlineSmall
                  ?.copyWith(color: Colors.white),
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: SvgPicture.asset(
                  AppIcons.location,
                  colorFilter: ColorFilter.mode(
                    Theme.of(context).colorScheme.background,
                    BlendMode.srcIn,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: SvgPicture.asset(
                  AppIcons.cart,
                  colorFilter: ColorFilter.mode(
                    Theme.of(context).colorScheme.background,
                    BlendMode.srcIn,
                  ),
                ),
              ),
            ],
            backgroundColor: Colors.transparent,
            centerTitle: true,
            leadingWidth: 86,
          ),
        ),
        preferredSize: Size.fromHeight(44),
      ),
      body: Center(
        child: Text('main_Screen'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(AppIcons.navHome),
            label: 'home',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(AppIcons.navCategory),
            label: 'cate',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(AppIcons.navSearch),
            label: 'search',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(AppIcons.navUser),
            label: 'user',
          ),
        ],
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
      ),
    );
  }
}
