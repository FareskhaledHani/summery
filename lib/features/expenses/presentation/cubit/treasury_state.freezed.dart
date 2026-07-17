// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'treasury_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$TreasuryState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TreasuryState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TreasuryState()';
}


}

/// @nodoc
class $TreasuryStateCopyWith<$Res>  {
$TreasuryStateCopyWith(TreasuryState _, $Res Function(TreasuryState) __);
}


/// Adds pattern-matching-related methods to [TreasuryState].
extension TreasuryStatePatterns on TreasuryState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( TreasuryLoading value)?  loading,TResult Function( TreasuryLoaded value)?  loaded,TResult Function( TreasuryLoadFailure value)?  loadFailure,TResult Function( AddExpenseLoading value)?  addExpenseLoading,TResult Function( AddExpenseSuccess value)?  addExpenseSuccess,TResult Function( AddExpenseFailure value)?  addExpenseFailure,TResult Function( AddExtraBalanceLoading value)?  addExtraBalanceLoading,TResult Function( AddExtraBalanceSuccess value)?  addExtraBalanceSuccess,TResult Function( AddExtraBalanceFailure value)?  addExtraBalanceFailure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case TreasuryLoading() when loading != null:
return loading(_that);case TreasuryLoaded() when loaded != null:
return loaded(_that);case TreasuryLoadFailure() when loadFailure != null:
return loadFailure(_that);case AddExpenseLoading() when addExpenseLoading != null:
return addExpenseLoading(_that);case AddExpenseSuccess() when addExpenseSuccess != null:
return addExpenseSuccess(_that);case AddExpenseFailure() when addExpenseFailure != null:
return addExpenseFailure(_that);case AddExtraBalanceLoading() when addExtraBalanceLoading != null:
return addExtraBalanceLoading(_that);case AddExtraBalanceSuccess() when addExtraBalanceSuccess != null:
return addExtraBalanceSuccess(_that);case AddExtraBalanceFailure() when addExtraBalanceFailure != null:
return addExtraBalanceFailure(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( TreasuryLoading value)  loading,required TResult Function( TreasuryLoaded value)  loaded,required TResult Function( TreasuryLoadFailure value)  loadFailure,required TResult Function( AddExpenseLoading value)  addExpenseLoading,required TResult Function( AddExpenseSuccess value)  addExpenseSuccess,required TResult Function( AddExpenseFailure value)  addExpenseFailure,required TResult Function( AddExtraBalanceLoading value)  addExtraBalanceLoading,required TResult Function( AddExtraBalanceSuccess value)  addExtraBalanceSuccess,required TResult Function( AddExtraBalanceFailure value)  addExtraBalanceFailure,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case TreasuryLoading():
return loading(_that);case TreasuryLoaded():
return loaded(_that);case TreasuryLoadFailure():
return loadFailure(_that);case AddExpenseLoading():
return addExpenseLoading(_that);case AddExpenseSuccess():
return addExpenseSuccess(_that);case AddExpenseFailure():
return addExpenseFailure(_that);case AddExtraBalanceLoading():
return addExtraBalanceLoading(_that);case AddExtraBalanceSuccess():
return addExtraBalanceSuccess(_that);case AddExtraBalanceFailure():
return addExtraBalanceFailure(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( TreasuryLoading value)?  loading,TResult? Function( TreasuryLoaded value)?  loaded,TResult? Function( TreasuryLoadFailure value)?  loadFailure,TResult? Function( AddExpenseLoading value)?  addExpenseLoading,TResult? Function( AddExpenseSuccess value)?  addExpenseSuccess,TResult? Function( AddExpenseFailure value)?  addExpenseFailure,TResult? Function( AddExtraBalanceLoading value)?  addExtraBalanceLoading,TResult? Function( AddExtraBalanceSuccess value)?  addExtraBalanceSuccess,TResult? Function( AddExtraBalanceFailure value)?  addExtraBalanceFailure,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case TreasuryLoading() when loading != null:
return loading(_that);case TreasuryLoaded() when loaded != null:
return loaded(_that);case TreasuryLoadFailure() when loadFailure != null:
return loadFailure(_that);case AddExpenseLoading() when addExpenseLoading != null:
return addExpenseLoading(_that);case AddExpenseSuccess() when addExpenseSuccess != null:
return addExpenseSuccess(_that);case AddExpenseFailure() when addExpenseFailure != null:
return addExpenseFailure(_that);case AddExtraBalanceLoading() when addExtraBalanceLoading != null:
return addExtraBalanceLoading(_that);case AddExtraBalanceSuccess() when addExtraBalanceSuccess != null:
return addExtraBalanceSuccess(_that);case AddExtraBalanceFailure() when addExtraBalanceFailure != null:
return addExtraBalanceFailure(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( double total,  List<TreasuryHistoryItem> history,  int year)?  loaded,TResult Function( Failure failure)?  loadFailure,TResult Function()?  addExpenseLoading,TResult Function()?  addExpenseSuccess,TResult Function( Failure failure)?  addExpenseFailure,TResult Function()?  addExtraBalanceLoading,TResult Function()?  addExtraBalanceSuccess,TResult Function( Failure failure)?  addExtraBalanceFailure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case TreasuryLoading() when loading != null:
return loading();case TreasuryLoaded() when loaded != null:
return loaded(_that.total,_that.history,_that.year);case TreasuryLoadFailure() when loadFailure != null:
return loadFailure(_that.failure);case AddExpenseLoading() when addExpenseLoading != null:
return addExpenseLoading();case AddExpenseSuccess() when addExpenseSuccess != null:
return addExpenseSuccess();case AddExpenseFailure() when addExpenseFailure != null:
return addExpenseFailure(_that.failure);case AddExtraBalanceLoading() when addExtraBalanceLoading != null:
return addExtraBalanceLoading();case AddExtraBalanceSuccess() when addExtraBalanceSuccess != null:
return addExtraBalanceSuccess();case AddExtraBalanceFailure() when addExtraBalanceFailure != null:
return addExtraBalanceFailure(_that.failure);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( double total,  List<TreasuryHistoryItem> history,  int year)  loaded,required TResult Function( Failure failure)  loadFailure,required TResult Function()  addExpenseLoading,required TResult Function()  addExpenseSuccess,required TResult Function( Failure failure)  addExpenseFailure,required TResult Function()  addExtraBalanceLoading,required TResult Function()  addExtraBalanceSuccess,required TResult Function( Failure failure)  addExtraBalanceFailure,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case TreasuryLoading():
return loading();case TreasuryLoaded():
return loaded(_that.total,_that.history,_that.year);case TreasuryLoadFailure():
return loadFailure(_that.failure);case AddExpenseLoading():
return addExpenseLoading();case AddExpenseSuccess():
return addExpenseSuccess();case AddExpenseFailure():
return addExpenseFailure(_that.failure);case AddExtraBalanceLoading():
return addExtraBalanceLoading();case AddExtraBalanceSuccess():
return addExtraBalanceSuccess();case AddExtraBalanceFailure():
return addExtraBalanceFailure(_that.failure);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( double total,  List<TreasuryHistoryItem> history,  int year)?  loaded,TResult? Function( Failure failure)?  loadFailure,TResult? Function()?  addExpenseLoading,TResult? Function()?  addExpenseSuccess,TResult? Function( Failure failure)?  addExpenseFailure,TResult? Function()?  addExtraBalanceLoading,TResult? Function()?  addExtraBalanceSuccess,TResult? Function( Failure failure)?  addExtraBalanceFailure,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case TreasuryLoading() when loading != null:
return loading();case TreasuryLoaded() when loaded != null:
return loaded(_that.total,_that.history,_that.year);case TreasuryLoadFailure() when loadFailure != null:
return loadFailure(_that.failure);case AddExpenseLoading() when addExpenseLoading != null:
return addExpenseLoading();case AddExpenseSuccess() when addExpenseSuccess != null:
return addExpenseSuccess();case AddExpenseFailure() when addExpenseFailure != null:
return addExpenseFailure(_that.failure);case AddExtraBalanceLoading() when addExtraBalanceLoading != null:
return addExtraBalanceLoading();case AddExtraBalanceSuccess() when addExtraBalanceSuccess != null:
return addExtraBalanceSuccess();case AddExtraBalanceFailure() when addExtraBalanceFailure != null:
return addExtraBalanceFailure(_that.failure);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements TreasuryState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TreasuryState.initial()';
}


}




/// @nodoc


class TreasuryLoading implements TreasuryState {
  const TreasuryLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TreasuryLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TreasuryState.loading()';
}


}




