import 'package:multiple_result/multiple_result.dart';
import 'package:my_summer/core/use_cases/main_use_case.dart';
import 'package:my_summer/features/expenses/domain/entity/history_entity.dart';

import '../../../../core/errors/failures.dart';

import '../repo/treasury_repo.dart';

class GetTreasuryHistoryParams {
  const GetTreasuryHistoryParams({required this.year});

  final int year;
}

class GetTreasuryHistoryUseCase
    implements UseCase<List<TreasuryHistoryItem>, GetTreasuryHistoryParams> {
  GetTreasuryHistoryUseCase(this._repository);

  final TreasuryRepository _repository;

  @override
  Future<Result<List<TreasuryHistoryItem>, Failure>> call(
    GetTreasuryHistoryParams params,
  ) {
    return _repository.getHistoryForYear(params.year);
  }
}