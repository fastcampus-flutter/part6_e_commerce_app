import 'package:flutter/material.dart';

import 'core/theme/theme_data.dart';

import 'dependency_injection.dart';

import 'presentation/routes/routes.dart';

void main() {
  configureDependencies();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
      theme: CustomThemeData.themeData,
    );
  }
}
