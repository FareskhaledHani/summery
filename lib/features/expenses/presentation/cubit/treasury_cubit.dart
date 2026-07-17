import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_summer/features/expenses/domain/use_cases/add_expense_usecase.dart';
import 'package:my_summer/features/expenses/domain/use_cases/add_extra_balance_usecase.dart';
import 'package:my_summer/features/expenses/domain/use_cases/get_total_treasury_usecase.dart';
import 'package:my_summer/features/expenses/domain/use_cases/get_treasury_history_usecase.dart';

import 'treasury_state.dart';

class TreasuryCubit extends Cubit<TreasuryState> {
  final GetTotalTreasuryUseCase _getTotalTreasuryUseCase;
  final GetTreasuryHistoryUseCase _getTreasuryHistoryUseCase;
  final AddExpenseUseCase _addExpenseUseCase;
  final AddExtraBalanceUseCase _addExtraBalanceUseCase;

  TreasuryCubit({
    required GetTotalTreasuryUseCase getTotalTreasuryUseCase,
    required GetTreasuryHistoryUseCase getTreasuryHistoryUseCase,
    required AddExpenseUseCase addExpenseUseCase,
    required AddExtraBalanceUseCase addExtraBalanceUseCase,
  })  : _getTotalTreasuryUseCase = getTotalTreasuryUseCase,
        _getTreasuryHistoryUseCase = getTreasuryHistoryUseCase,
        _addExpenseUseCase = addExpenseUseCase,
        _addExtraBalanceUseCase = addExtraBalanceUseCase,
        super(const TreasuryState.initial());

  int _currentYear = DateTime.now().year;
  int get currentYear => _currentYear;

  Future<void> loadAll({int? year}) async {
    _currentYear = year ?? _currentYear;
    emit(const TreasuryState.loading());

    final totalResult = await _getTotalTreasuryUseCase(
      GetTotalTreasuryParams(year: _currentYear),
    );

    await totalResult.when(
      (total) async {
        final historyResult = await _getTreasuryHistoryUseCase(
          GetTreasuryHistoryParams(year: _currentYear),
        );

        historyResult.when(
          (history) {
            emit(TreasuryState.loaded(
              total: total,
              history: history,
              year: _currentYear,
            ));
          },
          (failure) => emit(TreasuryState.loadFailure(failure: failure)),
        );
      },
      (failure) async {
        emit(TreasuryState.loadFailure(failure: failure));
      },
    );
  }

  Future<void> addExpense({required double amount, String? description}) async {
    emit(const TreasuryState.addExpenseLoading());
    final result = await _addExpenseUseCase(
      AddExpenseParams(amount: amount, description: description),
    );
    result.when(
      (_) {
        emit(const TreasuryState.addExpenseSuccess());
        loadAll();
      },
      (failure) => emit(TreasuryState.addExpenseFailure(failure: failure)),
    );
  }

  Future<void> addExtraBalance({required double amount, String? description}) async {
    emit(const TreasuryState.addExtraBalanceLoading());
    final result = await _addExtraBalanceUseCase(
      AddExtraBalanceParams(amount: amount, description: description),
    );
    result.when(
      (_) {
        emit(const TreasuryState.addExtraBalanceSuccess());
        loadAll();
      },
      (failure) => emit(TreasuryState.addExtraBalanceFailure(failure: failure)),
    );
  }

  void changeYear(int year) => loadAll(year: year);
}