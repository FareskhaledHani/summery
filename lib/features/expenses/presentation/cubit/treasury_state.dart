import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/errors/failures.dart';
import '../../domain/entity/history_entity.dart';

part 'treasury_state.freezed.dart';

@freezed
class TreasuryState with _$TreasuryState {
  const factory TreasuryState.initial() = _Initial;

  //! تحميل الإجمالي + الـ History مع بعض
  const factory TreasuryState.loading() = TreasuryLoading;
  const factory TreasuryState.loaded({
    required double total,
    required List<TreasuryHistoryItem> history,
    required int year,
  }) = TreasuryLoaded;
  const factory TreasuryState.loadFailure({
    required Failure failure,
  }) = TreasuryLoadFailure;

  //! add expense states
  const factory TreasuryState.addExpenseLoading() = AddExpenseLoading;
  const factory TreasuryState.addExpenseSuccess() = AddExpenseSuccess;
  const factory TreasuryState.addExpenseFailure({
    required Failure failure,
  }) = AddExpenseFailure;

  //! add extra balance states
  const factory TreasuryState.addExtraBalanceLoading() = AddExtraBalanceLoading;
  const factory TreasuryState.addExtraBalanceSuccess() = AddExtraBalanceSuccess;
  const factory TreasuryState.addExtraBalanceFailure({
    required Failure failure,
  }) = AddExtraBalanceFailure;
}