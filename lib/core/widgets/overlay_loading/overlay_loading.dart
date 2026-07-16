import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

import '../../utils/app_colors.dart';
import '../../utils/app_strings.dart';

abstract final class OverlayLoading {
  static Future<void> show({
    String? loadingText,
    OverlayBackGroundType overlayBackGroundType =
        OverlayBackGroundType.fullScreen,
    bool? dismissOnTap,
    Widget? customIndicator,
  }) async {
    EasyLoading.instance
      ..loadingStyle = EasyLoadingStyle.custom
      ..maskColor = Colors.black.withValues(alpha: 0.5)
      ..backgroundColor = Colors.transparent
      ..textColor = AppColors.primary
      ..indicatorColor = AppColors.primary
      ..progressColor = AppColors.primary
      ..boxShadow = <BoxShadow>[];

    await EasyLoading.show(
      maskType: overlayBackGroundType.maskType,
      dismissOnTap: dismissOnTap,
      indicator: customIndicator,
    );
  }

  static Future<void> showError({
    String? errorText,
    OverlayBackGroundType overlayBackGroundType =
        OverlayBackGroundType.transparent,
    bool? dismissOnTap,
    Duration? duration,
  }) async {
    await EasyLoading.showError(
      errorText ?? AppStrings.somethingWentWrong.tr(),
      maskType: overlayBackGroundType.maskType,
      dismissOnTap: dismissOnTap,
      duration: duration,
    );

    EasyLoading.instance
      ..loadingStyle = EasyLoadingStyle.custom
      ..backgroundColor = Colors.transparent;
  }

  static Future<void> showSuccess({
    String? successText,
    OverlayBackGroundType overlayBackGroundType =
        OverlayBackGroundType.transparent,
    bool? dismissOnTap,
    Duration? duration,
  }) async {
    await EasyLoading.showSuccess(
      successText ?? 'success.',
      maskType: overlayBackGroundType.maskType,
      dismissOnTap: dismissOnTap,
      duration: duration,
    );

    EasyLoading.instance
      ..loadingStyle = EasyLoadingStyle.custom
      ..backgroundColor = Colors.transparent;
  }

  static Future<void> hide() async {
    await EasyLoading.dismiss();
  }
}

enum OverlayBackGroundType {
  black(EasyLoadingMaskType.black),
  clear(EasyLoadingMaskType.clear),
  fullScreen(EasyLoadingMaskType.black),
  transparent(EasyLoadingMaskType.clear),
  non(EasyLoadingMaskType.none);

  const OverlayBackGroundType(this.maskType);
  final EasyLoadingMaskType maskType;
}
