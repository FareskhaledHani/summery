// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'booking_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$BookingEntity {

 int? get id; int get chaletId; DateTime get startDate; DateTime get endDate; double get totalPrice; String? get notes; DateTime get createdAt; double get totalPaid; bool get isCancelled;
/// Create a copy of BookingEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BookingEntityCopyWith<BookingEntity> get copyWith => _$BookingEntityCopyWithImpl<BookingEntity>(this as BookingEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BookingEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.chaletId, chaletId) || other.chaletId == chaletId)&&(identical(other.startDate, startDate) || other.startDate == startDate)&&(identical(other.endDate, endDate) || other.endDate == endDate)&&(identical(other.totalPrice, totalPrice) || other.totalPrice == totalPrice)&&(identical(other.notes, notes) || other.notes == notes)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.totalPaid, totalPaid) || other.totalPaid == totalPaid)&&(identical(other.isCancelled, isCancelled) || other.isCancelled == isCancelled));
}


@override
int get hashCode => Object.hash(runtimeType,id,chaletId,startDate,endDate,totalPrice,notes,createdAt,totalPaid,isCancelled);

@override
String toString() {
  return 'BookingEntity(id: $id, chaletId: $chaletId, startDate: $startDate, endDate: $endDate, totalPrice: $totalPrice, notes: $notes, createdAt: $createdAt, totalPaid: $totalPaid, isCancelled: $isCancelled)';
}


}

/// @nodoc
abstract mixin class $BookingEntityCopyWith<$Res>  {
  factory $BookingEntityCopyWith(BookingEntity value, $Res Function(BookingEntity) _then) = _$BookingEntityCopyWithImpl;
@useResult
$Res call({
 int? id, int chaletId, DateTime startDate, DateTime endDate, double totalPrice, String? notes, DateTime createdAt, double totalPaid, bool isCancelled
});




}
/// @nodoc
class _$BookingEntityCopyWithImpl<$Res>
    implements $BookingEntityCopyWith<$Res> {
  _$BookingEntityCopyWithImpl(this._self, this._then);

  final BookingEntity _self;
  final $Res Function(BookingEntity) _then;

/// Create a copy of BookingEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? chaletId = null,Object? startDate = null,Object? endDate = null,Object? totalPrice = null,Object? notes = freezed,Object? createdAt = null,Object? totalPaid = null,Object? isCancelled = null,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,chaletId: null == chaletId ? _self.chaletId : chaletId // ignore: cast_nullable_to_non_nullable
as int,startDate: null == startDate ? _self.startDate : startDate // ignore: cast_nullable_to_non_nullable
as DateTime,endDate: null == endDate ? _self.endDate : endDate // ignore: cast_nullable_to_non_nullable
as DateTime,totalPrice: null == totalPrice ? _self.totalPrice : totalPrice // ignore: cast_nullable_to_non_nullable
as double,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,totalPaid: null == totalPaid ? _self.totalPaid : totalPaid // ignore: cast_nullable_to_non_nullable
as double,isCancelled: null == isCancelled ? _self.isCancelled : isCancelled // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [BookingEntity].
extension BookingEntityPatterns on BookingEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BookingEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BookingEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BookingEntity value)  $default,){
final _that = this;
switch (_that) {
case _BookingEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BookingEntity value)?  $default,){
final _that = this;
switch (_that) {
case _BookingEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  int chaletId,  DateTime startDate,  DateTime endDate,  double totalPrice,  String? notes,  DateTime createdAt,  double totalPaid,  bool isCancelled)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BookingEntity() when $default != null:
return $default(_that.id,_that.chaletId,_that.startDate,_that.endDate,_that.totalPrice,_that.notes,_that.createdAt,_that.totalPaid,_that.isCancelled);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  int chaletId,  DateTime startDate,  DateTime endDate,  double totalPrice,  String? notes,  DateTime createdAt,  double totalPaid,  bool isCancelled)  $default,) {final _that = this;
switch (_that) {
case _BookingEntity():
return $default(_that.id,_that.chaletId,_that.startDate,_that.endDate,_that.totalPrice,_that.notes,_that.createdAt,_that.totalPaid,_that.isCancelled);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  int chaletId,  DateTime startDate,  DateTime endDate,  double totalPrice,  String? notes,  DateTime createdAt,  double totalPaid,  bool isCancelled)?  $default,) {final _that = this;
switch (_that) {
case _BookingEntity() when $default != null:
return $default(_that.id,_that.chaletId,_that.startDate,_that.endDate,_that.totalPrice,_that.notes,_that.createdAt,_that.totalPaid,_that.isCancelled);case _:
  return null;

}
}

}

