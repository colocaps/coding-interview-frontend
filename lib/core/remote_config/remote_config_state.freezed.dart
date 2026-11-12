// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'remote_config_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RemoteConfigState {
  bool get isMaintenanceMode;
  String get minRequiredVersionAndroid;
  String get minRequiredVersionIos;
  String get storeUrlAndroid;
  String get storeUrlIos;

  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RemoteConfigStateCopyWith<RemoteConfigState> get copyWith =>
      _$RemoteConfigStateCopyWithImpl<RemoteConfigState>(
        this as RemoteConfigState,
        _$identity,
      );

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RemoteConfigState &&
            (identical(other.isMaintenanceMode, isMaintenanceMode) ||
                other.isMaintenanceMode == isMaintenanceMode) &&
            (identical(
                  other.minRequiredVersionAndroid,
                  minRequiredVersionAndroid,
                ) ||
                other.minRequiredVersionAndroid ==
                    minRequiredVersionAndroid) &&
            (identical(
                  other.minRequiredVersionIos,
                  minRequiredVersionIos,
                ) ||
                other.minRequiredVersionIos == minRequiredVersionIos) &&
            (identical(other.storeUrlAndroid, storeUrlAndroid) ||
                other.storeUrlAndroid == storeUrlAndroid) &&
            (identical(other.storeUrlIos, storeUrlIos) ||
                other.storeUrlIos == storeUrlIos));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    isMaintenanceMode,
    minRequiredVersionAndroid,
    minRequiredVersionIos,
    storeUrlAndroid,
    storeUrlIos,
  );

  @override
  String toString() {
    return 'RemoteConfigState(isMaintenanceMode: $isMaintenanceMode, minRequiredVersionAndroid: $minRequiredVersionAndroid, minRequiredVersionIos: $minRequiredVersionIos, storeUrlAndroid: $storeUrlAndroid, storeUrlIos: $storeUrlIos)';
  }
}

/// @nodoc
abstract mixin class $RemoteConfigStateCopyWith<$Res> {
  factory $RemoteConfigStateCopyWith(
    RemoteConfigState value,
    $Res Function(RemoteConfigState) _then,
  ) = _$RemoteConfigStateCopyWithImpl;
  @useResult
  $Res call({
    bool isMaintenanceMode,
    String minRequiredVersionAndroid,
    String minRequiredVersionIos,
    String storeUrlAndroid,
    String storeUrlIos,
  });
}

/// @nodoc
class _$RemoteConfigStateCopyWithImpl<$Res>
    implements $RemoteConfigStateCopyWith<$Res> {
  _$RemoteConfigStateCopyWithImpl(this._self, this._then);

  final RemoteConfigState _self;
  final $Res Function(RemoteConfigState) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isMaintenanceMode = null,
    Object? minRequiredVersionAndroid = null,
    Object? minRequiredVersionIos = null,
    Object? storeUrlAndroid = null,
    Object? storeUrlIos = null,
  }) {
    return _then(
      _self.copyWith(
        isMaintenanceMode: null == isMaintenanceMode
            ? _self.isMaintenanceMode
            : isMaintenanceMode // ignore: cast_nullable_to_non_nullable
                as bool,
        minRequiredVersionAndroid: null == minRequiredVersionAndroid
            ? _self.minRequiredVersionAndroid
            : minRequiredVersionAndroid // ignore: cast_nullable_to_non_nullable
                as String,
        minRequiredVersionIos: null == minRequiredVersionIos
            ? _self.minRequiredVersionIos
            : minRequiredVersionIos // ignore: cast_nullable_to_non_nullable
                as String,
        storeUrlAndroid: null == storeUrlAndroid
            ? _self.storeUrlAndroid
            : storeUrlAndroid // ignore: cast_nullable_to_non_nullable
                as String,
        storeUrlIos: null == storeUrlIos
            ? _self.storeUrlIos
            : storeUrlIos // ignore: cast_nullable_to_non_nullable
                as String,
      ),
    );
  }
}

extension RemoteConfigStatePatterns on RemoteConfigState {
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_RemoteConfigState value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _RemoteConfigState() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_RemoteConfigState value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RemoteConfigState():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_RemoteConfigState value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RemoteConfigState() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
      bool isMaintenanceMode,
      String minRequiredVersionAndroid,
      String minRequiredVersionIos,
      String storeUrlAndroid,
      String storeUrlIos,
    )?
    $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _RemoteConfigState() when $default != null:
        return $default(
          _that.isMaintenanceMode,
          _that.minRequiredVersionAndroid,
          _that.minRequiredVersionIos,
          _that.storeUrlAndroid,
          _that.storeUrlIos,
        );
      case _:
        return orElse();
    }
  }

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
      bool isMaintenanceMode,
      String minRequiredVersionAndroid,
      String minRequiredVersionIos,
      String storeUrlAndroid,
      String storeUrlIos,
    )
    $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RemoteConfigState():
        return $default(
          _that.isMaintenanceMode,
          _that.minRequiredVersionAndroid,
          _that.minRequiredVersionIos,
          _that.storeUrlAndroid,
          _that.storeUrlIos,
        );
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
      bool isMaintenanceMode,
      String minRequiredVersionAndroid,
      String minRequiredVersionIos,
      String storeUrlAndroid,
      String storeUrlIos,
    )?
    $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RemoteConfigState() when $default != null:
        return $default(
          _that.isMaintenanceMode,
          _that.minRequiredVersionAndroid,
          _that.minRequiredVersionIos,
          _that.storeUrlAndroid,
          _that.storeUrlIos,
        );
      case _:
        return null;
    }
  }
}

