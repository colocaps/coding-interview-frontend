// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'exchange_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ExchangeEntity {
  num get exchangeRate;

  /// Create a copy of ExchangeEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ExchangeEntityCopyWith<ExchangeEntity> get copyWith =>
      _$ExchangeEntityCopyWithImpl<ExchangeEntity>(
          this as ExchangeEntity, _$identity);

  /// Serializes this ExchangeEntity to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ExchangeEntity &&
            (identical(other.exchangeRate, exchangeRate) ||
                other.exchangeRate == exchangeRate));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, exchangeRate);

  @override
  String toString() {
    return 'ExchangeEntity(exchangeRate: $exchangeRate)';
  }
}

/// @nodoc
abstract mixin class $ExchangeEntityCopyWith<$Res> {
  factory $ExchangeEntityCopyWith(
          ExchangeEntity value, $Res Function(ExchangeEntity) _then) =
      _$ExchangeEntityCopyWithImpl;
  @useResult
  $Res call({num exchangeRate});
}

/// @nodoc
class _$ExchangeEntityCopyWithImpl<$Res>
    implements $ExchangeEntityCopyWith<$Res> {
  _$ExchangeEntityCopyWithImpl(this._self, this._then);

  final ExchangeEntity _self;
  final $Res Function(ExchangeEntity) _then;

  /// Create a copy of ExchangeEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? exchangeRate = null,
  }) {
    return _then(_self.copyWith(
      exchangeRate: null == exchangeRate
          ? _self.exchangeRate
          : exchangeRate // ignore: cast_nullable_to_non_nullable
              as num,
    ));
  }
}

/// Adds pattern-matching-related methods to [ExchangeEntity].
extension ExchangeEntityPatterns on ExchangeEntity {
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
    TResult Function(_ExchangeEntity value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ExchangeEntity() when $default != null:
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
    TResult Function(_ExchangeEntity value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ExchangeEntity():
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
    TResult? Function(_ExchangeEntity value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ExchangeEntity() when $default != null:
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
    TResult Function(num exchangeRate)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ExchangeEntity() when $default != null:
        return $default(_that.exchangeRate);
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
    TResult Function(num exchangeRate) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ExchangeEntity():
        return $default(_that.exchangeRate);
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
    TResult? Function(num exchangeRate)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ExchangeEntity() when $default != null:
        return $default(_that.exchangeRate);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _ExchangeEntity implements ExchangeEntity {
  const _ExchangeEntity({required this.exchangeRate});
  factory _ExchangeEntity.fromJson(Map<String, dynamic> json) =>
      _$ExchangeEntityFromJson(json);

  @override
  final num exchangeRate;

  /// Create a copy of ExchangeEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ExchangeEntityCopyWith<_ExchangeEntity> get copyWith =>
      __$ExchangeEntityCopyWithImpl<_ExchangeEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ExchangeEntityToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ExchangeEntity &&
            (identical(other.exchangeRate, exchangeRate) ||
                other.exchangeRate == exchangeRate));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, exchangeRate);

  @override
  String toString() {
    return 'ExchangeEntity(exchangeRate: $exchangeRate)';
  }
}

/// @nodoc
abstract mixin class _$ExchangeEntityCopyWith<$Res>
    implements $ExchangeEntityCopyWith<$Res> {
  factory _$ExchangeEntityCopyWith(
          _ExchangeEntity value, $Res Function(_ExchangeEntity) _then) =
      __$ExchangeEntityCopyWithImpl;
  @override
  @useResult
  $Res call({num exchangeRate});
}

/// @nodoc
class __$ExchangeEntityCopyWithImpl<$Res>
    implements _$ExchangeEntityCopyWith<$Res> {
  __$ExchangeEntityCopyWithImpl(this._self, this._then);

  final _ExchangeEntity _self;
  final $Res Function(_ExchangeEntity) _then;

  /// Create a copy of ExchangeEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? exchangeRate = null,
  }) {
    return _then(_ExchangeEntity(
      exchangeRate: null == exchangeRate
          ? _self.exchangeRate
          : exchangeRate // ignore: cast_nullable_to_non_nullable
              as num,
    ));
  }
}

// dart format on
