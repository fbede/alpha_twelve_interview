import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../screens/screens.dart';
import 'routes.dart';

final GoRouter routerConfig = GoRouter(
  initialLocation: '/home',
  routes: <RouteBase>[
    GoRoute(
      path: '/home',
      name: AppRoutes.home,
      builder: (_, __) => const HomeScreen(),
    ),
    GoRoute(
      path: '/detail',
      name: AppRoutes.detail,
      builder: (_, __) => const SizedBox(),
    ),
    GoRoute(
      path: '/cart',
      name: AppRoutes.cart,
      builder: (_, __) => const SizedBox(),
    ),
  ],
);