/// @nodoc
class _RemoteConfigState implements RemoteConfigState {
  const _RemoteConfigState({
    this.isMaintenanceMode = false,
    this.minRequiredVersionAndroid = '0.0.0',
    this.minRequiredVersionIos = '0.0.0',
    this.storeUrlAndroid = '',
    this.storeUrlIos = '',
  });

  @override
  @JsonKey()
  final bool isMaintenanceMode;
  @override
  @JsonKey()
  final String minRequiredVersionAndroid;
  @override
  @JsonKey()
  final String minRequiredVersionIos;
  @override
  @JsonKey()
  final String storeUrlAndroid;
  @override
  @JsonKey()
  final String storeUrlIos;

  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$RemoteConfigStateCopyWith<_RemoteConfigState> get copyWith =>
      __$RemoteConfigStateCopyWithImpl<_RemoteConfigState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RemoteConfigState &&
            (identical(other.isMaintenanceMode, isMaintenanceMode) ||
                other.isMaintenanceMode == isMaintenanceMode) &&
            (identical(
                  other.minRequiredVersionAndroid,
                  minRequiredVersionAndroid,
                ) ||
                other.minRequiredVersionAndroid ==
                    minRequiredVersionAndroid) &&
            (identical(
                  other.minRequiredVersionIos,
                  minRequiredVersionIos,
                ) ||
                other.minRequiredVersionIos == minRequiredVersionIos) &&
            (identical(other.storeUrlAndroid, storeUrlAndroid) ||
                other.storeUrlAndroid == storeUrlAndroid) &&
            (identical(other.storeUrlIos, storeUrlIos) ||
                other.storeUrlIos == storeUrlIos));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    isMaintenanceMode,
    minRequiredVersionAndroid,
    minRequiredVersionIos,
    storeUrlAndroid,
    storeUrlIos,
  );

  @override
  String toString() {
    return 'RemoteConfigState(isMaintenanceMode: $isMaintenanceMode, minRequiredVersionAndroid: $minRequiredVersionAndroid, minRequiredVersionIos: $minRequiredVersionIos, storeUrlAndroid: $storeUrlAndroid, storeUrlIos: $storeUrlIos)';
  }
}

/// @nodoc
abstract mixin class _$RemoteConfigStateCopyWith<$Res>
    implements $RemoteConfigStateCopyWith<$Res> {
  factory _$RemoteConfigStateCopyWith(
    _RemoteConfigState value,
    $Res Function(_RemoteConfigState) _then,
  ) = __$RemoteConfigStateCopyWithImpl;
  @override
  @useResult
  $Res call({
    bool isMaintenanceMode,
    String minRequiredVersionAndroid,
    String minRequiredVersionIos,
    String storeUrlAndroid,
    String storeUrlIos,
  });
}

/// @nodoc
class __$RemoteConfigStateCopyWithImpl<$Res>
    implements _$RemoteConfigStateCopyWith<$Res> {
  __$RemoteConfigStateCopyWithImpl(this._self, this._then);

  final _RemoteConfigState _self;
  final $Res Function(_RemoteConfigState) _then;

  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? isMaintenanceMode = null,
    Object? minRequiredVersionAndroid = null,
    Object? minRequiredVersionIos = null,
    Object? storeUrlAndroid = null,
    Object? storeUrlIos = null,
  }) {
    return _then(
      _RemoteConfigState(
        isMaintenanceMode: null == isMaintenanceMode
            ? _self.isMaintenanceMode
            : isMaintenanceMode // ignore: cast_nullable_to_non_nullable
                as bool,
        minRequiredVersionAndroid: null == minRequiredVersionAndroid
            ? _self.minRequiredVersionAndroid
            : minRequiredVersionAndroid // ignore: cast_nullable_to_non_nullable
                as String,
        minRequiredVersionIos: null == minRequiredVersionIos
            ? _self.minRequiredVersionIos
            : minRequiredVersionIos // ignore: cast_nullable_to_non_nullable
                as String,
        storeUrlAndroid: null == storeUrlAndroid
            ? _self.storeUrlAndroid
            : storeUrlAndroid // ignore: cast_nullable_to_non_nullable
                as String,
        storeUrlIos: null == storeUrlIos
            ? _self.storeUrlIos
            : storeUrlIos // ignore: cast_nullable_to_non_nullable
                as String,
      ),
    );
  }
}

// dart format on
