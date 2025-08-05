// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'exchange_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ExchangeState {
  ExchangeStatus? get status;
  DateTime? get dateTime;
  List<CurrencyEntity> get fiatCurrencyList;
  List<CurrencyEntity> get cryptoCurrencyList;
  CurrencyEntity? get selectedFiatCurrency;
  CurrencyEntity? get selectedCryptoCurrency;
  CurrencyType? get currencyType;
  num? get exhangeAmount;
  num? get exchangeRate;
  num? get calculatedAmount;

  /// Create a copy of ExchangeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ExchangeStateCopyWith<ExchangeState> get copyWith =>
      _$ExchangeStateCopyWithImpl<ExchangeState>(
          this as ExchangeState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ExchangeState &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.dateTime, dateTime) ||
                other.dateTime == dateTime) &&
            const DeepCollectionEquality()
                .equals(other.fiatCurrencyList, fiatCurrencyList) &&
            const DeepCollectionEquality()
                .equals(other.cryptoCurrencyList, cryptoCurrencyList) &&
            (identical(other.selectedFiatCurrency, selectedFiatCurrency) ||
                other.selectedFiatCurrency == selectedFiatCurrency) &&
            (identical(other.selectedCryptoCurrency, selectedCryptoCurrency) ||
                other.selectedCryptoCurrency == selectedCryptoCurrency) &&
            (identical(other.currencyType, currencyType) ||
                other.currencyType == currencyType) &&
            (identical(other.exhangeAmount, exhangeAmount) ||
                other.exhangeAmount == exhangeAmount) &&
            (identical(other.exchangeRate, exchangeRate) ||
                other.exchangeRate == exchangeRate) &&
            (identical(other.calculatedAmount, calculatedAmount) ||
                other.calculatedAmount == calculatedAmount));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      dateTime,
      const DeepCollectionEquality().hash(fiatCurrencyList),
      const DeepCollectionEquality().hash(cryptoCurrencyList),
      selectedFiatCurrency,
      selectedCryptoCurrency,
      currencyType,
      exhangeAmount,
      exchangeRate,
      calculatedAmount);

  @override
  String toString() {
    return 'ExchangeState(status: $status, dateTime: $dateTime, fiatCurrencyList: $fiatCurrencyList, cryptoCurrencyList: $cryptoCurrencyList, selectedFiatCurrency: $selectedFiatCurrency, selectedCryptoCurrency: $selectedCryptoCurrency, currencyType: $currencyType, exhangeAmount: $exhangeAmount, exchangeRate: $exchangeRate, calculatedAmount: $calculatedAmount)';
  }
}

/// @nodoc
abstract mixin class $ExchangeStateCopyWith<$Res> {
  factory $ExchangeStateCopyWith(
          ExchangeState value, $Res Function(ExchangeState) _then) =
      _$ExchangeStateCopyWithImpl;
  @useResult
  $Res call(
      {ExchangeStatus? status,
      DateTime? dateTime,
      List<CurrencyEntity> fiatCurrencyList,
      List<CurrencyEntity> cryptoCurrencyList,
      CurrencyEntity? selectedFiatCurrency,
      CurrencyEntity? selectedCryptoCurrency,
      CurrencyType? currencyType,
      num? exhangeAmount,
      num? exchangeRate,
      num? calculatedAmount});

  $CurrencyEntityCopyWith<$Res>? get selectedFiatCurrency;
  $CurrencyEntityCopyWith<$Res>? get selectedCryptoCurrency;
}

