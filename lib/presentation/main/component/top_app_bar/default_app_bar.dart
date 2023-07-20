import 'package:flutter/material.dart';

import '../../cubit/bottom_nav.dart';

class DefaultAppBar extends StatelessWidget {
  const DefaultAppBar(this.bottomNav, {super.key});

  final BottomNav bottomNav;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 8),
      color: Theme.of(context).colorScheme.primary,
      child: AppBar(
        title: Text(
          bottomNav.toName,
          style: Theme.of(context)
              .textTheme
              .headlineSmall
              ?.copyWith(color: Colors.white),
        ),
        backgroundColor: Colors.transparent,
        centerTitle: true,
      ),
    );
  }
}
