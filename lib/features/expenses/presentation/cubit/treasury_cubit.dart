import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_summer/features/expenses/domain/use_cases/add_expense_usecase.dart';
import 'package:my_summer/features/expenses/domain/use_cases/add_extra_balance_usecase.dart';
import 'package:my_summer/features/expenses/domain/use_cases/get_total_treasury_usecase.dart';
import 'package:my_summer/features/expenses/domain/use_cases/get_treasury_history_usecase.dart';

import '../../domain/entity/history_entity.dart';
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

  Future<double> getTotalTreasury({int? year}) async {
    _currentYear = year ?? _currentYear;
    emit(const TreasuryState.getTotalTreasuryLoading());
    final result = await _getTotalTreasuryUseCase(
      GetTotalTreasuryParams(year: _currentYear),
    );
    return result.when(
      (total) {
        emit(TreasuryState.getTotalTreasurySuccess(total: total));
        return total;
      },
      (failure) {
        emit(TreasuryState.getTotalTreasuryFailure(failure: failure));
        return 0;
      },
    );
  }

  Future<List<TreasuryHistoryItem>> getHistory({int? year}) async {
    _currentYear = year ?? _currentYear;
    emit(const TreasuryState.getHistoryLoading());
    final result = await _getTreasuryHistoryUseCase(
      GetTreasuryHistoryParams(year: _currentYear),
    );
    return result.when(
      (history) {
        emit(TreasuryState.getHistorySuccess(history: history));
        return history;
      },
      (failure) {
        emit(TreasuryState.getHistoryFailure(failure: failure));
        return [];
      },
    );
  }

  // بتحمّل الاتنين مع بعض (الإجمالي + الـ History) عشان الشاشة الرئيسية
  Future<void> loadAll({int? year}) async {
    await getTotalTreasury(year: year);
    await getHistory(year: _currentYear);
  }

  Future<void> addExpense({required double amount, String? description}) async {
    emit(const TreasuryState.addExpenseLoading());
    final result = await _addExpenseUseCase(
      AddExpenseParams(amount: amount, description: description),
    );
    result.when(
      (_) {
        emit(const TreasuryState.addExpenseSuccess());
        loadAll(); // ريفريش بعد الإضافة
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