/// @nodoc
class _$ExchangeStateCopyWithImpl<$Res>
    implements $ExchangeStateCopyWith<$Res> {
  _$ExchangeStateCopyWithImpl(this._self, this._then);

  final ExchangeState _self;
  final $Res Function(ExchangeState) _then;

  /// Create a copy of ExchangeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? dateTime = freezed,
    Object? fiatCurrencyList = null,
    Object? cryptoCurrencyList = null,
    Object? selectedFiatCurrency = freezed,
    Object? selectedCryptoCurrency = freezed,
    Object? currencyType = freezed,
    Object? exhangeAmount = freezed,
    Object? exchangeRate = freezed,
    Object? calculatedAmount = freezed,
  }) {
    return _then(_self.copyWith(
      status: freezed == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as ExchangeStatus?,
      dateTime: freezed == dateTime
          ? _self.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      fiatCurrencyList: null == fiatCurrencyList
          ? _self.fiatCurrencyList
          : fiatCurrencyList // ignore: cast_nullable_to_non_nullable
              as List<CurrencyEntity>,
      cryptoCurrencyList: null == cryptoCurrencyList
          ? _self.cryptoCurrencyList
          : cryptoCurrencyList // ignore: cast_nullable_to_non_nullable
              as List<CurrencyEntity>,
      selectedFiatCurrency: freezed == selectedFiatCurrency
          ? _self.selectedFiatCurrency
          : selectedFiatCurrency // ignore: cast_nullable_to_non_nullable
              as CurrencyEntity?,
      selectedCryptoCurrency: freezed == selectedCryptoCurrency
          ? _self.selectedCryptoCurrency
          : selectedCryptoCurrency // ignore: cast_nullable_to_non_nullable
              as CurrencyEntity?,
      currencyType: freezed == currencyType
          ? _self.currencyType
          : currencyType // ignore: cast_nullable_to_non_nullable
              as CurrencyType?,
      exhangeAmount: freezed == exhangeAmount
          ? _self.exhangeAmount
          : exhangeAmount // ignore: cast_nullable_to_non_nullable
              as num?,
      exchangeRate: freezed == exchangeRate
          ? _self.exchangeRate
          : exchangeRate // ignore: cast_nullable_to_non_nullable
              as num?,
      calculatedAmount: freezed == calculatedAmount
          ? _self.calculatedAmount
          : calculatedAmount // ignore: cast_nullable_to_non_nullable
              as num?,
    ));
  }

  /// Create a copy of ExchangeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CurrencyEntityCopyWith<$Res>? get selectedFiatCurrency {
    if (_self.selectedFiatCurrency == null) {
      return null;
    }

    return $CurrencyEntityCopyWith<$Res>(_self.selectedFiatCurrency!, (value) {
      return _then(_self.copyWith(selectedFiatCurrency: value));
    });
  }

  /// Create a copy of ExchangeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CurrencyEntityCopyWith<$Res>? get selectedCryptoCurrency {
    if (_self.selectedCryptoCurrency == null) {
      return null;
    }

    return $CurrencyEntityCopyWith<$Res>(_self.selectedCryptoCurrency!,
        (value) {
      return _then(_self.copyWith(selectedCryptoCurrency: value));
    });
  }
}

