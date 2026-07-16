import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_summer/app_injector.dart';
import 'package:my_summer/features/chalets/presentation/screen/chalets_screen.dart';
import 'package:my_summer/features/expenses/presentation/cubit/treasury_cubit.dart';
import 'package:my_summer/features/expenses/presentation/screen/expesnses_screen.dart';
import 'package:my_summer/features/home/presentation/screen/home_screen.dart';
import 'package:my_summer/features/splash/presentaion/screen/splash_screen.dart';

import 'app_routes.dart';

class RouteGenerator {
  static Route<dynamic>? getRoute(RouteSettings routeSettings) {
    final args = routeSettings.arguments;
    switch (routeSettings.name) {
      case AppRoutes.splashScreen:
        return MaterialPageRoute(
          builder: (_) => const SplashScreen(),
        );
         case AppRoutes.homeScreen:
        return MaterialPageRoute(
          builder: (_) => const HomeScreen(),
        );
        case AppRoutes.chaletsScreen:
        return MaterialPageRoute(
          builder: (_) => const ChaletsScreen(),
        );
    case AppRoutes.expesnsesScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) =>getIt<TreasuryCubit>(),
            child: const ExpesnsesScreen(),
          ),
        );
      default:
        return null;
    }
  }
}
