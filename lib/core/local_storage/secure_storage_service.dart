import 'dart:convert';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import '../errors/exceptions.dart';
import '../utils/app_strings.dart';
import 'local_storage_service.dart';

/// A service that provides secure storage functionality using FlutterSecureStorage.
class SecureStorageService implements LocalStorageService {
  final FlutterSecureStorage _secureStorage;

  /// Constructs a SecureStorageService with the given FlutterSecureStorage instance.
  SecureStorageService({
    required FlutterSecureStorage secureStorage,
  }) : _secureStorage = secureStorage;

  @override

  /// Deletes the value associated with the given key from the secure storage.
  Future<void> delete(String key) async {
    try {
      await _secureStorage.delete(key: key);
    } catch (e) {
      throw CacheException(message: AppStrings.somethingWentWrong.tr());
    }
  }

  @override

  /// Deletes all values from the secure storage.
  Future<void> deleteAll() async {
    try {
      await _secureStorage.deleteAll();
    } catch (e) {
      throw CacheException(message: AppStrings.somethingWentWrong.tr());
    }
  }

  @override

  /// Reads the value associated with the given key from the secure storage.
  /// Returns null if the key is not found.
  Future<String?> readString(String key) async {
    try {
      return await _secureStorage.read(key: key);
    } catch (e) {
      throw CacheException(message: AppStrings.somethingWentWrong.tr());
    }
  }

  @override

  /// Writes the given value to the secure storage with the specified key.
  Future<void> writeString(String key, String value) async {
    try {
      await _secureStorage.write(key: key, value: value);
    } catch (e) {
      throw CacheException(message: AppStrings.somethingWentWrong.tr());
    }
  }

  @override
  Future<List<String?>?> readStringList(String key) async {
    final encodedList = await readString(key);
    if (encodedList != null) {
      final decodedList = jsonDecode(encodedList);
      if (decodedList is List) {
        return decodedList as List<String>;
      } else {
        return null;
      }
    } else {
      return null;
    }
  }

  @override
  Future<void> writeStringList(String key, List<String> value) async {
    final encodedList = jsonEncode(value);
    await writeString(key, encodedList);
  }

  @override
  Future<bool?> readBool(String key) async {
    final encodedBool = await readString(key);
    if (encodedBool != null) {
      final decodedBool = jsonDecode(encodedBool);
      if (decodedBool is bool) {
        return decodedBool;
      } else {
        return null;
      }
    } else {
      return null;
    }
  }

  @override
  Future<void> writeBool(String key, bool value) async {
    final encodedBool = jsonEncode(value);
    await writeString(key, encodedBool);
  }
}