/// @nodoc


class TreasuryLoaded implements TreasuryState {
  const TreasuryLoaded({required this.total, required final  List<TreasuryHistoryItem> history, required this.year}): _history = history;
  

 final  double total;
 final  List<TreasuryHistoryItem> _history;
 List<TreasuryHistoryItem> get history {
  if (_history is EqualUnmodifiableListView) return _history;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_history);
}

 final  int year;

/// Create a copy of TreasuryState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TreasuryLoadedCopyWith<TreasuryLoaded> get copyWith => _$TreasuryLoadedCopyWithImpl<TreasuryLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TreasuryLoaded&&(identical(other.total, total) || other.total == total)&&const DeepCollectionEquality().equals(other._history, _history)&&(identical(other.year, year) || other.year == year));
}


@override
int get hashCode => Object.hash(runtimeType,total,const DeepCollectionEquality().hash(_history),year);

@override
String toString() {
  return 'TreasuryState.loaded(total: $total, history: $history, year: $year)';
}


}

/// @nodoc
abstract mixin class $TreasuryLoadedCopyWith<$Res> implements $TreasuryStateCopyWith<$Res> {
  factory $TreasuryLoadedCopyWith(TreasuryLoaded value, $Res Function(TreasuryLoaded) _then) = _$TreasuryLoadedCopyWithImpl;
@useResult
$Res call({
 double total, List<TreasuryHistoryItem> history, int year
});




}
/// @nodoc
class _$TreasuryLoadedCopyWithImpl<$Res>
    implements $TreasuryLoadedCopyWith<$Res> {
  _$TreasuryLoadedCopyWithImpl(this._self, this._then);

  final TreasuryLoaded _self;
  final $Res Function(TreasuryLoaded) _then;

/// Create a copy of TreasuryState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? total = null,Object? history = null,Object? year = null,}) {
  return _then(TreasuryLoaded(
total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as double,history: null == history ? _self._history : history // ignore: cast_nullable_to_non_nullable
as List<TreasuryHistoryItem>,year: null == year ? _self.year : year // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class TreasuryLoadFailure implements TreasuryState {
  const TreasuryLoadFailure({required this.failure});
  

 final  Failure failure;

/// Create a copy of TreasuryState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TreasuryLoadFailureCopyWith<TreasuryLoadFailure> get copyWith => _$TreasuryLoadFailureCopyWithImpl<TreasuryLoadFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TreasuryLoadFailure&&(identical(other.failure, failure) || other.failure == failure));
}


@override
int get hashCode => Object.hash(runtimeType,failure);

@override
String toString() {
  return 'TreasuryState.loadFailure(failure: $failure)';
}


}

/// @nodoc
abstract mixin class $TreasuryLoadFailureCopyWith<$Res> implements $TreasuryStateCopyWith<$Res> {
  factory $TreasuryLoadFailureCopyWith(TreasuryLoadFailure value, $Res Function(TreasuryLoadFailure) _then) = _$TreasuryLoadFailureCopyWithImpl;
@useResult
$Res call({
 Failure failure
});




}
/// @nodoc
class _$TreasuryLoadFailureCopyWithImpl<$Res>
    implements $TreasuryLoadFailureCopyWith<$Res> {
  _$TreasuryLoadFailureCopyWithImpl(this._self, this._then);

  final TreasuryLoadFailure _self;
  final $Res Function(TreasuryLoadFailure) _then;

/// Create a copy of TreasuryState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? failure = null,}) {
  return _then(TreasuryLoadFailure(
failure: null == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as Failure,
  ));
}


}

