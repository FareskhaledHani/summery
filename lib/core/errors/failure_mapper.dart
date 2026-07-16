import 'dart:convert';

import 'package:easy_localization/easy_localization.dart';

import '../utils/app_strings.dart';
import 'failures.dart';

String mapFailureToMessage(Failure failure) {
  if (failure is ServerFailure || failure is NotFoundFailure) {
    try {
      final Map<String, dynamic> errorResponse = jsonDecode(failure.message);

      // Step 1: get general message if exists
      String generalMessage = '';
      if (errorResponse.containsKey('message')) {
        generalMessage = errorResponse['message'].toString();
      } else if (errorResponse.containsKey('Message')) {
        generalMessage = errorResponse['Message'].toString();
      } else if (errorResponse.containsKey('error') &&
          errorResponse['error'] is Map &&
          errorResponse['error'].containsKey('message')) {
        generalMessage = errorResponse['error']['message'].toString();
      }

      // Step 2: collect validation errors (if any)
      String detailsMessage = '';
      if (errorResponse.containsKey('errors') &&
          errorResponse['errors'] is Map<String, dynamic>) {
        final errors = errorResponse['errors'] as Map<String, dynamic>;
        final buffer = StringBuffer();

        errors.forEach((field, messages) {
          if (messages is List) {
            for (final msg in messages) {
              buffer.writeln('- $msg');
            }
          } else if (messages is String) {
            buffer.writeln('- $messages');
          }
        });

        detailsMessage = buffer.toString().trim();
      }

      // Step 3: return composed message
      if (detailsMessage.isNotEmpty && generalMessage.isNotEmpty) {
        return '${generalMessage.tr()}\n$detailsMessage';
      } else if (detailsMessage.isNotEmpty) {
        return detailsMessage;
      } else if (generalMessage.isNotEmpty) {
        return generalMessage;
      }
    } catch (_) {
      return failure.message.tr();
    }
  } else if (failure is CachedFailure ||
      failure is NetworkFailure ||
      failure is FetchLocationFailure) {
    return failure.message.tr();
  }

  return AppStrings.somethingWentWrong.tr();
}

extension FailureMapper on Failure {
  String toMessage() => mapFailureToMessage(this);
}
