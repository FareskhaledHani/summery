import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_summer/features/expenses/domain/entity/treasury_taransaction_entity.dart';


part 'treasury_transaction_model.freezed.dart';
part 'treasury_transaction_model.g.dart';

enum TreasuryTransactionType {
  @JsonValue('deposit')
  deposit,
  @JsonValue('withdrawal')
  withdrawal,
}

@freezed
abstract class TreasuryTransactionModel with _$TreasuryTransactionModel {
  const factory TreasuryTransactionModel({
    int? id,
    TreasuryTransactionType? type,
    double? amount,
    String? description,
    @JsonKey(name: 'created_at') DateTime? createdAt,
  }) = _TreasuryTransactionModel;

  factory TreasuryTransactionModel.fromJson(Map<String, dynamic> json) =>
      _$TreasuryTransactionModelFromJson(json);
}

extension TreasuryTransactionModelMapper on TreasuryTransactionModel {
  TreasuryTransactionEntity toEntity() => TreasuryTransactionEntity(
        id: id,
        type: type ?? TreasuryTransactionType.deposit,
        amount: amount ?? 0,
        description: description,
        createdAt: createdAt ?? DateTime.now(),
      );
}