// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'currency_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CurrencyEntity {
  String get currencyId;
  String get currencyName;
  String? get currencyDescription;

  /// Create a copy of CurrencyEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CurrencyEntityCopyWith<CurrencyEntity> get copyWith =>
      _$CurrencyEntityCopyWithImpl<CurrencyEntity>(
          this as CurrencyEntity, _$identity);

  /// Serializes this CurrencyEntity to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CurrencyEntity &&
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
    return 'CurrencyEntity(currencyId: $currencyId, currencyName: $currencyName, currencyDescription: $currencyDescription)';
  }
}

/// @nodoc
abstract mixin class $CurrencyEntityCopyWith<$Res> {
  factory $CurrencyEntityCopyWith(
          CurrencyEntity value, $Res Function(CurrencyEntity) _then) =
      _$CurrencyEntityCopyWithImpl;
  @useResult
  $Res call(
      {String currencyId, String currencyName, String? currencyDescription});
}

/// @nodoc
class _$CurrencyEntityCopyWithImpl<$Res>
    implements $CurrencyEntityCopyWith<$Res> {
  _$CurrencyEntityCopyWithImpl(this._self, this._then);

  final CurrencyEntity _self;
  final $Res Function(CurrencyEntity) _then;

  /// Create a copy of CurrencyEntity
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

/// Adds pattern-matching-related methods to [CurrencyEntity].
extension CurrencyEntityPatterns on CurrencyEntity {
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
    TResult Function(_CurrencyEntity value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CurrencyEntity() when $default != null:
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
    TResult Function(_CurrencyEntity value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CurrencyEntity():
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
    TResult? Function(_CurrencyEntity value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CurrencyEntity() when $default != null:
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
      case _CurrencyEntity() when $default != null:
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
      case _CurrencyEntity():
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
      case _CurrencyEntity() when $default != null:
        return $default(
            _that.currencyId, _that.currencyName, _that.currencyDescription);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _CurrencyEntity implements CurrencyEntity {
  const _CurrencyEntity(
      {required this.currencyId,
      required this.currencyName,
      this.currencyDescription});
  factory _CurrencyEntity.fromJson(Map<String, dynamic> json) =>
      _$CurrencyEntityFromJson(json);

  @override
  final String currencyId;
  @override
  final String currencyName;
  @override
  final String? currencyDescription;

  /// Create a copy of CurrencyEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CurrencyEntityCopyWith<_CurrencyEntity> get copyWith =>
      __$CurrencyEntityCopyWithImpl<_CurrencyEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CurrencyEntityToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CurrencyEntity &&
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
    return 'CurrencyEntity(currencyId: $currencyId, currencyName: $currencyName, currencyDescription: $currencyDescription)';
  }
}

/// @nodoc
abstract mixin class _$CurrencyEntityCopyWith<$Res>
    implements $CurrencyEntityCopyWith<$Res> {
  factory _$CurrencyEntityCopyWith(
          _CurrencyEntity value, $Res Function(_CurrencyEntity) _then) =
      __$CurrencyEntityCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String currencyId, String currencyName, String? currencyDescription});
}

/// @nodoc
class __$CurrencyEntityCopyWithImpl<$Res>
    implements _$CurrencyEntityCopyWith<$Res> {
  __$CurrencyEntityCopyWithImpl(this._self, this._then);

  final _CurrencyEntity _self;
  final $Res Function(_CurrencyEntity) _then;

  /// Create a copy of CurrencyEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? currencyId = null,
    Object? currencyName = null,
    Object? currencyDescription = freezed,
  }) {
    return _then(_CurrencyEntity(
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
