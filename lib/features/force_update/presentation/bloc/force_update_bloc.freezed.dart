// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'force_update_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ForceUpdateState {

 ForceUpdateStatus get status; String get storeUrl;
/// Create a copy of ForceUpdateState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ForceUpdateStateCopyWith<ForceUpdateState> get copyWith => _$ForceUpdateStateCopyWithImpl<ForceUpdateState>(this as ForceUpdateState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ForceUpdateState&&(identical(other.status, status) || other.status == status)&&(identical(other.storeUrl, storeUrl) || other.storeUrl == storeUrl));
}


@override
int get hashCode => Object.hash(runtimeType,status,storeUrl);

@override
String toString() {
  return 'ForceUpdateState(status: $status, storeUrl: $storeUrl)';
}


}

/// @nodoc
abstract mixin class $ForceUpdateStateCopyWith<$Res>  {
  factory $ForceUpdateStateCopyWith(ForceUpdateState value, $Res Function(ForceUpdateState) _then) = _$ForceUpdateStateCopyWithImpl;
@useResult
$Res call({
 ForceUpdateStatus status, String storeUrl
});




}
/// @nodoc
class _$ForceUpdateStateCopyWithImpl<$Res>
    implements $ForceUpdateStateCopyWith<$Res> {
  _$ForceUpdateStateCopyWithImpl(this._self, this._then);

  final ForceUpdateState _self;
  final $Res Function(ForceUpdateState) _then;

/// Create a copy of ForceUpdateState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? storeUrl = null,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ForceUpdateStatus,storeUrl: null == storeUrl ? _self.storeUrl : storeUrl // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ForceUpdateState].
extension ForceUpdateStatePatterns on ForceUpdateState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ForceUpdateState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ForceUpdateState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ForceUpdateState value)  $default,){
final _that = this;
switch (_that) {
case _ForceUpdateState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ForceUpdateState value)?  $default,){
final _that = this;
switch (_that) {
case _ForceUpdateState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( ForceUpdateStatus status,  String storeUrl)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ForceUpdateState() when $default != null:
return $default(_that.status,_that.storeUrl);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( ForceUpdateStatus status,  String storeUrl)  $default,) {final _that = this;
switch (_that) {
case _ForceUpdateState():
return $default(_that.status,_that.storeUrl);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( ForceUpdateStatus status,  String storeUrl)?  $default,) {final _that = this;
switch (_that) {
case _ForceUpdateState() when $default != null:
return $default(_that.status,_that.storeUrl);case _:
  return null;

}
}

}

/// @nodoc


class _ForceUpdateState implements ForceUpdateState {
  const _ForceUpdateState({this.status = ForceUpdateStatus.inactive, this.storeUrl = ''});
  

@override@JsonKey() final  ForceUpdateStatus status;
@override@JsonKey() final  String storeUrl;

/// Create a copy of ForceUpdateState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ForceUpdateStateCopyWith<_ForceUpdateState> get copyWith => __$ForceUpdateStateCopyWithImpl<_ForceUpdateState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ForceUpdateState&&(identical(other.status, status) || other.status == status)&&(identical(other.storeUrl, storeUrl) || other.storeUrl == storeUrl));
}


@override
int get hashCode => Object.hash(runtimeType,status,storeUrl);

@override
String toString() {
  return 'ForceUpdateState(status: $status, storeUrl: $storeUrl)';
}


}

/// @nodoc
abstract mixin class _$ForceUpdateStateCopyWith<$Res> implements $ForceUpdateStateCopyWith<$Res> {
  factory _$ForceUpdateStateCopyWith(_ForceUpdateState value, $Res Function(_ForceUpdateState) _then) = __$ForceUpdateStateCopyWithImpl;
@override @useResult
$Res call({
 ForceUpdateStatus status, String storeUrl
});




}
/// @nodoc
class __$ForceUpdateStateCopyWithImpl<$Res>
    implements _$ForceUpdateStateCopyWith<$Res> {
  __$ForceUpdateStateCopyWithImpl(this._self, this._then);

  final _ForceUpdateState _self;
  final $Res Function(_ForceUpdateState) _then;

/// Create a copy of ForceUpdateState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? storeUrl = null,}) {
  return _then(_ForceUpdateState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ForceUpdateStatus,storeUrl: null == storeUrl ? _self.storeUrl : storeUrl // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
