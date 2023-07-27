import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'core/theme/theme_data.dart';

import 'dependency_injection.dart';

import 'presentation/main/bloc/cart_bloc/cart_bloc.dart';
import 'presentation/routes/routes.dart';

void main() async {
  configureDependencies();
  // hive 초기화
  await Hive.initFlutter();

  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => getIt<CartBloc>()..add(CartInitialized()),
        ),
      ],
      child: MaterialApp.router(
        routerConfig: router,
        theme: CustomThemeData.themeData,
      ),
    );
  }
}
