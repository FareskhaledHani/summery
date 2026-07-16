import 'package:freezed_annotation/freezed_annotation.dart';

part 'booking_entity.freezed.dart';

@freezed
abstract class BookingEntity with _$BookingEntity {
  const factory BookingEntity({
    int? id,
    required int chaletId,
    required DateTime startDate,
    required DateTime endDate,
    required double totalPrice,
    String? notes,
    required DateTime createdAt,
    @Default(0) double totalPaid,
    @Default(false) bool isCancelled, 
  }) = _BookingEntity;
}

extension BookingEntityX on BookingEntity {
  double get remaining => totalPrice - totalPaid;
  bool get isFullyPaid => totalPaid >= totalPrice;
}