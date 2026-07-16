import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:my_summer/core/errors/failure_mapper.dart';

import '../../errors/failures.dart';
import '../../utils/utils.dart';

/// A utility class for displaying native-like toasts in a Flutter application.
///
/// This class provides static methods for showing error messages and custom messages as toasts.
///
/// Example usage:
/// ```dart
/// NativeToast.showError(ServerFailure(message: '{"message": "Server error"}'));
/// NativeToast.show('Custom message', backgroundColor: Colors.blue, textColor: Colors.white);
/// ```
abstract final class NativeToast {
  /// Displays a native-like toast for showing error messages.
  ///
  /// The [error] parameter is a [Failure] object from which the error message is extracted.
  /// The toast is displayed at the top with a red background and white text.
  static Future<bool?> showFailureToast(Failure error) {
    return Fluttertoast.showToast(
      msg: error.toMessage(),
      gravity: ToastGravity.TOP,
      backgroundColor: Colors.redAccent,
      textColor: Colors.white,
    );
  }

  static Future<bool?> showErrorToast(String error) {
    return Fluttertoast.showToast(
      msg: error,
      gravity: ToastGravity.TOP,
      // backgroundColor: Colors.redAccent,
      // textColor: Colors.white,
    );
  }

  static Future<bool?> showBasic(String error) async {
    await Fluttertoast.cancel();
    return Fluttertoast.showToast(
      msg: error,
      gravity: ToastGravity.TOP,
      // backgroundColor: Colors.redAccent,
      // textColor: Colors.white,
    );
  }

  /// Displays a native-like toast for showing custom messages.
  ///
  /// The [message] parameter is the custom message to be displayed.
  /// The [backgroundColor] parameter is optional and sets the background color of the toast.
  /// The [textColor] parameter is optional and sets the text color of the toast.
  ///
  /// By default, the toast is displayed at the top with a red background and white text.
  static Future<bool?> show(
    String message, {
    Color? backgroundColor,
    Color? textColor,
  }) {
    return Fluttertoast.showToast(
      msg: message,
      gravity: ToastGravity.TOP,
      backgroundColor: backgroundColor ?? AppColors.primary,
      textColor: textColor ?? Colors.white,
    );
  }
}
