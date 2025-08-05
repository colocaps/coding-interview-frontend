// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'exchange_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ExchangeResponse {
  ExchangeData get data;

  /// Create a copy of ExchangeResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ExchangeResponseCopyWith<ExchangeResponse> get copyWith =>
      _$ExchangeResponseCopyWithImpl<ExchangeResponse>(
          this as ExchangeResponse, _$identity);

  /// Serializes this ExchangeResponse to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ExchangeResponse &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  @override
  String toString() {
    return 'ExchangeResponse(data: $data)';
  }
}

/// @nodoc
abstract mixin class $ExchangeResponseCopyWith<$Res> {
  factory $ExchangeResponseCopyWith(
          ExchangeResponse value, $Res Function(ExchangeResponse) _then) =
      _$ExchangeResponseCopyWithImpl;
  @useResult
  $Res call({ExchangeData data});

  $ExchangeDataCopyWith<$Res> get data;
}

/// @nodoc
class _$ExchangeResponseCopyWithImpl<$Res>
    implements $ExchangeResponseCopyWith<$Res> {
  _$ExchangeResponseCopyWithImpl(this._self, this._then);

  final ExchangeResponse _self;
  final $Res Function(ExchangeResponse) _then;

  /// Create a copy of ExchangeResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_self.copyWith(
      data: null == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as ExchangeData,
    ));
  }

  /// Create a copy of ExchangeResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ExchangeDataCopyWith<$Res> get data {
    return $ExchangeDataCopyWith<$Res>(_self.data, (value) {
      return _then(_self.copyWith(data: value));
    });
  }
}

/// Adds pattern-matching-related methods to [ExchangeResponse].
extension ExchangeResponsePatterns on ExchangeResponse {
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
    TResult Function(_ExchangeResponse value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ExchangeResponse() when $default != null:
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
    TResult Function(_ExchangeResponse value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ExchangeResponse():
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
    TResult? Function(_ExchangeResponse value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ExchangeResponse() when $default != null:
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
    TResult Function(ExchangeData data)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ExchangeResponse() when $default != null:
        return $default(_that.data);
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
    TResult Function(ExchangeData data) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ExchangeResponse():
        return $default(_that.data);
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
    TResult? Function(ExchangeData data)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ExchangeResponse() when $default != null:
        return $default(_that.data);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _ExchangeResponse implements ExchangeResponse {
  const _ExchangeResponse({required this.data});
  factory _ExchangeResponse.fromJson(Map<String, dynamic> json) =>
      _$ExchangeResponseFromJson(json);

  @override
  final ExchangeData data;

  /// Create a copy of ExchangeResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ExchangeResponseCopyWith<_ExchangeResponse> get copyWith =>
      __$ExchangeResponseCopyWithImpl<_ExchangeResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ExchangeResponseToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ExchangeResponse &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  @override
  String toString() {
    return 'ExchangeResponse(data: $data)';
  }
}

/// @nodoc
abstract mixin class _$ExchangeResponseCopyWith<$Res>
    implements $ExchangeResponseCopyWith<$Res> {
  factory _$ExchangeResponseCopyWith(
          _ExchangeResponse value, $Res Function(_ExchangeResponse) _then) =
      __$ExchangeResponseCopyWithImpl;
  @override
  @useResult
  $Res call({ExchangeData data});

  @override
  $ExchangeDataCopyWith<$Res> get data;
}

/// @nodoc
class __$ExchangeResponseCopyWithImpl<$Res>
    implements _$ExchangeResponseCopyWith<$Res> {
  __$ExchangeResponseCopyWithImpl(this._self, this._then);

  final _ExchangeResponse _self;
  final $Res Function(_ExchangeResponse) _then;

  /// Create a copy of ExchangeResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? data = null,
  }) {
    return _then(_ExchangeResponse(
      data: null == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as ExchangeData,
    ));
  }

  /// Create a copy of ExchangeResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ExchangeDataCopyWith<$Res> get data {
    return $ExchangeDataCopyWith<$Res>(_self.data, (value) {
      return _then(_self.copyWith(data: value));
    });
  }
}

/// @nodoc
mixin _$ExchangeData {
  CurrencyPrice get byPrice;

  /// Create a copy of ExchangeData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ExchangeDataCopyWith<ExchangeData> get copyWith =>
      _$ExchangeDataCopyWithImpl<ExchangeData>(
          this as ExchangeData, _$identity);

  /// Serializes this ExchangeData to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ExchangeData &&
            (identical(other.byPrice, byPrice) || other.byPrice == byPrice));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, byPrice);

  @override
  String toString() {
    return 'ExchangeData(byPrice: $byPrice)';
  }
}

