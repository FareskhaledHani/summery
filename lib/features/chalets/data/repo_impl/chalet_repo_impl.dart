
import 'package:my_summer/features/chalets/data/data_base/chalet_database.dart';
import 'package:my_summer/features/chalets/domain/entity/booking_entity/booking_entity.dart';
import 'package:my_summer/features/chalets/domain/entity/chalet_entity/chalet_entity.dart';
import 'package:my_summer/features/chalets/domain/entity/payment_entity/payment_entity.dart';
import 'package:my_summer/features/chalets/domain/repo/chalet_repo.dart';

import '../models/booking_model.dart';
import '../models/chalet_model.dart';
import '../models/payment_model.dart';

class ChaletRepositoryImpl implements ChaletRepository {
  ChaletRepositoryImpl(this._localDataSource);

  final ChaletLocalDataSource _localDataSource;

  @override
  Future<int> addChalet(ChaletEntity chalet) {
    return _localDataSource.addChalet(
      ChaletModel(
        name: chalet.name,
        subtitle: chalet.subtitle,
        createdAt: chalet.createdAt,
      ),
    );
  }

  @override
  Future<List<ChaletEntity>> getAllChalets() async {
    final models = await _localDataSource.getAllChalets();
    return models
        .map((m) => ChaletEntity(
              id: m.id,
              name: m.name,
              subtitle: m.subtitle,
              createdAt: m.createdAt,
            ))
        .toList();
  }

  @override
  Future<void> deleteChalet(int chaletId) {
    return _localDataSource.deleteChalet(chaletId);
  }

  @override
  Future<int> addBooking(BookingEntity booking) {
    return _localDataSource.addBooking(
      BookingModel(
        chaletId: booking.chaletId,
        startDate: booking.startDate,
        endDate: booking.endDate,
        totalPrice: booking.totalPrice,
        notes: booking.notes,
        createdAt: booking.createdAt,
      ),
    );
  }

 

  @override
  Future<bool> isChaletBookedOnDate(int chaletId, DateTime date) {
    return _localDataSource.isChaletBookedOnDate(chaletId, date);
  }

  @override
  Future<int> addPayment(PaymentEntity payment) {
    return _localDataSource.addPayment(
      PaymentModel(
        bookingId: payment.bookingId,
        amount: payment.amount,
        paidAt: payment.paidAt,
        type: payment.type,
      ),
    );
  }

  @override
  Future<List<PaymentEntity>> getPaymentsForBooking(int bookingId) async {
    final models = await _localDataSource.getPaymentsForBooking(bookingId);
    return models
        .map((m) => PaymentEntity(
              id: m.id,
              bookingId: m.bookingId,
              amount: m.amount,
              paidAt: m.paidAt,
              type: m.type,
            ))
        .toList();
  }

  @override
  Future<double> getTotalPaidForBooking(int bookingId) {
    return _localDataSource.getTotalPaidForBooking(bookingId);
  }

  @override
  Future<double> getTotalPaidForChalet(int chaletId) {
    return _localDataSource.getTotalPaidForChalet(chaletId);
  }

  @override
  Future<double> getTotalPaidAcrossAllChalets() {
    return _localDataSource.getTotalPaidAcrossAllChalets();
  }
   @override
@override
Future<List<BookingEntity>> getBookingsForChalet(int chaletId) async {
  final models = await _localDataSource.getBookingsForChalet(chaletId);

  final entities = <BookingEntity>[];
  for (final m in models) {
    final totalPaid = await _localDataSource.getTotalPaidForBooking(m.id!);
    entities.add(BookingEntity(
      id: m.id,
      chaletId: m.chaletId,
      startDate: m.startDate,
      endDate: m.endDate,
      totalPrice: m.totalPrice,
      notes: m.notes,
      createdAt: m.createdAt,
      totalPaid: totalPaid,
      isCancelled: m.isCancelled, 
    ));
  }
  return entities;
}

  @override
  Future<bool> hasOverlap(int chaletId, DateTime startDate, DateTime endDate) {
    return _localDataSource.hasOverlap(chaletId, startDate, endDate);
  }

  @override
  Future<void> cancelBooking(int bookingId, {required bool refund}) {
    return _localDataSource.cancelBooking(bookingId, refund: refund);
  }
}