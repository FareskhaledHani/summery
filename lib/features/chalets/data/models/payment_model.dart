enum PaymentType { deposit, remaining, extra, refund }

extension PaymentTypeX on PaymentType {
  String get value => name;

  static PaymentType fromValue(String value) {
    return PaymentType.values.firstWhere((e) => e.name == value);
  }
}

class PaymentModel {
  const PaymentModel({
    this.id,
    required this.bookingId,
    required this.amount,
    required this.paidAt,
    required this.type,
  });

  final int? id;
  final int bookingId;
  final double amount;
  final DateTime paidAt;
  final PaymentType type;

  Map<String, dynamic> toMap() {
    return {
      if (id != null) 'id': id,
      'booking_id': bookingId,
      'amount': amount,
      'paid_at': paidAt.toIso8601String(),
      'type': type.value,
    };
  }

  factory PaymentModel.fromMap(Map<String, dynamic> map) {
    return PaymentModel(
      id: map['id'] as int?,
      bookingId: map['booking_id'] as int,
      amount: (map['amount'] as num).toDouble(),
      paidAt: DateTime.parse(map['paid_at'] as String),
      type: PaymentTypeX.fromValue(map['type'] as String),
    );
  }
}