/// @nodoc
abstract mixin class $ExchangeDataCopyWith<$Res> {
  factory $ExchangeDataCopyWith(
          ExchangeData value, $Res Function(ExchangeData) _then) =
      _$ExchangeDataCopyWithImpl;
  @useResult
  $Res call({CurrencyPrice byPrice});

  $CurrencyPriceCopyWith<$Res> get byPrice;
}

/// @nodoc
class _$ExchangeDataCopyWithImpl<$Res> implements $ExchangeDataCopyWith<$Res> {
  _$ExchangeDataCopyWithImpl(this._self, this._then);

  final ExchangeData _self;
  final $Res Function(ExchangeData) _then;

  /// Create a copy of ExchangeData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? byPrice = null,
  }) {
    return _then(_self.copyWith(
      byPrice: null == byPrice
          ? _self.byPrice
          : byPrice // ignore: cast_nullable_to_non_nullable
              as CurrencyPrice,
    ));
  }

  /// Create a copy of ExchangeData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CurrencyPriceCopyWith<$Res> get byPrice {
    return $CurrencyPriceCopyWith<$Res>(_self.byPrice, (value) {
      return _then(_self.copyWith(byPrice: value));
    });
  }
}

/// Adds pattern-matching-related methods to [ExchangeData].
extension ExchangeDataPatterns on ExchangeData {
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
    TResult Function(_ExchangeData value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ExchangeData() when $default != null:
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
    TResult Function(_ExchangeData value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ExchangeData():
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
    TResult? Function(_ExchangeData value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ExchangeData() when $default != null:
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
    TResult Function(CurrencyPrice byPrice)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ExchangeData() when $default != null:
        return $default(_that.byPrice);
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
    TResult Function(CurrencyPrice byPrice) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ExchangeData():
        return $default(_that.byPrice);
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
    TResult? Function(CurrencyPrice byPrice)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ExchangeData() when $default != null:
        return $default(_that.byPrice);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _ExchangeData implements ExchangeData {
  const _ExchangeData({required this.byPrice});
  factory _ExchangeData.fromJson(Map<String, dynamic> json) =>
      _$ExchangeDataFromJson(json);

  @override
  final CurrencyPrice byPrice;

  /// Create a copy of ExchangeData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ExchangeDataCopyWith<_ExchangeData> get copyWith =>
      __$ExchangeDataCopyWithImpl<_ExchangeData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ExchangeDataToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ExchangeData &&
            (identical(other.byPrice, byPrice) || other.byPrice == byPrice));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, byPrice);

  @override
  String toString() {
    return 'ExchangeData(byPrice: $byPrice)';
  }
}

/// @nodoc
abstract mixin class _$ExchangeDataCopyWith<$Res>
    implements $ExchangeDataCopyWith<$Res> {
  factory _$ExchangeDataCopyWith(
          _ExchangeData value, $Res Function(_ExchangeData) _then) =
      __$ExchangeDataCopyWithImpl;
  @override
  @useResult
  $Res call({CurrencyPrice byPrice});

  @override
  $CurrencyPriceCopyWith<$Res> get byPrice;
}

/// @nodoc
class __$ExchangeDataCopyWithImpl<$Res>
    implements _$ExchangeDataCopyWith<$Res> {
  __$ExchangeDataCopyWithImpl(this._self, this._then);

  final _ExchangeData _self;
  final $Res Function(_ExchangeData) _then;

  /// Create a copy of ExchangeData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? byPrice = null,
  }) {
    return _then(_ExchangeData(
      byPrice: null == byPrice
          ? _self.byPrice
          : byPrice // ignore: cast_nullable_to_non_nullable
              as CurrencyPrice,
    ));
  }

  /// Create a copy of ExchangeData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CurrencyPriceCopyWith<$Res> get byPrice {
    return $CurrencyPriceCopyWith<$Res>(_self.byPrice, (value) {
      return _then(_self.copyWith(byPrice: value));
    });
  }
}

