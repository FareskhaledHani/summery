// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chalet_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ChaletEntity {

 int? get id; String get name; String? get subtitle; DateTime get createdAt;
/// Create a copy of ChaletEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChaletEntityCopyWith<ChaletEntity> get copyWith => _$ChaletEntityCopyWithImpl<ChaletEntity>(this as ChaletEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChaletEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.subtitle, subtitle) || other.subtitle == subtitle)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,subtitle,createdAt);

@override
String toString() {
  return 'ChaletEntity(id: $id, name: $name, subtitle: $subtitle, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $ChaletEntityCopyWith<$Res>  {
  factory $ChaletEntityCopyWith(ChaletEntity value, $Res Function(ChaletEntity) _then) = _$ChaletEntityCopyWithImpl;
@useResult
$Res call({
 int? id, String name, String? subtitle, DateTime createdAt
});




}
/// @nodoc
class _$ChaletEntityCopyWithImpl<$Res>
    implements $ChaletEntityCopyWith<$Res> {
  _$ChaletEntityCopyWithImpl(this._self, this._then);

  final ChaletEntity _self;
  final $Res Function(ChaletEntity) _then;

/// Create a copy of ChaletEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? name = null,Object? subtitle = freezed,Object? createdAt = null,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,subtitle: freezed == subtitle ? _self.subtitle : subtitle // ignore: cast_nullable_to_non_nullable
as String?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [ChaletEntity].
extension ChaletEntityPatterns on ChaletEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ChaletEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ChaletEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ChaletEntity value)  $default,){
final _that = this;
switch (_that) {
case _ChaletEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ChaletEntity value)?  $default,){
final _that = this;
switch (_that) {
case _ChaletEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  String name,  String? subtitle,  DateTime createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ChaletEntity() when $default != null:
return $default(_that.id,_that.name,_that.subtitle,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  String name,  String? subtitle,  DateTime createdAt)  $default,) {final _that = this;
switch (_that) {
case _ChaletEntity():
return $default(_that.id,_that.name,_that.subtitle,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  String name,  String? subtitle,  DateTime createdAt)?  $default,) {final _that = this;
switch (_that) {
case _ChaletEntity() when $default != null:
return $default(_that.id,_that.name,_that.subtitle,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc


class _ChaletEntity implements ChaletEntity {
  const _ChaletEntity({this.id, required this.name, this.subtitle, required this.createdAt});
  

@override final  int? id;
@override final  String name;
@override final  String? subtitle;
@override final  DateTime createdAt;

/// Create a copy of ChaletEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChaletEntityCopyWith<_ChaletEntity> get copyWith => __$ChaletEntityCopyWithImpl<_ChaletEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChaletEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.subtitle, subtitle) || other.subtitle == subtitle)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,subtitle,createdAt);

@override
String toString() {
  return 'ChaletEntity(id: $id, name: $name, subtitle: $subtitle, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$ChaletEntityCopyWith<$Res> implements $ChaletEntityCopyWith<$Res> {
  factory _$ChaletEntityCopyWith(_ChaletEntity value, $Res Function(_ChaletEntity) _then) = __$ChaletEntityCopyWithImpl;
@override @useResult
$Res call({
 int? id, String name, String? subtitle, DateTime createdAt
});




}
/// @nodoc
class __$ChaletEntityCopyWithImpl<$Res>
    implements _$ChaletEntityCopyWith<$Res> {
  __$ChaletEntityCopyWithImpl(this._self, this._then);

  final _ChaletEntity _self;
  final $Res Function(_ChaletEntity) _then;

/// Create a copy of ChaletEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? name = null,Object? subtitle = freezed,Object? createdAt = null,}) {
  return _then(_ChaletEntity(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,subtitle: freezed == subtitle ? _self.subtitle : subtitle // ignore: cast_nullable_to_non_nullable
as String?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
