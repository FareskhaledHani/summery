/// This is an abstract class that represents a local storage service.
abstract class LocalStorageService {
  /// Writes a string value to the storage using the specified [key].
  ///
  /// Returns a [Future] that completes once the value has been written.
  Future<void> writeString(String key, String value);

  /// Reads a string value from the storage using the specified [key].
  ///
  /// Returns a [Future] that completes with the value associated with the key,
  /// or `null` if the key does not exist.
  Future<String?> readString(String key);

  /// Deletes all the data from the storage.
  ///
  /// Returns a [Future] that completes once all the data has been deleted.
  Future<void> deleteAll();

  /// Deletes the value associated with the specified [key] from the storage.
  ///
  /// Returns a [Future] that completes once the value has been deleted.
  Future<void> delete(String key);

  dynamic readStringList(String key);
  //Future<List<String?>?> readStringList(String key);

  Future<void> writeStringList(String key, List<String> value);

  Future<void> writeBool(String key, bool value);

  Future<bool?> readBool(String key);
}
