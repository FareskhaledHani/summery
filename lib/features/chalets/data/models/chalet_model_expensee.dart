class ChaletExpenseModel {
  const ChaletExpenseModel({
    this.id,
    required this.chaletId,
    required this.amount,
    this.description,
    required this.createdAt,
    this.isCancelled = false,
  });

  final int? id;
  final int chaletId;
  final double amount;
  final String? description;
  final DateTime createdAt;
  final bool isCancelled;

  Map<String, dynamic> toMap() {
    return {
      if (id != null) 'id': id,
      'chalet_id': chaletId,
      'amount': amount,
      'description': description,
      'created_at': createdAt.toIso8601String(),
      'is_cancelled': isCancelled ? 1 : 0,
    };
  }

  factory ChaletExpenseModel.fromMap(Map<String, dynamic> map) {
    return ChaletExpenseModel(
      id: map['id'] as int?,
      chaletId: map['chalet_id'] as int,
      amount: (map['amount'] as num).toDouble(),
      description: map['description'] as String?,
      createdAt: DateTime.parse(map['created_at'] as String),
      isCancelled: (map['is_cancelled'] as int? ?? 0) == 1,
    );
  }
}