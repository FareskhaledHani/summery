import 'package:multiple_result/multiple_result.dart';
import 'package:my_summer/core/errors/local_storage_exception_mixin.dart';
import 'package:my_summer/features/expenses/data/locale_data_base/treasury_local_datasource.dart';
import 'package:my_summer/features/expenses/domain/entity/history_entity.dart';
import 'package:my_summer/features/expenses/domain/entity/treasury_taransaction_entity.dart';

import '../../../../core/errors/failures.dart';
import '../../domain/repo/treasury_repo.dart';
import '../models/treasury_transaction_model.dart';

class TreasuryRepositoryImpl
    with RepositoryLocalExceptionMixin
    implements TreasuryRepository {
  TreasuryRepositoryImpl({required TreasuryLocalDataSource localDataSource})
      : _localDataSource = localDataSource;

  final TreasuryLocalDataSource _localDataSource;

  @override
  Future<Result<double, Failure>> getTotalTreasuryForYear(int year) async {
    return localExceptionHandler<double>(
      () async {
        final chaletsRevenue = await _localDataSource.getChaletsRevenueForYear(year);
        final manualNet = await _localDataSource.getManualNetForYear(year);
        return chaletsRevenue + manualNet;
      }(),
    );
  }

  @override
  Future<Result<int, Failure>> addTransaction(
    TreasuryTransactionEntity transaction,
  ) async {
    return localExceptionHandler<int>(
      _localDataSource.addTransaction(
        TreasuryTransactionModel(
          type: transaction.type,
          amount: transaction.amount,
          description: transaction.description,
          createdAt: transaction.createdAt,
        ),
      ),
    );
  }

  @override
  Future<Result<List<TreasuryHistoryItem>, Failure>> getHistoryForYear(
    int year,
  ) async {
    return localExceptionHandler<List<TreasuryHistoryItem>>(
      () async {
        final items = <TreasuryHistoryItem>[];

        final chaletPayments = await _localDataSource.getChaletPaymentsForYear(year);
        for (final row in chaletPayments) {
          final amount = (row['amount'] as num).toDouble();
          final chaletName = row['chalet_name'] as String;
          final type = row['type'] as String;
          final isRefund = type == 'refund';
          items.add(TreasuryHistoryItem(
            title: isRefund ? 'استرداد - $chaletName' : 'دفعة - $chaletName',
            amount: amount,
            date: DateTime.parse(row['paid_at'] as String),
            source: isRefund ? HistorySource.chaletRefund : HistorySource.chaletPayment,
          ));
        }

        final manualTransactions = await _localDataSource.getTransactionsForYear(year);
        for (final m in manualTransactions) {
          final entity = m.toEntity();
          final isDeposit = entity.type == TreasuryTransactionType.deposit;
          items.add(TreasuryHistoryItem(
            title: entity.description?.isNotEmpty == true
                ? entity.description!
                : (isDeposit ? 'إضافة رصيد يدوي' : 'مصروف'),
            amount: isDeposit ? entity.amount : -entity.amount,
            date: entity.createdAt,
            source: isDeposit ? HistorySource.manualDeposit : HistorySource.manualWithdrawal,
          ));
        }

        items.sort((a, b) => b.date.compareTo(a.date));
        return items;
      }(),
    );
  }
}