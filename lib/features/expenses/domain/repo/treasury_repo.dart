import 'package:multiple_result/multiple_result.dart';

import '../../../../core/errors/failures.dart';
import '../entity/history_entity.dart';
import '../entity/treasury_taransaction_entity.dart';

abstract class TreasuryRepository {
  Future<Result<double, Failure>> getTotalTreasuryForYear(int year);
  Future<Result<int, Failure>> addTransaction(TreasuryTransactionEntity transaction);
  Future<Result<List<TreasuryHistoryItem>, Failure>> getHistoryForYear(int year);
}