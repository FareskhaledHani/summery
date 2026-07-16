import 'package:flutter/material.dart';

final class AppNavigator {
  AppNavigator._();
  static GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
  static Future<T?> navigateNamedTo<T>(
    String route, {
    var arguments,
    bool withNavBar = false,
  }) {
    return navigatorKey.currentState!.pushNamed<T>(
      route,
      arguments: arguments,
    );
  }

  static Future<T?> navigateNamedReplace<T>(
    String route, {
    var arguments,
    bool withNavBar = false,
  }) {
    return navigatorKey.currentState!.pushReplacementNamed(
      route,
      arguments: arguments,
    );
  }

  static void navigateNamedFinishGlobal(String routeName) {
    final context = navigatorKey.currentContext;
    if (context != null) {
      Navigator.of(context)
          .pushNamedAndRemoveUntil(routeName, (route) => false);
    }
  }

  static Future<T?> navigateNamedFinish<T>(
    String route, {
    var arguments,
    bool withNavBar = false,
  }) {
    return navigatorKey.currentState!.pushNamedAndRemoveUntil<T>(
      route,
      (route) => false,
      arguments: arguments,
    );
  }

  static void pop<T>([T? result]) => navigatorKey.currentState!.pop(result);

  static void popUntil<T>(String? route, [T? result]) =>
      navigatorKey.currentState!.popUntil(
        ModalRoute.withName(route!),
      );

  static void navigatePushReplacementNamedTo(
    BuildContext context,
    String route, {
    required String predicate,
  }) =>
      navigatorKey.currentState!.pushNamedAndRemoveUntil(
        route,
        ModalRoute.withName(predicate),
      );
}
