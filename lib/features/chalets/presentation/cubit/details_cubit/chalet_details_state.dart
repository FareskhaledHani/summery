import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_summer/features/chalets/domain/entity/booking_entity/booking_entity.dart';

part 'chalet_details_state.freezed.dart';

@freezed
class ChaletDetailsState with _$ChaletDetailsState {
  const factory ChaletDetailsState.initial() = _Initial;
  const factory ChaletDetailsState.loading() = _Loading;
  const factory ChaletDetailsState.loaded({
    required List<BookingEntity> bookings,
    required double totalPaidForChalet,
  }) = _Loaded;
  const factory ChaletDetailsState.error(String message) = _Error;
}