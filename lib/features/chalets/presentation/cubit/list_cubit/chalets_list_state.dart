import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_summer/features/chalets/domain/entity/chalet_entity/chalet_entity.dart';

part 'chalets_list_state.freezed.dart';

@freezed
class ChaletsListState with _$ChaletsListState {
  const factory ChaletsListState.initial() = _Initial;
  const factory ChaletsListState.loading() = _Loading;
  const factory ChaletsListState.loaded({
    required List<ChaletEntity> chalets,
    required double totalPaidAcrossAll,
  }) = _Loaded;
  const factory ChaletsListState.error(String message) = _Error;
}