// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'maintenance_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MaintenanceState {

 MaintenanceStatus get status;
/// Create a copy of MaintenanceState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MaintenanceStateCopyWith<MaintenanceState> get copyWith => _$MaintenanceStateCopyWithImpl<MaintenanceState>(this as MaintenanceState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MaintenanceState&&(identical(other.status, status) || other.status == status));
}


@override
int get hashCode => Object.hash(runtimeType,status);

@override
String toString() {
  return 'MaintenanceState(status: $status)';
}


}

/// @nodoc
abstract mixin class $MaintenanceStateCopyWith<$Res>  {
  factory $MaintenanceStateCopyWith(MaintenanceState value, $Res Function(MaintenanceState) _then) = _$MaintenanceStateCopyWithImpl;
@useResult
$Res call({
 MaintenanceStatus status
});




}
/// @nodoc
class _$MaintenanceStateCopyWithImpl<$Res>
    implements $MaintenanceStateCopyWith<$Res> {
  _$MaintenanceStateCopyWithImpl(this._self, this._then);

  final MaintenanceState _self;
  final $Res Function(MaintenanceState) _then;

/// Create a copy of MaintenanceState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as MaintenanceStatus,
  ));
}

}


/// Adds pattern-matching-related methods to [MaintenanceState].
extension MaintenanceStatePatterns on MaintenanceState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MaintenanceState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MaintenanceState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MaintenanceState value)  $default,){
final _that = this;
switch (_that) {
case _MaintenanceState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MaintenanceState value)?  $default,){
final _that = this;
switch (_that) {
case _MaintenanceState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( MaintenanceStatus status)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MaintenanceState() when $default != null:
return $default(_that.status);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( MaintenanceStatus status)  $default,) {final _that = this;
switch (_that) {
case _MaintenanceState():
return $default(_that.status);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( MaintenanceStatus status)?  $default,) {final _that = this;
switch (_that) {
case _MaintenanceState() when $default != null:
return $default(_that.status);case _:
  return null;

}
}

}

/// @nodoc


class _MaintenanceState implements MaintenanceState {
  const _MaintenanceState({this.status = MaintenanceStatus.inactive});
  

@override@JsonKey() final  MaintenanceStatus status;

/// Create a copy of MaintenanceState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MaintenanceStateCopyWith<_MaintenanceState> get copyWith => __$MaintenanceStateCopyWithImpl<_MaintenanceState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MaintenanceState&&(identical(other.status, status) || other.status == status));
}


@override
int get hashCode => Object.hash(runtimeType,status);

@override
String toString() {
  return 'MaintenanceState(status: $status)';
}


}

/// @nodoc
abstract mixin class _$MaintenanceStateCopyWith<$Res> implements $MaintenanceStateCopyWith<$Res> {
  factory _$MaintenanceStateCopyWith(_MaintenanceState value, $Res Function(_MaintenanceState) _then) = __$MaintenanceStateCopyWithImpl;
@override @useResult
$Res call({
 MaintenanceStatus status
});




}
/// @nodoc
class __$MaintenanceStateCopyWithImpl<$Res>
    implements _$MaintenanceStateCopyWith<$Res> {
  __$MaintenanceStateCopyWithImpl(this._self, this._then);

  final _MaintenanceState _self;
  final $Res Function(_MaintenanceState) _then;

/// Create a copy of MaintenanceState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,}) {
  return _then(_MaintenanceState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as MaintenanceStatus,
  ));
}


}

// dart format on
