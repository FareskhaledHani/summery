import 'failures.dart';

sealed class LocationFailure extends Failure {
  /// Represents a failure that occurs when there is an issue with the location.
  /// This is a subclass of the abstract class [Failure].
  ///
  /// of the failure, including the [message] associated with the failure.
  const LocationFailure([this.errorMessage])
      : super(message: errorMessage ?? '');

  /// An optional parameter that represents the error message.

  final String? errorMessage;

  @override
  String toString() {
    return 'LocationFailure: $message';
  }

  @override
  int get hashCode => message.hashCode;

  @override
  operator ==(Object other) =>
      identical(this, other) ||
      other is LocationFailure &&
          runtimeType == other.runtimeType &&
          message == other.message;
}

final class ActivityMissingLocationFailure extends LocationFailure {
  /// Represents a failure that occurs when the activity is missing in the location.
  /// This is a subclass of the abstract class [LocationFailure].
  ///
  /// of the failure, including the [message] associated with the failure.
  const ActivityMissingLocationFailure([super.message]);

  @override
  String toString() {
    return 'ActivityMissingLocationFailure: $message';
  }
}

final class LocationServiceDisabledFailure extends LocationFailure {
  /// Represents a failure that occurs when the location service is disabled.
  /// This is a subclass of the abstract class [LocationFailure].
  ///
  /// of the failure, including the [message] associated with the failure.
  const LocationServiceDisabledFailure([super.message]);

  @override
  String toString() {
    return 'LocationServiceDisabledFailure: $message';
  }
}

final class PermissionDefinitionsNotFoundFailure extends LocationFailure {
  /// Represents a failure that occurs when the permission definitions are not found.
  /// This is a subclass of the abstract class [LocationFailure].
  ///
  /// of the failure, including the [message] associated with the failure.
  const PermissionDefinitionsNotFoundFailure([super.message]);

  @override
  String toString() {
    return 'PermissionDefinitionsNotFoundFailure: $message';
  }
}

final class LocationPermissionsDeniedFailure extends LocationFailure {
  /// Represents a failure that occurs when the location permissions are denied.
  /// This is a subclass of the abstract class [LocationFailure].
  ///
  /// of the failure, including the [message] associated with the failure.
  const LocationPermissionsDeniedFailure([super.message]);

  @override
  String toString() {
    return 'LocationPermissionsDeniedFailure: $message';
  }
}

final class PermissionRequestInProgressFailure extends LocationFailure {
  /// Represents a failure that occurs when the permission request is in progress.
  /// This is a subclass of the abstract class [LocationFailure].
  ///
  /// of the failure, including the [message] associated with the failure.
  const PermissionRequestInProgressFailure([super.message]);

  @override
  String toString() {
    return 'PermissionRequestInProgressFailure: $message';
  }
}

final class LocationUpdateFailure extends LocationFailure {
  /// Represents a failure that occurs when the location update fails.
  /// This is a subclass of the abstract class [LocationFailure].
  ///
  /// of the failure, including the [message] associated with the failure.
  const LocationUpdateFailure([super.message]);

  @override
  String toString() {
    return 'LocationUpdateFailure: $message';
  }
}

final class UnknownLocationFailure extends LocationFailure {
  /// Represents a failure that occurs when an unknown location is encountered.
  /// This is a subclass of the abstract class [LocationFailure].
  ///
  /// of the failure, including the [message] associated with the failure.
  const UnknownLocationFailure([super.message]);

  @override
  String toString() {
    return 'UnknownLocationFailure: $message';
  }
}

final class LocationPermissionsDeniedForeverFailure extends LocationFailure {
  /// Represents a failure that occurs when the location permissions are denied forever.
  /// This is a subclass of the abstract class [LocationFailure].
  ///
  /// of the failure, including the [message] associated with the failure.
  const LocationPermissionsDeniedForeverFailure([super.message]);

  @override
  String toString() {
    return 'LocationPermissionsDeniedForeverFailure: $message';
  }
}

final class LocationSubscriptionActiveFailure extends LocationFailure {
  /// Represents a failure that occurs when the location subscription is active.
  /// This is a subclass of the abstract class [LocationFailure].
  ///
  /// of the failure, including the [message] associated with the failure.
  const LocationSubscriptionActiveFailure([super.message]);

  @override
  String toString() {
    return 'LocationSubscriptionActiveFailure: $message';
  }
}
