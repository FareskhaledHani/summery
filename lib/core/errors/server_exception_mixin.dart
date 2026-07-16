import 'dart:async';
import 'package:easy_localization/easy_localization.dart';
import 'package:multiple_result/multiple_result.dart';

import '../../app_injector.dart';
import '../network/network_info.dart';
import '../utils/app_strings.dart';
import 'exceptions.dart';
import 'failures.dart';

mixin RepositoryServerExceptionMixin on Object {
  Future<bool> get _isConnected async => await getIt<NetworkInfo>().isConnected;
  Future<Result<S, Failure>> serverExceptionHandler<S>(
    FutureOr computation, {
    String unknownMessage = AppStrings.somethingWentWrong,
  }) async {
    if (await _isConnected) {
      try {
        return Success(await computation);
      } on ServerException catch (error) {
        return Error(
          ServerFailure(
            message: error.message ?? unknownMessage.tr(),
          ),
        );
      }
    } else {
      return Error(
        NetworkFailure(
          message: AppStrings.noInternetConnection.tr(),
        ),
      );
    }
  }
}
