import 'package:flutter/material.dart';

import '../utils/app_colors.dart';

/// Extension for adding text style manipulation methods to the TextStyle class.
extension TextStyleExtension on TextStyle {
  /// Returns a text style with the color set to the primary color.
  TextStyle get withPrimaryColor => copyColorWith(AppColors.primary);

  /// Returns a text style with the color set to white.
  TextStyle get withWhiteColor => copyColorWith(AppColors.white);

  /// Returns a copy of the text style with the color set to the specified [color].
  TextStyle copyColorWith(Color? color) => copyWith(color: color);

  /// Returns a copy of the text style with the font family set to the specified [fontFamily].
  TextStyle copyFontWith(String fontFamily) => copyWith(fontFamily: fontFamily);
}