/// @nodoc
mixin _$CurrencyPrice {
  num get fiatToCryptoExchangeRate;

  /// Create a copy of CurrencyPrice
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CurrencyPriceCopyWith<CurrencyPrice> get copyWith =>
      _$CurrencyPriceCopyWithImpl<CurrencyPrice>(
          this as CurrencyPrice, _$identity);

  /// Serializes this CurrencyPrice to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CurrencyPrice &&
            (identical(
                    other.fiatToCryptoExchangeRate, fiatToCryptoExchangeRate) ||
                other.fiatToCryptoExchangeRate == fiatToCryptoExchangeRate));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, fiatToCryptoExchangeRate);

  @override
  String toString() {
    return 'CurrencyPrice(fiatToCryptoExchangeRate: $fiatToCryptoExchangeRate)';
  }
}

/// @nodoc
abstract mixin class $CurrencyPriceCopyWith<$Res> {
  factory $CurrencyPriceCopyWith(
          CurrencyPrice value, $Res Function(CurrencyPrice) _then) =
      _$CurrencyPriceCopyWithImpl;
  @useResult
  $Res call({num fiatToCryptoExchangeRate});
}

/// @nodoc
class _$CurrencyPriceCopyWithImpl<$Res>
    implements $CurrencyPriceCopyWith<$Res> {
  _$CurrencyPriceCopyWithImpl(this._self, this._then);

  final CurrencyPrice _self;
  final $Res Function(CurrencyPrice) _then;

  /// Create a copy of CurrencyPrice
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fiatToCryptoExchangeRate = null,
  }) {
    return _then(_self.copyWith(
      fiatToCryptoExchangeRate: null == fiatToCryptoExchangeRate
          ? _self.fiatToCryptoExchangeRate
          : fiatToCryptoExchangeRate // ignore: cast_nullable_to_non_nullable
              as num,
    ));
  }
}

/// Adds pattern-matching-related methods to [CurrencyPrice].
extension CurrencyPricePatterns on CurrencyPrice {
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
    TResult Function(_CurrencyPrice value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CurrencyPrice() when $default != null:
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
    TResult Function(_CurrencyPrice value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CurrencyPrice():
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
    TResult? Function(_CurrencyPrice value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CurrencyPrice() when $default != null:
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
    TResult Function(num fiatToCryptoExchangeRate)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CurrencyPrice() when $default != null:
        return $default(_that.fiatToCryptoExchangeRate);
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
    TResult Function(num fiatToCryptoExchangeRate) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CurrencyPrice():
        return $default(_that.fiatToCryptoExchangeRate);
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
    TResult? Function(num fiatToCryptoExchangeRate)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CurrencyPrice() when $default != null:
        return $default(_that.fiatToCryptoExchangeRate);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _CurrencyPrice implements CurrencyPrice {
  const _CurrencyPrice({required this.fiatToCryptoExchangeRate});
  factory _CurrencyPrice.fromJson(Map<String, dynamic> json) =>
      _$CurrencyPriceFromJson(json);

  @override
  final num fiatToCryptoExchangeRate;

  /// Create a copy of CurrencyPrice
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CurrencyPriceCopyWith<_CurrencyPrice> get copyWith =>
      __$CurrencyPriceCopyWithImpl<_CurrencyPrice>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CurrencyPriceToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CurrencyPrice &&
            (identical(
                    other.fiatToCryptoExchangeRate, fiatToCryptoExchangeRate) ||
                other.fiatToCryptoExchangeRate == fiatToCryptoExchangeRate));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, fiatToCryptoExchangeRate);

  @override
  String toString() {
    return 'CurrencyPrice(fiatToCryptoExchangeRate: $fiatToCryptoExchangeRate)';
  }
}

/// @nodoc
abstract mixin class _$CurrencyPriceCopyWith<$Res>
    implements $CurrencyPriceCopyWith<$Res> {
  factory _$CurrencyPriceCopyWith(
          _CurrencyPrice value, $Res Function(_CurrencyPrice) _then) =
      __$CurrencyPriceCopyWithImpl;
  @override
  @useResult
  $Res call({num fiatToCryptoExchangeRate});
}

/// @nodoc
class __$CurrencyPriceCopyWithImpl<$Res>
    implements _$CurrencyPriceCopyWith<$Res> {
  __$CurrencyPriceCopyWithImpl(this._self, this._then);

  final _CurrencyPrice _self;
  final $Res Function(_CurrencyPrice) _then;

  /// Create a copy of CurrencyPrice
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? fiatToCryptoExchangeRate = null,
  }) {
    return _then(_CurrencyPrice(
      fiatToCryptoExchangeRate: null == fiatToCryptoExchangeRate
          ? _self.fiatToCryptoExchangeRate
          : fiatToCryptoExchangeRate // ignore: cast_nullable_to_non_nullable
              as num,
    ));
  }
}

// dart format on
