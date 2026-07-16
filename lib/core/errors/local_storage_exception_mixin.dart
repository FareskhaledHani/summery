import 'dart:async';

import 'package:multiple_result/multiple_result.dart';
import 'package:my_summer/core/errors/locale_failure.dart';

import '../utils/app_strings.dart';
import 'failures.dart';

mixin RepositoryLocalExceptionMixin on Object {
  Future<Result<S, Failure>> localExceptionHandler<S>(
    FutureOr<S> computation, {
    String unknownMessage = AppStrings.somethingWentWrong,
  }) async {
    try {
      return Success(await computation);
    } catch (error) {
      return Error(
        LocalFailure(message: error.toString()),
      );
    }
  }
}