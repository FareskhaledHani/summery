import 'package:dio/dio.dart';

abstract class ApiConsumer {
  Future<dynamic> get(
    String path, {
    Map<String, dynamic>? queryParameters,
    CancelToken? cancelToken,
  });
  Future<dynamic> post(
    String path, {
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? body,
    bool isFormData = false,
  });
  Future<dynamic> delete(String path, {Map<String, dynamic>? queryParameters});
  Future<dynamic> put(
    String path, {
    Map<String, dynamic>? queryParameters,
    dynamic body,
    bool isFormData = false,
  });
  Future<dynamic> patch(
    String path, {
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? body,
    bool isFormData = false,
  });
}
