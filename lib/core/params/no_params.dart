/// Represents a parameterless object.
///
/// This class is used to represent a parameterless object in the application.
/// It follows the singleton design pattern, ensuring that only one instance
/// of the class can be created.
final class NoParams {
  static NoParams? _instance;

  /// Private constructor for NoParams class.
  const NoParams._internal();

  /// Returns the instance of NoParams.
  ///
  /// If an instance of NoParams already exists, it returns that instance.
  /// Otherwise, it creates a new instance and returns it.
  static NoParams get instance => _instance ??= const NoParams._internal();
}

/// Singleton instance of NoParams.
///
/// Used when no value is to be set as a parameters.
const noParams = NoParams._internal();
