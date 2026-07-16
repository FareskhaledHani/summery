import 'package:get_it/get_it.dart';
import 'package:my_summer/features/chalets/data/data_base/chalet_database.dart';
import 'package:my_summer/features/chalets/data/repo_impl/chalet_repo_impl.dart';
import 'package:my_summer/features/chalets/domain/repo/chalet_repo.dart';
import 'package:my_summer/features/chalets/presentation/cubit/list_cubit/chalets_list_cubit.dart';


class ChaletInjector {
  static void inject(GetIt getIt) {
    getIt
      ..registerLazySingleton<ChaletLocalDataSource>(
        () => ChaletLocalDataSource(getIt()),
      )
      ..registerLazySingleton<ChaletRepository>(
        () => ChaletRepositoryImpl(getIt()),
      )
      ..registerFactory<ChaletsListCubit>(
        () => ChaletsListCubit(getIt()),
      );
    // ChaletDetailsCubit مش بيتسجل هنا لأنه محتاج chaletId وقت الإنشاء
    // هنعمله بـ BlocProvider(create: (_) => ChaletDetailsCubit(getIt(), chaletId))
  }
}