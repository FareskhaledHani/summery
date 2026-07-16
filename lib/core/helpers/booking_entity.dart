// import 'package:my_summer/features/chalets/domain/entity/booking_entity/booking_entity.dart';


// class BookingCalendarHelper {
//   static BookingEntity? bookingForDay(
//     List<BookingEntity> bookings,
//     DateTime day,
//   ) {
//     final normalizedDay = DateTime(day.year, day.month, day.day);
//     for (final booking in bookings) {
//       final start = DateTime(
//         booking.startDate.year,
//         booking.startDate.month,
//         booking.startDate.day,
//       );
//       final end = DateTime(
//         booking.endDate.year,
//         booking.endDate.month,
//         booking.endDate.day,
//       );
//       if (!normalizedDay.isBefore(start) && !normalizedDay.isAfter(end)) {
//         return booking;
//       }
//     }
//     return null;
//   }
// }