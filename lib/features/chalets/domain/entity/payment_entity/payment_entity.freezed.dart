// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PaymentEntity {

 int? get id; int get bookingId; double get amount; DateTime get paidAt; PaymentType get type;
/// Create a copy of PaymentEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PaymentEntityCopyWith<PaymentEntity> get copyWith => _$PaymentEntityCopyWithImpl<PaymentEntity>(this as PaymentEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PaymentEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.bookingId, bookingId) || other.bookingId == bookingId)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.paidAt, paidAt) || other.paidAt == paidAt)&&(identical(other.type, type) || other.type == type));
}


@override
int get hashCode => Object.hash(runtimeType,id,bookingId,amount,paidAt,type);

@override
String toString() {
  return 'PaymentEntity(id: $id, bookingId: $bookingId, amount: $amount, paidAt: $paidAt, type: $type)';
}


}

/// @nodoc
abstract mixin class $PaymentEntityCopyWith<$Res>  {
  factory $PaymentEntityCopyWith(PaymentEntity value, $Res Function(PaymentEntity) _then) = _$PaymentEntityCopyWithImpl;
@useResult
$Res call({
 int? id, int bookingId, double amount, DateTime paidAt, PaymentType type
});




}
/// @nodoc
class _$PaymentEntityCopyWithImpl<$Res>
    implements $PaymentEntityCopyWith<$Res> {
  _$PaymentEntityCopyWithImpl(this._self, this._then);

  final PaymentEntity _self;
  final $Res Function(PaymentEntity) _then;

/// Create a copy of PaymentEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? bookingId = null,Object? amount = null,Object? paidAt = null,Object? type = null,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,bookingId: null == bookingId ? _self.bookingId : bookingId // ignore: cast_nullable_to_non_nullable
as int,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double,paidAt: null == paidAt ? _self.paidAt : paidAt // ignore: cast_nullable_to_non_nullable
as DateTime,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as PaymentType,
  ));
}

}


/// Adds pattern-matching-related methods to [PaymentEntity].
extension PaymentEntityPatterns on PaymentEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PaymentEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PaymentEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PaymentEntity value)  $default,){
final _that = this;
switch (_that) {
case _PaymentEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PaymentEntity value)?  $default,){
final _that = this;
switch (_that) {
case _PaymentEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  int bookingId,  double amount,  DateTime paidAt,  PaymentType type)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PaymentEntity() when $default != null:
return $default(_that.id,_that.bookingId,_that.amount,_that.paidAt,_that.type);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  int bookingId,  double amount,  DateTime paidAt,  PaymentType type)  $default,) {final _that = this;
switch (_that) {
case _PaymentEntity():
return $default(_that.id,_that.bookingId,_that.amount,_that.paidAt,_that.type);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  int bookingId,  double amount,  DateTime paidAt,  PaymentType type)?  $default,) {final _that = this;
switch (_that) {
case _PaymentEntity() when $default != null:
return $default(_that.id,_that.bookingId,_that.amount,_that.paidAt,_that.type);case _:
  return null;

}
}

}

/// @nodoc


class _PaymentEntity implements PaymentEntity {
  const _PaymentEntity({this.id, required this.bookingId, required this.amount, required this.paidAt, required this.type});
  

@override final  int? id;
@override final  int bookingId;
@override final  double amount;
@override final  DateTime paidAt;
@override final  PaymentType type;

/// Create a copy of PaymentEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PaymentEntityCopyWith<_PaymentEntity> get copyWith => __$PaymentEntityCopyWithImpl<_PaymentEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PaymentEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.bookingId, bookingId) || other.bookingId == bookingId)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.paidAt, paidAt) || other.paidAt == paidAt)&&(identical(other.type, type) || other.type == type));
}


@override
int get hashCode => Object.hash(runtimeType,id,bookingId,amount,paidAt,type);

@override
String toString() {
  return 'PaymentEntity(id: $id, bookingId: $bookingId, amount: $amount, paidAt: $paidAt, type: $type)';
}


}

/// @nodoc
abstract mixin class _$PaymentEntityCopyWith<$Res> implements $PaymentEntityCopyWith<$Res> {
  factory _$PaymentEntityCopyWith(_PaymentEntity value, $Res Function(_PaymentEntity) _then) = __$PaymentEntityCopyWithImpl;
@override @useResult
$Res call({
 int? id, int bookingId, double amount, DateTime paidAt, PaymentType type
});




}
/// @nodoc
class __$PaymentEntityCopyWithImpl<$Res>
    implements _$PaymentEntityCopyWith<$Res> {
  __$PaymentEntityCopyWithImpl(this._self, this._then);

  final _PaymentEntity _self;
  final $Res Function(_PaymentEntity) _then;

/// Create a copy of PaymentEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? bookingId = null,Object? amount = null,Object? paidAt = null,Object? type = null,}) {
  return _then(_PaymentEntity(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,bookingId: null == bookingId ? _self.bookingId : bookingId // ignore: cast_nullable_to_non_nullable
as int,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double,paidAt: null == paidAt ? _self.paidAt : paidAt // ignore: cast_nullable_to_non_nullable
as DateTime,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as PaymentType,
  ));
}


}

// dart format on
