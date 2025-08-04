// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'currency_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CurrencyResponse {
  String get currencyId;
  String get currencyName;
  String? get currencyDescription;

  /// Create a copy of CurrencyResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CurrencyResponseCopyWith<CurrencyResponse> get copyWith =>
      _$CurrencyResponseCopyWithImpl<CurrencyResponse>(
          this as CurrencyResponse, _$identity);

  /// Serializes this CurrencyResponse to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CurrencyResponse &&
            (identical(other.currencyId, currencyId) ||
                other.currencyId == currencyId) &&
            (identical(other.currencyName, currencyName) ||
                other.currencyName == currencyName) &&
            (identical(other.currencyDescription, currencyDescription) ||
                other.currencyDescription == currencyDescription));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, currencyId, currencyName, currencyDescription);

  @override
  String toString() {
    return 'CurrencyResponse(currencyId: $currencyId, currencyName: $currencyName, currencyDescription: $currencyDescription)';
  }
}

/// @nodoc
abstract mixin class $CurrencyResponseCopyWith<$Res> {
  factory $CurrencyResponseCopyWith(
          CurrencyResponse value, $Res Function(CurrencyResponse) _then) =
      _$CurrencyResponseCopyWithImpl;
  @useResult
  $Res call(
      {String currencyId, String currencyName, String? currencyDescription});
}

/// @nodoc
class _$CurrencyResponseCopyWithImpl<$Res>
    implements $CurrencyResponseCopyWith<$Res> {
  _$CurrencyResponseCopyWithImpl(this._self, this._then);

  final CurrencyResponse _self;
  final $Res Function(CurrencyResponse) _then;

  /// Create a copy of CurrencyResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currencyId = null,
    Object? currencyName = null,
    Object? currencyDescription = freezed,
  }) {
    return _then(_self.copyWith(
      currencyId: null == currencyId
          ? _self.currencyId
          : currencyId // ignore: cast_nullable_to_non_nullable
              as String,
      currencyName: null == currencyName
          ? _self.currencyName
          : currencyName // ignore: cast_nullable_to_non_nullable
              as String,
      currencyDescription: freezed == currencyDescription
          ? _self.currencyDescription
          : currencyDescription // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [CurrencyResponse].
extension CurrencyResponsePatterns on CurrencyResponse {
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

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_CurrencyResponse value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CurrencyResponse() when $default != null:
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_CurrencyResponse value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CurrencyResponse():
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_CurrencyResponse value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CurrencyResponse() when $default != null:
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String currencyId, String currencyName,
            String? currencyDescription)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CurrencyResponse() when $default != null:
        return $default(
            _that.currencyId, _that.currencyName, _that.currencyDescription);
      case _:
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

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            String currencyId, String currencyName, String? currencyDescription)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CurrencyResponse():
        return $default(
            _that.currencyId, _that.currencyName, _that.currencyDescription);
      case _:
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

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String currencyId, String currencyName,
            String? currencyDescription)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CurrencyResponse() when $default != null:
        return $default(
            _that.currencyId, _that.currencyName, _that.currencyDescription);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _CurrencyResponse implements CurrencyResponse {
  const _CurrencyResponse(
      {required this.currencyId,
      required this.currencyName,
      this.currencyDescription});
  factory _CurrencyResponse.fromJson(Map<String, dynamic> json) =>
      _$CurrencyResponseFromJson(json);

  @override
  final String currencyId;
  @override
  final String currencyName;
  @override
  final String? currencyDescription;

  /// Create a copy of CurrencyResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CurrencyResponseCopyWith<_CurrencyResponse> get copyWith =>
      __$CurrencyResponseCopyWithImpl<_CurrencyResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CurrencyResponseToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CurrencyResponse &&
            (identical(other.currencyId, currencyId) ||
                other.currencyId == currencyId) &&
            (identical(other.currencyName, currencyName) ||
                other.currencyName == currencyName) &&
            (identical(other.currencyDescription, currencyDescription) ||
                other.currencyDescription == currencyDescription));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, currencyId, currencyName, currencyDescription);

  @override
  String toString() {
    return 'CurrencyResponse(currencyId: $currencyId, currencyName: $currencyName, currencyDescription: $currencyDescription)';
  }
}

/// @nodoc
abstract mixin class _$CurrencyResponseCopyWith<$Res>
    implements $CurrencyResponseCopyWith<$Res> {
  factory _$CurrencyResponseCopyWith(
          _CurrencyResponse value, $Res Function(_CurrencyResponse) _then) =
      __$CurrencyResponseCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String currencyId, String currencyName, String? currencyDescription});
}

/// @nodoc
class __$CurrencyResponseCopyWithImpl<$Res>
    implements _$CurrencyResponseCopyWith<$Res> {
  __$CurrencyResponseCopyWithImpl(this._self, this._then);

  final _CurrencyResponse _self;
  final $Res Function(_CurrencyResponse) _then;

  /// Create a copy of CurrencyResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? currencyId = null,
    Object? currencyName = null,
    Object? currencyDescription = freezed,
  }) {
    return _then(_CurrencyResponse(
      currencyId: null == currencyId
          ? _self.currencyId
          : currencyId // ignore: cast_nullable_to_non_nullable
              as String,
      currencyName: null == currencyName
          ? _self.currencyName
          : currencyName // ignore: cast_nullable_to_non_nullable
              as String,
      currencyDescription: freezed == currencyDescription
          ? _self.currencyDescription
          : currencyDescription // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