/// Adds pattern-matching-related methods to [ExchangeState].
extension ExchangeStatePatterns on ExchangeState {
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
    TResult Function(_ExchangeState value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ExchangeState() when $default != null:
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
    TResult Function(_ExchangeState value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ExchangeState():
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
    TResult? Function(_ExchangeState value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ExchangeState() when $default != null:
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
    TResult Function(
            ExchangeStatus? status,
            DateTime? dateTime,
            List<CurrencyEntity> fiatCurrencyList,
            List<CurrencyEntity> cryptoCurrencyList,
            CurrencyEntity? selectedFiatCurrency,
            CurrencyEntity? selectedCryptoCurrency,
            CurrencyType? currencyType,
            num? exhangeAmount,
            num? exchangeRate,
            num? calculatedAmount)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ExchangeState() when $default != null:
        return $default(
            _that.status,
            _that.dateTime,
            _that.fiatCurrencyList,
            _that.cryptoCurrencyList,
            _that.selectedFiatCurrency,
            _that.selectedCryptoCurrency,
            _that.currencyType,
            _that.exhangeAmount,
            _that.exchangeRate,
            _that.calculatedAmount);
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
            ExchangeStatus? status,
            DateTime? dateTime,
            List<CurrencyEntity> fiatCurrencyList,
            List<CurrencyEntity> cryptoCurrencyList,
            CurrencyEntity? selectedFiatCurrency,
            CurrencyEntity? selectedCryptoCurrency,
            CurrencyType? currencyType,
            num? exhangeAmount,
            num? exchangeRate,
            num? calculatedAmount)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ExchangeState():
        return $default(
            _that.status,
            _that.dateTime,
            _that.fiatCurrencyList,
            _that.cryptoCurrencyList,
            _that.selectedFiatCurrency,
            _that.selectedCryptoCurrency,
            _that.currencyType,
            _that.exhangeAmount,
            _that.exchangeRate,
            _that.calculatedAmount);
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
    TResult? Function(
            ExchangeStatus? status,
            DateTime? dateTime,
            List<CurrencyEntity> fiatCurrencyList,
            List<CurrencyEntity> cryptoCurrencyList,
            CurrencyEntity? selectedFiatCurrency,
            CurrencyEntity? selectedCryptoCurrency,
            CurrencyType? currencyType,
            num? exhangeAmount,
            num? exchangeRate,
            num? calculatedAmount)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ExchangeState() when $default != null:
        return $default(
            _that.status,
            _that.dateTime,
            _that.fiatCurrencyList,
            _that.cryptoCurrencyList,
            _that.selectedFiatCurrency,
            _that.selectedCryptoCurrency,
            _that.currencyType,
            _that.exhangeAmount,
            _that.exchangeRate,
            _that.calculatedAmount);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _ExchangeState implements ExchangeState {
  const _ExchangeState(
      {this.status,
      this.dateTime,
      final List<CurrencyEntity> fiatCurrencyList = const [],
      final List<CurrencyEntity> cryptoCurrencyList = const [],
      this.selectedFiatCurrency,
      this.selectedCryptoCurrency,
      this.currencyType,
      this.exhangeAmount,
      this.exchangeRate,
      this.calculatedAmount})
      : _fiatCurrencyList = fiatCurrencyList,
        _cryptoCurrencyList = cryptoCurrencyList;

  @override
  final ExchangeStatus? status;
  @override
  final DateTime? dateTime;
  final List<CurrencyEntity> _fiatCurrencyList;
  @override
  @JsonKey()
  List<CurrencyEntity> get fiatCurrencyList {
    if (_fiatCurrencyList is EqualUnmodifiableListView)
      return _fiatCurrencyList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_fiatCurrencyList);
  }

  final List<CurrencyEntity> _cryptoCurrencyList;
  @override
  @JsonKey()
  List<CurrencyEntity> get cryptoCurrencyList {
    if (_cryptoCurrencyList is EqualUnmodifiableListView)
      return _cryptoCurrencyList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cryptoCurrencyList);
  }

  @override
  final CurrencyEntity? selectedFiatCurrency;
  @override
  final CurrencyEntity? selectedCryptoCurrency;
  @override
  final CurrencyType? currencyType;
  @override
  final num? exhangeAmount;
  @override
  final num? exchangeRate;
  @override
  final num? calculatedAmount;

  /// Create a copy of ExchangeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ExchangeStateCopyWith<_ExchangeState> get copyWith =>
      __$ExchangeStateCopyWithImpl<_ExchangeState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ExchangeState &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.dateTime, dateTime) ||
                other.dateTime == dateTime) &&
            const DeepCollectionEquality()
                .equals(other._fiatCurrencyList, _fiatCurrencyList) &&
            const DeepCollectionEquality()
                .equals(other._cryptoCurrencyList, _cryptoCurrencyList) &&
            (identical(other.selectedFiatCurrency, selectedFiatCurrency) ||
                other.selectedFiatCurrency == selectedFiatCurrency) &&
            (identical(other.selectedCryptoCurrency, selectedCryptoCurrency) ||
                other.selectedCryptoCurrency == selectedCryptoCurrency) &&
            (identical(other.currencyType, currencyType) ||
                other.currencyType == currencyType) &&
            (identical(other.exhangeAmount, exhangeAmount) ||
                other.exhangeAmount == exhangeAmount) &&
            (identical(other.exchangeRate, exchangeRate) ||
                other.exchangeRate == exchangeRate) &&
            (identical(other.calculatedAmount, calculatedAmount) ||
                other.calculatedAmount == calculatedAmount));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      dateTime,
      const DeepCollectionEquality().hash(_fiatCurrencyList),
      const DeepCollectionEquality().hash(_cryptoCurrencyList),
      selectedFiatCurrency,
      selectedCryptoCurrency,
      currencyType,
      exhangeAmount,
      exchangeRate,
      calculatedAmount);

  @override
  String toString() {
    return 'ExchangeState(status: $status, dateTime: $dateTime, fiatCurrencyList: $fiatCurrencyList, cryptoCurrencyList: $cryptoCurrencyList, selectedFiatCurrency: $selectedFiatCurrency, selectedCryptoCurrency: $selectedCryptoCurrency, currencyType: $currencyType, exhangeAmount: $exhangeAmount, exchangeRate: $exchangeRate, calculatedAmount: $calculatedAmount)';
  }
}

