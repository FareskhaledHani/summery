import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

import '../../utils/app_colors.dart';

abstract final class OverlayLoadingConfig {
  static void ensureInitialized() {
    EasyLoading.instance
      ..displayDuration = const Duration(milliseconds: 2000)
      ..indicatorType = EasyLoadingIndicatorType.ring
      ..loadingStyle = EasyLoadingStyle.custom
      ..indicatorSize = 45.0
      ..indicatorColor = AppColors.primary
      ..progressColor = AppColors.primary
      ..backgroundColor = Colors.transparent
      ..textColor = AppColors.primary
      ..radius = 0.0
      ..maskColor = Colors.black.withValues(alpha: 0.5)
      ..dismissOnTap = false
      ..boxShadow = <BoxShadow>[];
    _updateIndicatorTheme();
  }

  static void _updateIndicatorTheme() {
    EasyLoading.instance.indicatorColor = AppColors.primary;
  }
}
