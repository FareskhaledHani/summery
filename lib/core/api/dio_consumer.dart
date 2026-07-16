import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:dio/io.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/foundation.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

import '../../app_injector.dart';
import '../errors/exceptions.dart';
import '../utils/app_strings.dart';
import 'api_consumer.dart';
import 'api_end_points.dart';
import 'dio_interceptor.dart';
import 'status_code.dart';

class DioConsumer implements ApiConsumer {
  final Dio client;

  DioConsumer({required this.client}) {
    client.httpClientAdapter = IOHttpClientAdapter(
      createHttpClient: () {
        final client = HttpClient();
        client.badCertificateCallback =
            (X509Certificate cert, String host, int port) {
          return true;
        };
        return client;
      },
    );
    client.options
      ..baseUrl = ApiEndPoints.baseUrl
      ..responseType = ResponseType.json
      ..connectTimeout = const Duration(seconds: 10)
      ..receiveTimeout = const Duration(seconds: 10)
      ..followRedirects = false;
    client.interceptors.add(getIt<DioInterceptors>());
    if (kDebugMode) {
      client.interceptors.add(PrettyDioLogger(
        requestHeader: true,
        requestBody: true,
        responseBody: true,
        responseHeader: false,
        compact: true,
        maxWidth: 90,
        logPrint: (object) => log(object.toString()),
      ));
    }
  }
  @override
  Future get(
    String path, {
    Map<String, dynamic>? queryParameters,
    CancelToken? cancelToken,
  }) async {
    try {
      final response = await client.get(
        path,
        queryParameters: queryParameters,
        cancelToken: cancelToken,
      );
      return _handleResponseJson(response);
    } on DioException catch (error) {
      throw _handleDioError(error);
    }
  }

  @override
  Future post(String path,
      {Map<String, dynamic>? queryParameters,
      Map<String, dynamic>? body,
      bool isFormData = false}) async {
    try {
      final response = await client.post(
        path,
        queryParameters: queryParameters,
        data: isFormData ? FormData.fromMap(body!) : body,
      );
      return _handleResponseJson(response);
    } on DioException catch (error) {
      throw _handleDioError(error);
    }
  }

  @override
  Future put(
    String path, {
    Map<String, dynamic>? queryParameters,
    dynamic body,
    bool isFormData = false,
  }) async {
    try {
      final response = await client.put(
        path,
        queryParameters: queryParameters,
        data: isFormData ? FormData.fromMap(body!) : body,
      );
      return _handleResponseJson(response);
    } on DioException catch (error) {
      throw _handleDioError(error);
    }
  }

  @override
  Future patch(
    String path, {
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? body,
    bool isFormData = false,
  }) async {
    try {
      final response = await client.patch(
        path,
        queryParameters: queryParameters,
        data: isFormData ? FormData.fromMap(body!) : body,
      );
      return _handleResponseJson(response);
    } on DioException catch (error) {
      throw _handleDioError(error);
    }
  }

  @override
  Future delete(String path, {Map<String, dynamic>? queryParameters}) async {
    try {
      final response =
          await client.delete(path, queryParameters: queryParameters);
      return _handleResponseJson(response);
    } on DioException catch (error) {
      throw _handleDioError(error);
    }
  }

  dynamic _handleResponseJson(Response response) {
    return response.data;
    // return jsonDecode(response.data.toString());
  }

  dynamic _handleDioError(DioException error) {
    switch (error.type) {
      case DioExceptionType.connectionTimeout:
      case DioExceptionType.sendTimeout:
      case DioExceptionType.receiveTimeout:
        throw FetchDataException(
          AppStrings.connectionTimeoutError.tr(),
        );
      case DioExceptionType.badResponse:
        switch (error.response?.statusCode) {
          case StatusCode.badRequest:
            throw BadRequestException(jsonEncode(error.response?.data));
          case StatusCode.unauthorized:
          case StatusCode.forbidden:
            throw UnauthorizedException(jsonEncode(error.response?.data));
          case StatusCode.notFound:
            throw NotFoundException(jsonEncode(error.response?.data));
          case StatusCode.conflict:
            throw ConflictException(jsonEncode(error.response?.data));
          case StatusCode.unProcessableEntity:
            throw UnProcessableEntityException(
                jsonEncode(error.response?.data));
          case StatusCode.internalServerError:
            throw InternalServerErrorException();
          default:
            throw FetchDataException(
              AppStrings.connectionTimeoutError.tr(),
            );
        }
      case DioExceptionType.cancel:
        break;
      case DioExceptionType.unknown:
        throw NoInternetException(AppStrings.noInternetConnection.tr());
      case DioExceptionType.badCertificate:
        throw NoInternetException(AppStrings.noInternetConnection.tr());
      case DioExceptionType.connectionError:
        throw NoInternetException(AppStrings.noInternetConnection.tr());
      case DioExceptionType.transformTimeout:
        // TODO: Handle this case.
        throw UnimplementedError();
    }
  }
}
