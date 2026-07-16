import 'package:multiple_result/multiple_result.dart';
import 'package:my_summer/core/use_cases/main_use_case.dart';
import 'package:my_summer/features/expenses/domain/entity/treasury_taransaction_entity.dart';

import '../../../../core/errors/failures.dart';
import '../../data/models/treasury_transaction_model.dart';
import '../repo/treasury_repo.dart';

class AddExtraBalanceParams {
  const AddExtraBalanceParams({required this.amount, this.description});

  final double amount;
  final String? description;
}

class AddExtraBalanceUseCase implements UseCase<int, AddExtraBalanceParams> {
  AddExtraBalanceUseCase(this._repository);

  final TreasuryRepository _repository;

  @override
  Future<Result<int, Failure>> call(AddExtraBalanceParams params) {
    return _repository.addTransaction(
      TreasuryTransactionEntity(
        type: TreasuryTransactionType.deposit,
        amount: params.amount,
        description: params.description,
        createdAt: DateTime.now(),
      ),
    );
  }
}