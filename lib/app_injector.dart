import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get_it/get_it.dart';
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';
import 'package:my_summer/core/data_base/app_database.dart';
import 'package:my_summer/features/chalets/chalet_injector.dart';
import 'package:my_summer/features/expenses/treasury_injector.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'core/api/api_consumer.dart';
import 'core/api/dio_consumer.dart';
import 'core/api/dio_interceptor.dart';
import 'core/local_storage/local_storage_service.dart';
import 'core/local_storage/secure_storage_service.dart';
import 'core/local_storage/shared_pref_service.dart';
import 'core/network/network_info.dart';
import 'core/utils/constants.dart';

final getIt = GetIt.instance;

class AppInjector {
  const AppInjector._();

  static Future<void> setUpGetIt() async {
    await _registerBaseDependencies();

    _setupDioInterceptors();
  }

  static Future<void> _registerBaseDependencies() async {
    //! dio and apis injection
    getIt.registerLazySingleton<Dio>(() => Dio());

    getIt.registerLazySingleton<ApiConsumer>(
      () => DioConsumer(
        client: getIt<Dio>(),
      ),
    );

    getIt.registerLazySingleton<DioInterceptors>(
      () => DioInterceptors(),
    );

    // local storage
    AndroidOptions getAndroidOptions = const AndroidOptions(
      encryptedSharedPreferences: true,
    );
    getIt.registerLazySingleton<AppDatabase>(() => AppDatabase.instance);


    FlutterSecureStorage storage = FlutterSecureStorage(
      aOptions: getAndroidOptions,
    );
    getIt.registerLazySingleton<FlutterSecureStorage>(() => storage);
    getIt.registerLazySingleton<LocalStorageService>(
      () => SecureStorageService(
        secureStorage: getIt<FlutterSecureStorage>(),
      ),
      instanceName: secureStorageInstanceName,
    );

    final sharedPreferences = await SharedPreferences.getInstance();
    getIt.registerLazySingleton<SharedPreferences>(() => sharedPreferences);
    getIt.registerLazySingleton<LocalStorageService>(
      () => SharedPrefService(
        sharedPref: getIt<SharedPreferences>(),
      ),
    );

    getIt.registerLazySingleton<NetworkInfo>(
      () => NetworkInfoImpl(internetConnectionChecker: getIt()),
    );
    getIt.registerLazySingleton(() => InternetConnection());

     ChaletInjector.inject(getIt);

     TreasuryInjector.inject(getIt);
  }
 
  static void _setupDioInterceptors() {
    final dio = getIt<Dio>();
    final dioInterceptors = getIt<DioInterceptors>();
    // final userCubit = getIt<UserCubit>();

    // dioInterceptors.setUserCubit(userCubit);

    dio.interceptors.add(dioInterceptors);

  }
}
