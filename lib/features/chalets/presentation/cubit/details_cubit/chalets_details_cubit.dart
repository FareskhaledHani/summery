import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_summer/features/chalets/domain/entity/booking_entity/booking_entity.dart';
import 'package:my_summer/features/chalets/domain/entity/payment_entity/payment_entity.dart';
import 'package:my_summer/features/chalets/domain/repo/chalet_repo.dart';

import '../../../data/models/payment_model.dart';
import 'chalet_details_state.dart';

class ChaletDetailsCubit extends Cubit<ChaletDetailsState> {
  ChaletDetailsCubit(this._repository, this.chaletId)
      : super(const ChaletDetailsState.initial());

  final ChaletRepository _repository;
  final int chaletId;
   Future<bool> isDateRangeAvailable(DateTime start, DateTime end) {
    return _repository.hasOverlap(chaletId, start, end).then((hasOverlap) => !hasOverlap);
  }
 Future<void> addBookingChecked({
    required DateTime startDate,
    required DateTime endDate,
    required double totalPrice,
    String? notes,
    double? depositAmount,
  }) async {
    try {
      final overlap = await _repository.hasOverlap(chaletId, startDate, endDate);
      if (overlap) {
        emit(const ChaletDetailsState.error('هذه الفترة محجوزة بالفعل، اختر تاريخ آخر'));
        return;
      }

      final bookingId = await _repository.addBooking(
        BookingEntity(
          chaletId: chaletId,
          startDate: startDate,
          endDate: endDate,
          totalPrice: totalPrice,
          notes: notes,
          createdAt: DateTime.now(),
        ),
      );

      if (depositAmount != null && depositAmount > 0) {
        await _repository.addPayment(
          PaymentEntity(
            bookingId: bookingId,
            amount: depositAmount,
            paidAt: DateTime.now(),
            type: PaymentType.deposit,
          ),
        );
      }

      await loadBookings();
    } catch (e) {
      emit(ChaletDetailsState.error(e.toString()));
    }
  }
   Future<void> cancelBooking(int bookingId, {required bool refund}) async {
    try {
      await _repository.cancelBooking(bookingId, refund: refund);
      await loadBookings();
    } catch (e) {
      emit(ChaletDetailsState.error(e.toString()));
    }
  }
  Future<void> loadBookings() async {
    emit(const ChaletDetailsState.loading());
    try {
      final bookings = await _repository.getBookingsForChalet(chaletId);
      final total = await _repository.getTotalPaidForChalet(chaletId);
      emit(ChaletDetailsState.loaded(
        bookings: bookings,
        totalPaidForChalet: total,
      ));
    } catch (e) {
      emit(ChaletDetailsState.error(e.toString()));
    }
  }

  Future<void> addBooking({
    required DateTime startDate,
    required DateTime endDate,
    required double totalPrice,
    String? notes,
    double? depositAmount,
  }) async {
    try {
      final bookingId = await _repository.addBooking(
        BookingEntity(
          chaletId: chaletId,
          startDate: startDate,
          endDate: endDate,
          totalPrice: totalPrice,
          notes: notes,
          createdAt: DateTime.now(),
        ),
      );

      if (depositAmount != null && depositAmount > 0) {
        await _repository.addPayment(
          PaymentEntity(
            bookingId: bookingId,
            amount: depositAmount,
            paidAt: DateTime.now(),
            type: PaymentType.deposit,
          ),
        );
      }

      await loadBookings();
    } catch (e) {
      emit(ChaletDetailsState.error(e.toString()));
    }
  }

  Future<void> addPayment({
    required int bookingId,
    required double amount,
    required PaymentType type,
  }) async {
    try {
      await _repository.addPayment(
        PaymentEntity(
          bookingId: bookingId,
          amount: amount,
          paidAt: DateTime.now(),
          type: type,
        ),
      );
      await loadBookings();
    } catch (e) {
      emit(ChaletDetailsState.error(e.toString()));
    }
  }
  
}