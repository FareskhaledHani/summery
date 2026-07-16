// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'treasury_transaction_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TreasuryTransactionModel _$TreasuryTransactionModelFromJson(
  Map<String, dynamic> json,
) => _TreasuryTransactionModel(
  id: (json['id'] as num?)?.toInt(),
  type: $enumDecodeNullable(_$TreasuryTransactionTypeEnumMap, json['type']),
  amount: (json['amount'] as num?)?.toDouble(),
  description: json['description'] as String?,
  createdAt: json['created_at'] == null
      ? null
      : DateTime.parse(json['created_at'] as String),
);

Map<String, dynamic> _$TreasuryTransactionModelToJson(
  _TreasuryTransactionModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'type': _$TreasuryTransactionTypeEnumMap[instance.type],
  'amount': instance.amount,
  'description': instance.description,
  'created_at': instance.createdAt?.toIso8601String(),
};

const _$TreasuryTransactionTypeEnumMap = {
  TreasuryTransactionType.deposit: 'deposit',
  TreasuryTransactionType.withdrawal: 'withdrawal',
};
