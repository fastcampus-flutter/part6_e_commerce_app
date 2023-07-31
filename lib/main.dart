import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:kakao_flutter_sdk_user/kakao_flutter_sdk_user.dart';

import 'core/theme/theme_data.dart';

import 'data/entity/display/cart/cart.entity.dart';
import 'data/entity/display/product_info/product_info.entity.dart';
import 'dependency_injection.dart';

import 'firebase_options.dart';
import 'presentation/main/bloc/cart_bloc/cart_bloc.dart';
import 'presentation/main/bloc/user_bloc/user_bloc.dart';
import 'presentation/pages/cart_list/bloc/cart_list_bloc/cart_list_bloc.dart';
import 'presentation/routes/routes.dart';

void main() async {
  configureDependencies();
  // hive 초기화
  await Hive.initFlutter();

  // hive object adapter
  Hive.registerAdapter(ProductInfoEntityAdapter());
  Hive.registerAdapter(CartEntityAdapter());

  KakaoSdk.init(
    nativeAppKey: 'e2bdf396519419f373c8ab46fcc695d6',
  );

  // firebase initialize
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => getIt<UserBloc>()
            ..add(
              UserLoginWithToken(),
            ),
        ),
        BlocProvider(
          create: (_) => getIt<CartBloc>()..add(CartInitialized()),
        ),
        BlocProvider(
          create: (_) => getIt<CartListBloc>()..add(CartListInitialized()),
        ),
      ],
      child: MaterialApp.router(
        routerConfig: router,
        theme: CustomThemeData.themeData,
      ),
    );
  }
}
