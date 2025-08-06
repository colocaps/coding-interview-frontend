// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'exchange_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ExchangeRequest {
  String get type;
  String get fiatCurrencyId;
  num get amount;
  String get amountCurrencyId;
  String get cryptoCurrencyId;

  /// Create a copy of ExchangeRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ExchangeRequestCopyWith<ExchangeRequest> get copyWith =>
      _$ExchangeRequestCopyWithImpl<ExchangeRequest>(
          this as ExchangeRequest, _$identity);

  /// Serializes this ExchangeRequest to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ExchangeRequest &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.fiatCurrencyId, fiatCurrencyId) ||
                other.fiatCurrencyId == fiatCurrencyId) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.amountCurrencyId, amountCurrencyId) ||
                other.amountCurrencyId == amountCurrencyId) &&
            (identical(other.cryptoCurrencyId, cryptoCurrencyId) ||
                other.cryptoCurrencyId == cryptoCurrencyId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, type, fiatCurrencyId, amount,
      amountCurrencyId, cryptoCurrencyId);

  @override
  String toString() {
    return 'ExchangeRequest(type: $type, fiatCurrencyId: $fiatCurrencyId, amount: $amount, amountCurrencyId: $amountCurrencyId, cryptoCurrencyId: $cryptoCurrencyId)';
  }
}

/// @nodoc
abstract mixin class $ExchangeRequestCopyWith<$Res> {
  factory $ExchangeRequestCopyWith(
          ExchangeRequest value, $Res Function(ExchangeRequest) _then) =
      _$ExchangeRequestCopyWithImpl;
  @useResult
  $Res call(
      {String type,
      String fiatCurrencyId,
      num amount,
      String amountCurrencyId,
      String cryptoCurrencyId});
}

/// @nodoc
class _$ExchangeRequestCopyWithImpl<$Res>
    implements $ExchangeRequestCopyWith<$Res> {
  _$ExchangeRequestCopyWithImpl(this._self, this._then);

  final ExchangeRequest _self;
  final $Res Function(ExchangeRequest) _then;

  /// Create a copy of ExchangeRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? fiatCurrencyId = null,
    Object? amount = null,
    Object? amountCurrencyId = null,
    Object? cryptoCurrencyId = null,
  }) {
    return _then(_self.copyWith(
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      fiatCurrencyId: null == fiatCurrencyId
          ? _self.fiatCurrencyId
          : fiatCurrencyId // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _self.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as num,
      amountCurrencyId: null == amountCurrencyId
          ? _self.amountCurrencyId
          : amountCurrencyId // ignore: cast_nullable_to_non_nullable
              as String,
      cryptoCurrencyId: null == cryptoCurrencyId
          ? _self.cryptoCurrencyId
          : cryptoCurrencyId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [ExchangeRequest].
extension ExchangeRequestPatterns on ExchangeRequest {
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
    TResult Function(_ExchangeRequest value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ExchangeRequest() when $default != null:
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
    TResult Function(_ExchangeRequest value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ExchangeRequest():
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
    TResult? Function(_ExchangeRequest value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ExchangeRequest() when $default != null:
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
    TResult Function(String type, String fiatCurrencyId, num amount,
            String amountCurrencyId, String cryptoCurrencyId)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ExchangeRequest() when $default != null:
        return $default(_that.type, _that.fiatCurrencyId, _that.amount,
            _that.amountCurrencyId, _that.cryptoCurrencyId);
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
    TResult Function(String type, String fiatCurrencyId, num amount,
            String amountCurrencyId, String cryptoCurrencyId)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ExchangeRequest():
        return $default(_that.type, _that.fiatCurrencyId, _that.amount,
            _that.amountCurrencyId, _that.cryptoCurrencyId);
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
    TResult? Function(String type, String fiatCurrencyId, num amount,
            String amountCurrencyId, String cryptoCurrencyId)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ExchangeRequest() when $default != null:
        return $default(_that.type, _that.fiatCurrencyId, _that.amount,
            _that.amountCurrencyId, _that.cryptoCurrencyId);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _ExchangeRequest implements ExchangeRequest {
  const _ExchangeRequest(
      {required this.type,
      required this.fiatCurrencyId,
      required this.amount,
      required this.amountCurrencyId,
      this.cryptoCurrencyId = 'TATUM-TRON-USDT'});
  factory _ExchangeRequest.fromJson(Map<String, dynamic> json) =>
      _$ExchangeRequestFromJson(json);

  @override
  final String type;
  @override
  final String fiatCurrencyId;
  @override
  final num amount;
  @override
  final String amountCurrencyId;
  @override
  @JsonKey()
  final String cryptoCurrencyId;

  /// Create a copy of ExchangeRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ExchangeRequestCopyWith<_ExchangeRequest> get copyWith =>
      __$ExchangeRequestCopyWithImpl<_ExchangeRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ExchangeRequestToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ExchangeRequest &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.fiatCurrencyId, fiatCurrencyId) ||
                other.fiatCurrencyId == fiatCurrencyId) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.amountCurrencyId, amountCurrencyId) ||
                other.amountCurrencyId == amountCurrencyId) &&
            (identical(other.cryptoCurrencyId, cryptoCurrencyId) ||
                other.cryptoCurrencyId == cryptoCurrencyId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, type, fiatCurrencyId, amount,
      amountCurrencyId, cryptoCurrencyId);

  @override
  String toString() {
    return 'ExchangeRequest(type: $type, fiatCurrencyId: $fiatCurrencyId, amount: $amount, amountCurrencyId: $amountCurrencyId, cryptoCurrencyId: $cryptoCurrencyId)';
  }
}

/// @nodoc
abstract mixin class _$ExchangeRequestCopyWith<$Res>
    implements $ExchangeRequestCopyWith<$Res> {
  factory _$ExchangeRequestCopyWith(
          _ExchangeRequest value, $Res Function(_ExchangeRequest) _then) =
      __$ExchangeRequestCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String type,
      String fiatCurrencyId,
      num amount,
      String amountCurrencyId,
      String cryptoCurrencyId});
}

/// @nodoc
class __$ExchangeRequestCopyWithImpl<$Res>
    implements _$ExchangeRequestCopyWith<$Res> {
  __$ExchangeRequestCopyWithImpl(this._self, this._then);

  final _ExchangeRequest _self;
  final $Res Function(_ExchangeRequest) _then;

  /// Create a copy of ExchangeRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? type = null,
    Object? fiatCurrencyId = null,
    Object? amount = null,
    Object? amountCurrencyId = null,
    Object? cryptoCurrencyId = null,
  }) {
    return _then(_ExchangeRequest(
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      fiatCurrencyId: null == fiatCurrencyId
          ? _self.fiatCurrencyId
          : fiatCurrencyId // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _self.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as num,
      amountCurrencyId: null == amountCurrencyId
          ? _self.amountCurrencyId
          : amountCurrencyId // ignore: cast_nullable_to_non_nullable
              as String,
      cryptoCurrencyId: null == cryptoCurrencyId
          ? _self.cryptoCurrencyId
          : cryptoCurrencyId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
