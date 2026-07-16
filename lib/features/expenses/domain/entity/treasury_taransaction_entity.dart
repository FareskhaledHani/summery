import 'package:equatable/equatable.dart';

import '../../data/models/treasury_transaction_model.dart';

class TreasuryTransactionEntity extends Equatable {
  const TreasuryTransactionEntity({
    this.id,
    required this.type,
    required this.amount,
    this.description,
    required this.createdAt,
  });

  final int? id;
  final TreasuryTransactionType type;
  final double amount;
  final String? description;
  final DateTime createdAt;

  TreasuryTransactionEntity copyWith({
    int? id,
    TreasuryTransactionType? type,
    double? amount,
    String? description,
    DateTime? createdAt,
  }) {
    return TreasuryTransactionEntity(
      id: id ?? this.id,
      type: type ?? this.type,
      amount: amount ?? this.amount,
      description: description ?? this.description,
      createdAt: createdAt ?? this.createdAt,
    );
  }

  @override
  List<Object?> get props => [id, type, amount, description, createdAt];
}