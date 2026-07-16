import 'dart:convert';
import 'package:easy_localization/easy_localization.dart';

import '../../utils/app_strings.dart';
import '../failures.dart';

String errorHandler(Failure? failure) {
  String? message = failure?.message;
  dynamic jsonResEncode;
  try {
    jsonResEncode = jsonDecode(message ?? '');
  } on FormatException catch (_) {
    return message ?? AppStrings.somethingWentWrong.tr();
  }
  dynamic jsonMessage;
  try {
    jsonMessage = jsonResEncode['error'];
  } catch (_) {
    jsonMessage = jsonResEncode['message'];
  }
  if (jsonMessage is String) {
    return jsonMessage;
  } else if (jsonMessage is Map<String, dynamic>) {
    return jsonMessage['message'];
  } else {
    return AppStrings.somethingWentWrong.tr();
  }
}