/// @nodoc


class AddExpenseLoading implements TreasuryState {
  const AddExpenseLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddExpenseLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TreasuryState.addExpenseLoading()';
}


}




/// @nodoc


class AddExpenseSuccess implements TreasuryState {
  const AddExpenseSuccess();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddExpenseSuccess);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TreasuryState.addExpenseSuccess()';
}


}




/// @nodoc


class AddExpenseFailure implements TreasuryState {
  const AddExpenseFailure({required this.failure});
  

 final  Failure failure;

/// Create a copy of TreasuryState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddExpenseFailureCopyWith<AddExpenseFailure> get copyWith => _$AddExpenseFailureCopyWithImpl<AddExpenseFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddExpenseFailure&&(identical(other.failure, failure) || other.failure == failure));
}


@override
int get hashCode => Object.hash(runtimeType,failure);

@override
String toString() {
  return 'TreasuryState.addExpenseFailure(failure: $failure)';
}


}

/// @nodoc
abstract mixin class $AddExpenseFailureCopyWith<$Res> implements $TreasuryStateCopyWith<$Res> {
  factory $AddExpenseFailureCopyWith(AddExpenseFailure value, $Res Function(AddExpenseFailure) _then) = _$AddExpenseFailureCopyWithImpl;
@useResult
$Res call({
 Failure failure
});




}
/// @nodoc
class _$AddExpenseFailureCopyWithImpl<$Res>
    implements $AddExpenseFailureCopyWith<$Res> {
  _$AddExpenseFailureCopyWithImpl(this._self, this._then);

  final AddExpenseFailure _self;
  final $Res Function(AddExpenseFailure) _then;

/// Create a copy of TreasuryState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? failure = null,}) {
  return _then(AddExpenseFailure(
failure: null == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as Failure,
  ));
}


}

