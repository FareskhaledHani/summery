import 'package:get_it/get_it.dart';
import 'package:my_summer/features/expenses/data/locale_data_base/treasury_local_datasource.dart';
import 'package:my_summer/features/expenses/data/repo_impl/treasury_repository_impl.dart';
import 'package:my_summer/features/expenses/domain/use_cases/add_expense_usecase.dart';
import 'package:my_summer/features/expenses/domain/use_cases/add_extra_balance_usecase.dart';
import 'package:my_summer/features/expenses/domain/use_cases/get_total_treasury_usecase.dart';
import 'package:my_summer/features/expenses/domain/use_cases/get_treasury_history_usecase.dart';
import 'package:my_summer/features/expenses/presentation/cubit/treasury_cubit.dart';

import 'domain/repo/treasury_repo.dart';


class TreasuryInjector {
  static void inject(GetIt getIt) {
    getIt
      ..registerLazySingleton<TreasuryLocalDataSource>(
        () => TreasuryLocalDataSource(getIt()),
      )
      ..registerLazySingleton<TreasuryRepository>(
        () => TreasuryRepositoryImpl(localDataSource: getIt()),
      )
      ..registerLazySingleton<GetTotalTreasuryUseCase>(
        () => GetTotalTreasuryUseCase(getIt()),
      )
      ..registerLazySingleton<GetTreasuryHistoryUseCase>(
        () => GetTreasuryHistoryUseCase(getIt()),
      )
      ..registerLazySingleton<AddExpenseUseCase>(
        () => AddExpenseUseCase(getIt()),
      )
      ..registerLazySingleton<AddExtraBalanceUseCase>(
        () => AddExtraBalanceUseCase(getIt()),
      )
      ..registerFactory<TreasuryCubit>(
        () => TreasuryCubit(
          getTotalTreasuryUseCase: getIt(),
          getTreasuryHistoryUseCase: getIt(),
          addExpenseUseCase: getIt(),
          addExtraBalanceUseCase: getIt(),
        ),
      );
  }
}