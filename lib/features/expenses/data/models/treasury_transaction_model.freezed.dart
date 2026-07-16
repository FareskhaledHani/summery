// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'treasury_transaction_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TreasuryTransactionModel {

 int? get id; TreasuryTransactionType? get type; double? get amount; String? get description;@JsonKey(name: 'created_at') DateTime? get createdAt;
/// Create a copy of TreasuryTransactionModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TreasuryTransactionModelCopyWith<TreasuryTransactionModel> get copyWith => _$TreasuryTransactionModelCopyWithImpl<TreasuryTransactionModel>(this as TreasuryTransactionModel, _$identity);

  /// Serializes this TreasuryTransactionModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TreasuryTransactionModel&&(identical(other.id, id) || other.id == id)&&(identical(other.type, type) || other.type == type)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.description, description) || other.description == description)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,type,amount,description,createdAt);

@override
String toString() {
  return 'TreasuryTransactionModel(id: $id, type: $type, amount: $amount, description: $description, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $TreasuryTransactionModelCopyWith<$Res>  {
  factory $TreasuryTransactionModelCopyWith(TreasuryTransactionModel value, $Res Function(TreasuryTransactionModel) _then) = _$TreasuryTransactionModelCopyWithImpl;
@useResult
$Res call({
 int? id, TreasuryTransactionType? type, double? amount, String? description,@JsonKey(name: 'created_at') DateTime? createdAt
});




}
/// @nodoc
class _$TreasuryTransactionModelCopyWithImpl<$Res>
    implements $TreasuryTransactionModelCopyWith<$Res> {
  _$TreasuryTransactionModelCopyWithImpl(this._self, this._then);

  final TreasuryTransactionModel _self;
  final $Res Function(TreasuryTransactionModel) _then;

/// Create a copy of TreasuryTransactionModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? type = freezed,Object? amount = freezed,Object? description = freezed,Object? createdAt = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as TreasuryTransactionType?,amount: freezed == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [TreasuryTransactionModel].
extension TreasuryTransactionModelPatterns on TreasuryTransactionModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TreasuryTransactionModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TreasuryTransactionModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TreasuryTransactionModel value)  $default,){
final _that = this;
switch (_that) {
case _TreasuryTransactionModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TreasuryTransactionModel value)?  $default,){
final _that = this;
switch (_that) {
case _TreasuryTransactionModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  TreasuryTransactionType? type,  double? amount,  String? description, @JsonKey(name: 'created_at')  DateTime? createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TreasuryTransactionModel() when $default != null:
return $default(_that.id,_that.type,_that.amount,_that.description,_that.createdAt);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  TreasuryTransactionType? type,  double? amount,  String? description, @JsonKey(name: 'created_at')  DateTime? createdAt)  $default,) {final _that = this;
switch (_that) {
case _TreasuryTransactionModel():
return $default(_that.id,_that.type,_that.amount,_that.description,_that.createdAt);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  TreasuryTransactionType? type,  double? amount,  String? description, @JsonKey(name: 'created_at')  DateTime? createdAt)?  $default,) {final _that = this;
switch (_that) {
case _TreasuryTransactionModel() when $default != null:
return $default(_that.id,_that.type,_that.amount,_that.description,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TreasuryTransactionModel implements TreasuryTransactionModel {
  const _TreasuryTransactionModel({this.id, this.type, this.amount, this.description, @JsonKey(name: 'created_at') this.createdAt});
  factory _TreasuryTransactionModel.fromJson(Map<String, dynamic> json) => _$TreasuryTransactionModelFromJson(json);

@override final  int? id;
@override final  TreasuryTransactionType? type;
@override final  double? amount;
@override final  String? description;
@override@JsonKey(name: 'created_at') final  DateTime? createdAt;

/// Create a copy of TreasuryTransactionModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TreasuryTransactionModelCopyWith<_TreasuryTransactionModel> get copyWith => __$TreasuryTransactionModelCopyWithImpl<_TreasuryTransactionModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TreasuryTransactionModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TreasuryTransactionModel&&(identical(other.id, id) || other.id == id)&&(identical(other.type, type) || other.type == type)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.description, description) || other.description == description)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,type,amount,description,createdAt);

@override
String toString() {
  return 'TreasuryTransactionModel(id: $id, type: $type, amount: $amount, description: $description, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$TreasuryTransactionModelCopyWith<$Res> implements $TreasuryTransactionModelCopyWith<$Res> {
  factory _$TreasuryTransactionModelCopyWith(_TreasuryTransactionModel value, $Res Function(_TreasuryTransactionModel) _then) = __$TreasuryTransactionModelCopyWithImpl;
@override @useResult
$Res call({
 int? id, TreasuryTransactionType? type, double? amount, String? description,@JsonKey(name: 'created_at') DateTime? createdAt
});




}
/// @nodoc
class __$TreasuryTransactionModelCopyWithImpl<$Res>
    implements _$TreasuryTransactionModelCopyWith<$Res> {
  __$TreasuryTransactionModelCopyWithImpl(this._self, this._then);

  final _TreasuryTransactionModel _self;
  final $Res Function(_TreasuryTransactionModel) _then;

/// Create a copy of TreasuryTransactionModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? type = freezed,Object? amount = freezed,Object? description = freezed,Object? createdAt = freezed,}) {
  return _then(_TreasuryTransactionModel(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as TreasuryTransactionType?,amount: freezed == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
