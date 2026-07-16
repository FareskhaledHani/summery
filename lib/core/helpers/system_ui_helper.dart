import 'dart:io';

import 'package:flutter/services.dart';

import '../utils/app_colors.dart';

class SystemUIHelper {
  static void configureSystemUI() {
    if (Platform.isAndroid) {
      SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(
          statusBarColor: AppColors.transparent,
          statusBarIconBrightness: Brightness.dark,
          statusBarBrightness: Brightness.light,
          systemNavigationBarColor: AppColors.transparent,
          systemNavigationBarIconBrightness: Brightness.dark,
        ),
      );

      // Enable edge-to-edge but with proper SafeArea handling
      SystemChrome.setEnabledSystemUIMode(
        SystemUiMode.edgeToEdge,
        overlays: [
          SystemUiOverlay.bottom, // Navigation bar
        ],
      );
      SystemChrome.setPreferredOrientations([
        DeviceOrientation.portraitUp,
        DeviceOrientation.portraitDown,
      ]);
    }
  }
}
