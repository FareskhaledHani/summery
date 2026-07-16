import 'package:freezed_annotation/freezed_annotation.dart';

part 'chalet_entity.freezed.dart';

@freezed
abstract class ChaletEntity with _$ChaletEntity {
  const factory ChaletEntity({
    int? id,
    required String name,
    String? subtitle,
    required DateTime createdAt,
  }) = _ChaletEntity;
}