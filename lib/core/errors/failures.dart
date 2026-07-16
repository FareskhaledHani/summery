import 'package:easy_localization/easy_localization.dart';
import 'package:equatable/equatable.dart';

import '../utils/app_strings.dart';

abstract class Failure extends Equatable {
  final String message;

  const Failure({required this.message});

  @override
  List<Object?> get props => [message];
}

class ServerFailure extends Failure {
  const ServerFailure({required super.message});
}

class NetworkFailure extends Failure {
  const NetworkFailure({required super.message});
}

class CachedFailure extends Failure {
  const CachedFailure({required super.message});
}

class GalleryFailure extends Failure {
  const GalleryFailure({required super.message});
}

class UnknownFailure extends Failure {
  UnknownFailure({String? message})
      : super(message: message ?? AppStrings.somethingWentWrong.tr());
}

class NotFoundFailure extends Failure {
  const NotFoundFailure({required super.message});
}

class FetchLocationFailure extends Failure {
  FetchLocationFailure({String? message})
      : super(message: message ?? AppStrings.somethingWentWrong.tr());
}
