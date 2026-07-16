import 'package:flutter/material.dart';

import 'utils.dart';

class AppTextStyles {
  const AppTextStyles._();

  static TextStyle style10W400 = const TextStyle(
    fontSize: Sizes.s10,
    fontWeight: FontWeight.w400,
    color: AppColors.black,
  );
  static TextStyle style10W500 = const TextStyle(
    fontSize: Sizes.s10,
    fontWeight: FontWeight.w500,
    color: AppColors.black,
  );
  static TextStyle style11W700 = const TextStyle(
    fontSize: Sizes.s11,
    fontWeight: FontWeight.w700,
    color: AppColors.black,
  );
  static TextStyle style12W400 = const TextStyle(
    fontSize: Sizes.s12,
    fontWeight: FontWeight.w400,
    color: AppColors.black,
  );
  static TextStyle style12W500 = const TextStyle(
    fontSize: Sizes.s12,
    fontWeight: FontWeight.w500,
    color: AppColors.black,
  );
  static TextStyle style12W600 = const TextStyle(
    fontSize: Sizes.s12,
    fontWeight: FontWeight.w600,
    color: AppColors.black,
  );

  static TextStyle style13W400 = const TextStyle(
    fontSize: Sizes.s13,
    fontWeight: FontWeight.w400,
    color: AppColors.black,
  );

  static TextStyle style14W400 = const TextStyle(
    fontSize: Sizes.s14,
    fontWeight: FontWeight.w400,
    color: AppColors.black,
  );
  static TextStyle style14W500 = const TextStyle(
    fontSize: Sizes.s14,
    fontWeight: FontWeight.w500,
    color: AppColors.black,
  );
  static TextStyle style14W600 = const TextStyle(
    fontSize: Sizes.s14,
    fontWeight: FontWeight.w600,
    color: AppColors.black,
  );
  static TextStyle style15W400 = const TextStyle(
    fontSize: Sizes.s15,
    fontWeight: FontWeight.w400,
    color: AppColors.black,
  );
  static TextStyle style15W500 = const TextStyle(
    fontSize: Sizes.s15,
    fontWeight: FontWeight.w500,
    color: AppColors.black,
  );
  static TextStyle style16W400 = const TextStyle(
    fontSize: Sizes.s16,
    fontWeight: FontWeight.w400,
    color: AppColors.black,
  );

  static TextStyle style16W500 = const TextStyle(
    fontSize: Sizes.s16,
    fontWeight: FontWeight.w500,
    color: AppColors.black,
  );
  static TextStyle style16W600 = const TextStyle(
    fontSize: Sizes.s16,
    fontWeight: FontWeight.w600,
    color: AppColors.black,
  );
  static TextStyle style18W400 = const TextStyle(
    fontSize: Sizes.s18,
    fontWeight: FontWeight.w400,
    color: AppColors.black,
  );
  static TextStyle style18W500 = const TextStyle(
    fontSize: Sizes.s18,
    fontWeight: FontWeight.w500,
    color: AppColors.black,
  );
  static TextStyle style18W600 = const TextStyle(
    fontSize: Sizes.s18,
    fontWeight: FontWeight.w600,
    color: AppColors.black,
  );
  static TextStyle style20W400 = const TextStyle(
    fontSize: Sizes.s20,
    fontWeight: FontWeight.w400,
    color: AppColors.black,
  );
  static TextStyle style20W500 = const TextStyle(
    fontSize: Sizes.s20,
    fontWeight: FontWeight.w500,
    color: AppColors.black,
  );
  static TextStyle style20W600 = const TextStyle(
    fontSize: Sizes.s20,
    fontWeight: FontWeight.w600,
    color: AppColors.black,
  );
  static TextStyle style23W500 = const TextStyle(
    fontSize: Sizes.s23,
    fontWeight: FontWeight.w500,
    color: AppColors.black,
  );
  static TextStyle style24W600 = const TextStyle(
    fontSize: Sizes.s24,
    fontWeight: FontWeight.w600,
    color: AppColors.black,
  );
  static TextStyle style26W400 = const TextStyle(
    fontSize: Sizes.s24,
    fontWeight: FontWeight.w400,
    color: AppColors.black,
  );
}

extension TextStylesBodls on TextStyle {
  TextStyle get bold200 => (this).copyWith(fontWeight: FontWeight.w200);
  TextStyle get bold300 => (this).copyWith(fontWeight: FontWeight.w300);
  TextStyle get bold400 => (this).copyWith(fontWeight: FontWeight.w400);
  TextStyle get bold500 => (this).copyWith(fontWeight: FontWeight.w500);
  TextStyle get bold600 => (this).copyWith(fontWeight: FontWeight.w600);
  TextStyle get bold700 => (this).copyWith(fontWeight: FontWeight.w700);
  TextStyle get bold800 => (this).copyWith(fontWeight: FontWeight.w800);
  TextStyle get bold900 => (this).copyWith(fontWeight: FontWeight.w900);
}
