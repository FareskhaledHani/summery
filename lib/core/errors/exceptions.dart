import 'package:easy_localization/easy_localization.dart';
import 'package:equatable/equatable.dart';

import '../utils/app_strings.dart';

class ServerException extends Equatable implements Exception {
  final String? message;

  const ServerException([this.message]);

  @override
  List<Object?> get props => [message];

  @override
  String toString() => '$message';
}

class FetchDataException extends ServerException {
  const FetchDataException([super.message]);
}

class BadRequestException extends ServerException {
  const BadRequestException([super.message]);
}

class UnauthorizedException extends ServerException {
  const UnauthorizedException([super.message]);
}

class NotFoundException extends ServerException {
  const NotFoundException([super.message]);
}

class ForbiddenException extends ServerException {
  const ForbiddenException([message]) : super('Forbidden');
}

class ConflictException extends ServerException {
  const ConflictException([message]) : super('Conflict');
}

class UnProcessableEntityException extends ServerException {
  const UnProcessableEntityException([super.message]);
}

class InternalServerErrorException extends ServerException {
  InternalServerErrorException([message])
      : super(AppStrings.internalServerError.tr());
}

class NoInternetException extends ServerException {
  const NoInternetException([super.message]);
}

class CacheException implements Exception {
  final String? message;

  const CacheException({this.message});

  @override
  String toString() => '$message';
}

class PickImageException extends ServerException {
  const PickImageException([super.message]);
}

extension StringExtension on String {
  String replaceWithAsterisks() => replaceRange(1, length, '****');
}