/// @nodoc


class _BookingEntity implements BookingEntity {
  const _BookingEntity({this.id, required this.chaletId, required this.startDate, required this.endDate, required this.totalPrice, this.notes, required this.createdAt, this.totalPaid = 0, this.isCancelled = false});
  

@override final  int? id;
@override final  int chaletId;
@override final  DateTime startDate;
@override final  DateTime endDate;
@override final  double totalPrice;
@override final  String? notes;
@override final  DateTime createdAt;
@override@JsonKey() final  double totalPaid;
@override@JsonKey() final  bool isCancelled;

/// Create a copy of BookingEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BookingEntityCopyWith<_BookingEntity> get copyWith => __$BookingEntityCopyWithImpl<_BookingEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BookingEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.chaletId, chaletId) || other.chaletId == chaletId)&&(identical(other.startDate, startDate) || other.startDate == startDate)&&(identical(other.endDate, endDate) || other.endDate == endDate)&&(identical(other.totalPrice, totalPrice) || other.totalPrice == totalPrice)&&(identical(other.notes, notes) || other.notes == notes)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.totalPaid, totalPaid) || other.totalPaid == totalPaid)&&(identical(other.isCancelled, isCancelled) || other.isCancelled == isCancelled));
}


@override
int get hashCode => Object.hash(runtimeType,id,chaletId,startDate,endDate,totalPrice,notes,createdAt,totalPaid,isCancelled);

@override
String toString() {
  return 'BookingEntity(id: $id, chaletId: $chaletId, startDate: $startDate, endDate: $endDate, totalPrice: $totalPrice, notes: $notes, createdAt: $createdAt, totalPaid: $totalPaid, isCancelled: $isCancelled)';
}


}

/// @nodoc
abstract mixin class _$BookingEntityCopyWith<$Res> implements $BookingEntityCopyWith<$Res> {
  factory _$BookingEntityCopyWith(_BookingEntity value, $Res Function(_BookingEntity) _then) = __$BookingEntityCopyWithImpl;
@override @useResult
$Res call({
 int? id, int chaletId, DateTime startDate, DateTime endDate, double totalPrice, String? notes, DateTime createdAt, double totalPaid, bool isCancelled
});




}
/// @nodoc
class __$BookingEntityCopyWithImpl<$Res>
    implements _$BookingEntityCopyWith<$Res> {
  __$BookingEntityCopyWithImpl(this._self, this._then);

  final _BookingEntity _self;
  final $Res Function(_BookingEntity) _then;

/// Create a copy of BookingEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? chaletId = null,Object? startDate = null,Object? endDate = null,Object? totalPrice = null,Object? notes = freezed,Object? createdAt = null,Object? totalPaid = null,Object? isCancelled = null,}) {
  return _then(_BookingEntity(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,chaletId: null == chaletId ? _self.chaletId : chaletId // ignore: cast_nullable_to_non_nullable
as int,startDate: null == startDate ? _self.startDate : startDate // ignore: cast_nullable_to_non_nullable
as DateTime,endDate: null == endDate ? _self.endDate : endDate // ignore: cast_nullable_to_non_nullable
as DateTime,totalPrice: null == totalPrice ? _self.totalPrice : totalPrice // ignore: cast_nullable_to_non_nullable
as double,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,totalPaid: null == totalPaid ? _self.totalPaid : totalPaid // ignore: cast_nullable_to_non_nullable
as double,isCancelled: null == isCancelled ? _self.isCancelled : isCancelled // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
