import 'package:multiple_result/multiple_result.dart';
import 'package:my_summer/core/use_cases/main_use_case.dart';

import '../../../../core/errors/failures.dart';
import '../repo/treasury_repo.dart';

class GetTotalTreasuryParams {
  const GetTotalTreasuryParams({required this.year});

  final int year;
}

class GetTotalTreasuryUseCase
    implements UseCase<double, GetTotalTreasuryParams> {
  GetTotalTreasuryUseCase(this._repository);

  final TreasuryRepository _repository;

  @override
  Future<Result<double, Failure>> call(GetTotalTreasuryParams params) {
    return _repository.getTotalTreasuryForYear(params.year);
  }
}