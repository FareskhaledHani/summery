import 'package:freezed_annotation/freezed_annotation.dart';

part 'chalet_expense_entity.freezed.dart';

@freezed
abstract class ChaletExpenseEntity with _$ChaletExpenseEntity {
  const factory ChaletExpenseEntity({
    int? id,
    required int chaletId,
    required double amount,
    String? description,
    required DateTime createdAt,
    @Default(false) bool isCancelled,
  }) = _ChaletExpenseEntity;
}