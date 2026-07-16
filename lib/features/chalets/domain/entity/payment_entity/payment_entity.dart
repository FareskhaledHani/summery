import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data/models/payment_model.dart';

part 'payment_entity.freezed.dart';

@freezed
abstract class PaymentEntity with _$PaymentEntity {
  const factory PaymentEntity({
    int? id,
    required int bookingId,
    required double amount,
    required DateTime paidAt,
    required PaymentType type,
  }) = _PaymentEntity;
}