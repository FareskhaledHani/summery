import 'package:flutter/material.dart';
import 'package:my_summer/features/home/presentation/screen/home_screen.dart';

import 'app_routes.dart';

class RouteGenerator {
  static Route<dynamic>? getRoute(RouteSettings routeSettings) {
    final args = routeSettings.arguments;
    switch (routeSettings.name) {
      case AppRoutes.homeScreen:
        return MaterialPageRoute(
          builder: (_) => const HomeScreen(),
        );
      default:
        return null;
    }
  }
}
