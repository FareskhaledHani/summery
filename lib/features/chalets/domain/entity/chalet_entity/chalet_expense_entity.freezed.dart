// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chalet_expense_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ChaletExpenseEntity {

 int? get id; int get chaletId; double get amount; String? get description; DateTime get createdAt; bool get isCancelled;
/// Create a copy of ChaletExpenseEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChaletExpenseEntityCopyWith<ChaletExpenseEntity> get copyWith => _$ChaletExpenseEntityCopyWithImpl<ChaletExpenseEntity>(this as ChaletExpenseEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChaletExpenseEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.chaletId, chaletId) || other.chaletId == chaletId)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.description, description) || other.description == description)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.isCancelled, isCancelled) || other.isCancelled == isCancelled));
}


@override
int get hashCode => Object.hash(runtimeType,id,chaletId,amount,description,createdAt,isCancelled);

@override
String toString() {
  return 'ChaletExpenseEntity(id: $id, chaletId: $chaletId, amount: $amount, description: $description, createdAt: $createdAt, isCancelled: $isCancelled)';
}


}

/// @nodoc
abstract mixin class $ChaletExpenseEntityCopyWith<$Res>  {
  factory $ChaletExpenseEntityCopyWith(ChaletExpenseEntity value, $Res Function(ChaletExpenseEntity) _then) = _$ChaletExpenseEntityCopyWithImpl;
@useResult
$Res call({
 int? id, int chaletId, double amount, String? description, DateTime createdAt, bool isCancelled
});




}
/// @nodoc
class _$ChaletExpenseEntityCopyWithImpl<$Res>
    implements $ChaletExpenseEntityCopyWith<$Res> {
  _$ChaletExpenseEntityCopyWithImpl(this._self, this._then);

  final ChaletExpenseEntity _self;
  final $Res Function(ChaletExpenseEntity) _then;

/// Create a copy of ChaletExpenseEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? chaletId = null,Object? amount = null,Object? description = freezed,Object? createdAt = null,Object? isCancelled = null,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,chaletId: null == chaletId ? _self.chaletId : chaletId // ignore: cast_nullable_to_non_nullable
as int,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,isCancelled: null == isCancelled ? _self.isCancelled : isCancelled // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [ChaletExpenseEntity].
extension ChaletExpenseEntityPatterns on ChaletExpenseEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ChaletExpenseEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ChaletExpenseEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ChaletExpenseEntity value)  $default,){
final _that = this;
switch (_that) {
case _ChaletExpenseEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ChaletExpenseEntity value)?  $default,){
final _that = this;
switch (_that) {
case _ChaletExpenseEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  int chaletId,  double amount,  String? description,  DateTime createdAt,  bool isCancelled)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ChaletExpenseEntity() when $default != null:
return $default(_that.id,_that.chaletId,_that.amount,_that.description,_that.createdAt,_that.isCancelled);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  int chaletId,  double amount,  String? description,  DateTime createdAt,  bool isCancelled)  $default,) {final _that = this;
switch (_that) {
case _ChaletExpenseEntity():
return $default(_that.id,_that.chaletId,_that.amount,_that.description,_that.createdAt,_that.isCancelled);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  int chaletId,  double amount,  String? description,  DateTime createdAt,  bool isCancelled)?  $default,) {final _that = this;
switch (_that) {
case _ChaletExpenseEntity() when $default != null:
return $default(_that.id,_that.chaletId,_that.amount,_that.description,_that.createdAt,_that.isCancelled);case _:
  return null;

}
}

}

/// @nodoc


class _ChaletExpenseEntity implements ChaletExpenseEntity {
  const _ChaletExpenseEntity({this.id, required this.chaletId, required this.amount, this.description, required this.createdAt, this.isCancelled = false});
  

@override final  int? id;
@override final  int chaletId;
@override final  double amount;
@override final  String? description;
@override final  DateTime createdAt;
@override@JsonKey() final  bool isCancelled;

/// Create a copy of ChaletExpenseEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChaletExpenseEntityCopyWith<_ChaletExpenseEntity> get copyWith => __$ChaletExpenseEntityCopyWithImpl<_ChaletExpenseEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChaletExpenseEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.chaletId, chaletId) || other.chaletId == chaletId)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.description, description) || other.description == description)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.isCancelled, isCancelled) || other.isCancelled == isCancelled));
}


@override
int get hashCode => Object.hash(runtimeType,id,chaletId,amount,description,createdAt,isCancelled);

@override
String toString() {
  return 'ChaletExpenseEntity(id: $id, chaletId: $chaletId, amount: $amount, description: $description, createdAt: $createdAt, isCancelled: $isCancelled)';
}


}

/// @nodoc
abstract mixin class _$ChaletExpenseEntityCopyWith<$Res> implements $ChaletExpenseEntityCopyWith<$Res> {
  factory _$ChaletExpenseEntityCopyWith(_ChaletExpenseEntity value, $Res Function(_ChaletExpenseEntity) _then) = __$ChaletExpenseEntityCopyWithImpl;
@override @useResult
$Res call({
 int? id, int chaletId, double amount, String? description, DateTime createdAt, bool isCancelled
});




}
/// @nodoc
class __$ChaletExpenseEntityCopyWithImpl<$Res>
    implements _$ChaletExpenseEntityCopyWith<$Res> {
  __$ChaletExpenseEntityCopyWithImpl(this._self, this._then);

  final _ChaletExpenseEntity _self;
  final $Res Function(_ChaletExpenseEntity) _then;

/// Create a copy of ChaletExpenseEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? chaletId = null,Object? amount = null,Object? description = freezed,Object? createdAt = null,Object? isCancelled = null,}) {
  return _then(_ChaletExpenseEntity(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,chaletId: null == chaletId ? _self.chaletId : chaletId // ignore: cast_nullable_to_non_nullable
as int,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,isCancelled: null == isCancelled ? _self.isCancelled : isCancelled // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
