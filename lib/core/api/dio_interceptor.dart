import 'dart:developer';

import 'package:dio/dio.dart';

import '../../features/auth/presentation/cubit/user_cubit.dart';
import 'api_constants.dart';

final class DioInterceptors extends Interceptor {
  UserCubit? _userCubit;
  void setUserCubit(UserCubit userCubit) {
    _userCubit = userCubit;
  }

  DioInterceptors();
  @override
  void onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    options.headers[ApiConstants.contentType] = ApiConstants.applicationJson;
    options.headers[ApiConstants.acceptLanguage] =
        _userCubit!.getCurrentLanguage();
    // if (_userCubit!.userData != null) {
    //   options.headers[ApiConstants.authorization] =
    //       '${ApiConstants.bearer} ${_userCubit!.userData?.accessToken}';
    // }
    super.onRequest(options, handler);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) async {
    super.onError(err, handler);
    final statusCode = err.response?.statusCode;
    String message = '';
    try {
      message = err.response?.data['message'];
      // //Unauthenticated.
      // if (statusCode == StatusCode.unauthorized ||
      //     message.contains('Unauthenticated.')) {
      //   await _userCubit!.userLogOut();
      // }
    } catch (e) {
      log('error in dio interceptor $e');
    }
  }
}