/// @nodoc


class AddExtraBalanceLoading implements TreasuryState {
  const AddExtraBalanceLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddExtraBalanceLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TreasuryState.addExtraBalanceLoading()';
}


}




/// @nodoc


class AddExtraBalanceSuccess implements TreasuryState {
  const AddExtraBalanceSuccess();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddExtraBalanceSuccess);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TreasuryState.addExtraBalanceSuccess()';
}


}




/// @nodoc


class AddExtraBalanceFailure implements TreasuryState {
  const AddExtraBalanceFailure({required this.failure});
  

 final  Failure failure;

/// Create a copy of TreasuryState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddExtraBalanceFailureCopyWith<AddExtraBalanceFailure> get copyWith => _$AddExtraBalanceFailureCopyWithImpl<AddExtraBalanceFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddExtraBalanceFailure&&(identical(other.failure, failure) || other.failure == failure));
}


@override
int get hashCode => Object.hash(runtimeType,failure);

@override
String toString() {
  return 'TreasuryState.addExtraBalanceFailure(failure: $failure)';
}


}

/// @nodoc
abstract mixin class $AddExtraBalanceFailureCopyWith<$Res> implements $TreasuryStateCopyWith<$Res> {
  factory $AddExtraBalanceFailureCopyWith(AddExtraBalanceFailure value, $Res Function(AddExtraBalanceFailure) _then) = _$AddExtraBalanceFailureCopyWithImpl;
@useResult
$Res call({
 Failure failure
});




}
/// @nodoc
class _$AddExtraBalanceFailureCopyWithImpl<$Res>
    implements $AddExtraBalanceFailureCopyWith<$Res> {
  _$AddExtraBalanceFailureCopyWithImpl(this._self, this._then);

  final AddExtraBalanceFailure _self;
  final $Res Function(AddExtraBalanceFailure) _then;

/// Create a copy of TreasuryState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? failure = null,}) {
  return _then(AddExtraBalanceFailure(
failure: null == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as Failure,
  ));
}


}

// dart format on
