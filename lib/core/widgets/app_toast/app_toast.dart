import 'package:bot_toast/bot_toast.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_summer/core/errors/failure_mapper.dart';
import 'package:my_summer/core/extensions/text_style.dart';
import 'package:toastification/toastification.dart';
import '../../errors/failures.dart';
import '../../utils/utils.dart';
import '../svg_image.dart';

const Duration animationDuration = Duration(milliseconds: 300);

abstract final class AppToast {
  static void showInfoToast(String message) {
    BotToast.showText(
      text: message,
      align: Alignment.topCenter,
      contentColor: Colors.black54,
    );
  }
}

ToastificationItem showSuccessToast(String message) {
  toastification.dismissAll(delayForAnimation: false);
  return toastification.show(
    alignment: Alignment.topCenter,
    type: ToastificationType.success,
    style: ToastificationStyle.flatColored,
    animationDuration: animationDuration,
    title: Text(
      message.tr(),
      maxLines: 4,
      overflow: TextOverflow.ellipsis,
      style: AppTextStyles.style14W400,
    ),
    autoCloseDuration: const Duration(seconds: 4),
    showProgressBar: false,
  );
}

ToastificationItem showFailureToast(Failure failure) {
  final isNetworkFailure = failure is NetworkFailure;
  final icon = isNetworkFailure ? AppIcons.wifiOff : AppIcons.warning;
  final title = isNetworkFailure
      ? AppStrings.noInternetConnection.tr()
      : AppStrings.oops.tr();
  final description = failure.toMessage();
  toastification.dismissAll(delayForAnimation: false);
  return toastification.show(
    alignment: Alignment.topCenter,
    animationDuration: animationDuration,
    borderRadius: BorderRadius.all(Radius.circular(Sizes.s8.r)),
    margin: EdgeInsets.symmetric(horizontal: Sizes.s10.w),
    title: Text(
      title,
      maxLines: 4,
      overflow: TextOverflow.ellipsis,
      style: const TextStyle(
        fontSize: Sizes.s14,
        fontWeight: FontWeight.bold,
      ),
    ),
    description: Text(
      description,
      maxLines: 4,
      overflow: TextOverflow.ellipsis,
      style: const TextStyle(
        fontSize: Sizes.s15,
      ),
    ),
    autoCloseDuration: const Duration(seconds: 4),
    primaryColor: Colors.black87,
    backgroundColor: AppColors.error,
    borderSide: BorderSide.none,
    foregroundColor: Colors.white,
    showProgressBar: false,
    icon: SvgImage.icon(
      icon,
      color: AppColors.white,
    ),
  );
}

ToastificationItem showErrorToast(String error, [int maxLines = 4]) {
  toastification.dismissAll(delayForAnimation: false);
  return toastification.show(
    alignment: Alignment.topCenter,
    animationDuration: animationDuration,
    title: Text(
      error,
      maxLines: maxLines,
      overflow: TextOverflow.ellipsis,
      style: AppTextStyles.style14W400.copyWith(
        height: 1.5,
      ),
    ),
    autoCloseDuration: const Duration(seconds: 4),
    showProgressBar: false,
    icon: const SvgImage.icon(
      AppIcons.warning,
      // color: AppColors.darkGrayNormal,
    ),
  );
}

ToastificationItem showSimpleErrorToast(String error) {
  toastification.dismissAll(delayForAnimation: false);
  return toastification.show(
    alignment: Alignment.topCenter,
    type: ToastificationType.error,
    style: ToastificationStyle.simple,
    animationDuration: animationDuration,
    title: Text(
      error,
      maxLines: 4,
      overflow: TextOverflow.ellipsis,
      style: AppTextStyles.style14W400.withWhiteColor,
    ),
    autoCloseDuration: const Duration(seconds: 4),
    backgroundColor: Colors.black.withValues(alpha: 0.74),
    borderSide: BorderSide.none,
    foregroundColor: Colors.white,
    showProgressBar: false,
  );
}

ToastificationItem showSimpleSuccessToast(String error) {
  toastification.dismissAll(delayForAnimation: false);
  return toastification.show(
    alignment: Alignment.topCenter,
    type: ToastificationType.success,
    style: ToastificationStyle.simple,
    animationDuration: animationDuration,
    title: Text(
      error,
      maxLines: 4,
      overflow: TextOverflow.ellipsis,
      style: AppTextStyles.style14W400.withWhiteColor,
    ),
    autoCloseDuration: const Duration(seconds: 4),
    backgroundColor: Colors.black.withValues(alpha: 0.74),
    borderSide: BorderSide.none,
    foregroundColor: Colors.white,
    showProgressBar: false,
  );
}
