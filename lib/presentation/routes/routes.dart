import 'package:go_router/go_router.dart';

import '../main/main_screen.dart';
import '../pages/cart_list/cart_list_page.dart';
import '../pages/splash/splash_page.dart';
import 'route_path.dart';

final GoRouter router = GoRouter(
  routes: [
    GoRoute(
      path: RoutePath.splash,
      name: 'splash',
      builder: (context, state) => const SplashPage(),
    ),
    GoRoute(
      path: RoutePath.main,
      name: 'main',
      builder: (context, state) => const MainScreen(),
    ),
    GoRoute(
      path: RoutePath.cartList,
      name: 'cart_list',
      builder: (context, state) => const CartListPage(),
    ),
  ],
  initialLocation: RoutePath.splash,
);