/// @nodoc
abstract mixin class _$ExchangeStateCopyWith<$Res>
    implements $ExchangeStateCopyWith<$Res> {
  factory _$ExchangeStateCopyWith(
          _ExchangeState value, $Res Function(_ExchangeState) _then) =
      __$ExchangeStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {ExchangeStatus? status,
      DateTime? dateTime,
      List<CurrencyEntity> fiatCurrencyList,
      List<CurrencyEntity> cryptoCurrencyList,
      CurrencyEntity? selectedFiatCurrency,
      CurrencyEntity? selectedCryptoCurrency,
      CurrencyType? currencyType,
      num? exhangeAmount,
      num? exchangeRate,
      num? calculatedAmount});

  @override
  $CurrencyEntityCopyWith<$Res>? get selectedFiatCurrency;
  @override
  $CurrencyEntityCopyWith<$Res>? get selectedCryptoCurrency;
}

/// @nodoc
class __$ExchangeStateCopyWithImpl<$Res>
    implements _$ExchangeStateCopyWith<$Res> {
  __$ExchangeStateCopyWithImpl(this._self, this._then);

  final _ExchangeState _self;
  final $Res Function(_ExchangeState) _then;

  /// Create a copy of ExchangeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? status = freezed,
    Object? dateTime = freezed,
    Object? fiatCurrencyList = null,
    Object? cryptoCurrencyList = null,
    Object? selectedFiatCurrency = freezed,
    Object? selectedCryptoCurrency = freezed,
    Object? currencyType = freezed,
    Object? exhangeAmount = freezed,
    Object? exchangeRate = freezed,
    Object? calculatedAmount = freezed,
  }) {
    return _then(_ExchangeState(
      status: freezed == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as ExchangeStatus?,
      dateTime: freezed == dateTime
          ? _self.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      fiatCurrencyList: null == fiatCurrencyList
          ? _self._fiatCurrencyList
          : fiatCurrencyList // ignore: cast_nullable_to_non_nullable
              as List<CurrencyEntity>,
      cryptoCurrencyList: null == cryptoCurrencyList
          ? _self._cryptoCurrencyList
          : cryptoCurrencyList // ignore: cast_nullable_to_non_nullable
              as List<CurrencyEntity>,
      selectedFiatCurrency: freezed == selectedFiatCurrency
          ? _self.selectedFiatCurrency
          : selectedFiatCurrency // ignore: cast_nullable_to_non_nullable
              as CurrencyEntity?,
      selectedCryptoCurrency: freezed == selectedCryptoCurrency
          ? _self.selectedCryptoCurrency
          : selectedCryptoCurrency // ignore: cast_nullable_to_non_nullable
              as CurrencyEntity?,
      currencyType: freezed == currencyType
          ? _self.currencyType
          : currencyType // ignore: cast_nullable_to_non_nullable
              as CurrencyType?,
      exhangeAmount: freezed == exhangeAmount
          ? _self.exhangeAmount
          : exhangeAmount // ignore: cast_nullable_to_non_nullable
              as num?,
      exchangeRate: freezed == exchangeRate
          ? _self.exchangeRate
          : exchangeRate // ignore: cast_nullable_to_non_nullable
              as num?,
      calculatedAmount: freezed == calculatedAmount
          ? _self.calculatedAmount
          : calculatedAmount // ignore: cast_nullable_to_non_nullable
              as num?,
    ));
  }

  /// Create a copy of ExchangeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CurrencyEntityCopyWith<$Res>? get selectedFiatCurrency {
    if (_self.selectedFiatCurrency == null) {
      return null;
    }

    return $CurrencyEntityCopyWith<$Res>(_self.selectedFiatCurrency!, (value) {
      return _then(_self.copyWith(selectedFiatCurrency: value));
    });
  }

  /// Create a copy of ExchangeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CurrencyEntityCopyWith<$Res>? get selectedCryptoCurrency {
    if (_self.selectedCryptoCurrency == null) {
      return null;
    }

    return $CurrencyEntityCopyWith<$Res>(_self.selectedCryptoCurrency!,
        (value) {
      return _then(_self.copyWith(selectedCryptoCurrency: value));
    });
  }
}

// dart format on
