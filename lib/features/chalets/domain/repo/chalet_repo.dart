

import 'package:my_summer/features/chalets/domain/entity/booking_entity/booking_entity.dart';
import 'package:my_summer/features/chalets/domain/entity/chalet_entity/chalet_entity.dart';
import 'package:my_summer/features/chalets/domain/entity/payment_entity/payment_entity.dart';

abstract class ChaletRepository {
  Future<int> addChalet(ChaletEntity chalet);
  Future<List<ChaletEntity>> getAllChalets();
  Future<void> deleteChalet(int chaletId);

  Future<int> addBooking(BookingEntity booking);
  Future<List<BookingEntity>> getBookingsForChalet(int chaletId);
  Future<bool> isChaletBookedOnDate(int chaletId, DateTime date);
  Future<bool> hasOverlap(int chaletId, DateTime startDate, DateTime endDate);
  Future<void> cancelBooking(int bookingId, {required bool refund});

  Future<int> addPayment(PaymentEntity payment);
  Future<List<PaymentEntity>> getPaymentsForBooking(int bookingId);
  Future<double> getTotalPaidForBooking(int bookingId);
  Future<double> getTotalPaidForChalet(int chaletId);
  Future<double> getTotalPaidAcrossAllChalets();
}