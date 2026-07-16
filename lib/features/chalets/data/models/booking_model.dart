class BookingModel {
  const BookingModel({
    this.id,
    required this.chaletId,
    required this.startDate,
    required this.endDate,
    required this.totalPrice,
    this.notes,
    required this.createdAt,
    this.isCancelled = false,
    this.isRefunded = false,
  });

  final int? id;
  final int chaletId;
  final DateTime startDate;
  final DateTime endDate;
  final double totalPrice;
  final String? notes;
  final DateTime createdAt;
  final bool isCancelled;
  final bool isRefunded;

  Map<String, dynamic> toMap() {
    return {
      if (id != null) 'id': id,
      'chalet_id': chaletId,
      'start_date': startDate.toIso8601String(),
      'end_date': endDate.toIso8601String(),
      'total_price': totalPrice,
      'notes': notes,
      'created_at': createdAt.toIso8601String(),
      'is_cancelled': isCancelled ? 1 : 0,
      'is_refunded': isRefunded ? 1 : 0,
    };
  }

  factory BookingModel.fromMap(Map<String, dynamic> map) {
    return BookingModel(
      id: map['id'] as int?,
      chaletId: map['chalet_id'] as int,
      startDate: DateTime.parse(map['start_date'] as String),
      endDate: DateTime.parse(map['end_date'] as String),
      totalPrice: (map['total_price'] as num).toDouble(),
      notes: map['notes'] as String?,
      createdAt: DateTime.parse(map['created_at'] as String),
      isCancelled: (map['is_cancelled'] as int? ?? 0) == 1,
      isRefunded: (map['is_refunded'] as int? ?? 0) == 1,
    );
  }
}
