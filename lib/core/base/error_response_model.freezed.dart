// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'error_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ErrorResponseModel {
  ErrorContent get error;

  /// Create a copy of ErrorResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ErrorResponseModelCopyWith<ErrorResponseModel> get copyWith =>
      _$ErrorResponseModelCopyWithImpl<ErrorResponseModel>(
          this as ErrorResponseModel, _$identity);

  /// Serializes this ErrorResponseModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ErrorResponseModel &&
            (identical(other.error, error) || other.error == error));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, error);

  @override
  String toString() {
    return 'ErrorResponseModel(error: $error)';
  }
}

/// @nodoc
abstract mixin class $ErrorResponseModelCopyWith<$Res> {
  factory $ErrorResponseModelCopyWith(
          ErrorResponseModel value, $Res Function(ErrorResponseModel) _then) =
      _$ErrorResponseModelCopyWithImpl;
  @useResult
  $Res call({ErrorContent error});

  $ErrorContentCopyWith<$Res> get error;
}

/// @nodoc
class _$ErrorResponseModelCopyWithImpl<$Res>
    implements $ErrorResponseModelCopyWith<$Res> {
  _$ErrorResponseModelCopyWithImpl(this._self, this._then);

  final ErrorResponseModel _self;
  final $Res Function(ErrorResponseModel) _then;

  /// Create a copy of ErrorResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_self.copyWith(
      error: null == error
          ? _self.error
          : error // ignore: cast_nullable_to_non_nullable
              as ErrorContent,
    ));
  }

  /// Create a copy of ErrorResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ErrorContentCopyWith<$Res> get error {
    return $ErrorContentCopyWith<$Res>(_self.error, (value) {
      return _then(_self.copyWith(error: value));
    });
  }
}

/// Adds pattern-matching-related methods to [ErrorResponseModel].
extension ErrorResponseModelPatterns on ErrorResponseModel {
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
    TResult Function(_ErrorResponseModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ErrorResponseModel() when $default != null:
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
    TResult Function(_ErrorResponseModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ErrorResponseModel():
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
    TResult? Function(_ErrorResponseModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ErrorResponseModel() when $default != null:
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
    TResult Function(ErrorContent error)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ErrorResponseModel() when $default != null:
        return $default(_that.error);
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
    TResult Function(ErrorContent error) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ErrorResponseModel():
        return $default(_that.error);
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
    TResult? Function(ErrorContent error)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ErrorResponseModel() when $default != null:
        return $default(_that.error);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _ErrorResponseModel implements ErrorResponseModel {
  const _ErrorResponseModel({required this.error});
  factory _ErrorResponseModel.fromJson(Map<String, dynamic> json) =>
      _$ErrorResponseModelFromJson(json);

  @override
  final ErrorContent error;

  /// Create a copy of ErrorResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ErrorResponseModelCopyWith<_ErrorResponseModel> get copyWith =>
      __$ErrorResponseModelCopyWithImpl<_ErrorResponseModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ErrorResponseModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ErrorResponseModel &&
            (identical(other.error, error) || other.error == error));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, error);

  @override
  String toString() {
    return 'ErrorResponseModel(error: $error)';
  }
}

/// @nodoc
abstract mixin class _$ErrorResponseModelCopyWith<$Res>
    implements $ErrorResponseModelCopyWith<$Res> {
  factory _$ErrorResponseModelCopyWith(
          _ErrorResponseModel value, $Res Function(_ErrorResponseModel) _then) =
      __$ErrorResponseModelCopyWithImpl;
  @override
  @useResult
  $Res call({ErrorContent error});

  @override
  $ErrorContentCopyWith<$Res> get error;
}

/// @nodoc
class __$ErrorResponseModelCopyWithImpl<$Res>
    implements _$ErrorResponseModelCopyWith<$Res> {
  __$ErrorResponseModelCopyWithImpl(this._self, this._then);

  final _ErrorResponseModel _self;
  final $Res Function(_ErrorResponseModel) _then;

  /// Create a copy of ErrorResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? error = null,
  }) {
    return _then(_ErrorResponseModel(
      error: null == error
          ? _self.error
          : error // ignore: cast_nullable_to_non_nullable
              as ErrorContent,
    ));
  }

  /// Create a copy of ErrorResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ErrorContentCopyWith<$Res> get error {
    return $ErrorContentCopyWith<$Res>(_self.error, (value) {
      return _then(_self.copyWith(error: value));
    });
  }
}

/// @nodoc
mixin _$ErrorContent {
  String get message;
  int get code;
  String? get stack;

  /// Create a copy of ErrorContent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ErrorContentCopyWith<ErrorContent> get copyWith =>
      _$ErrorContentCopyWithImpl<ErrorContent>(
          this as ErrorContent, _$identity);

  /// Serializes this ErrorContent to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ErrorContent &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.stack, stack) || other.stack == stack));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, message, code, stack);

  @override
  String toString() {
    return 'ErrorContent(message: $message, code: $code, stack: $stack)';
  }
}

/// @nodoc
abstract mixin class $ErrorContentCopyWith<$Res> {
  factory $ErrorContentCopyWith(
          ErrorContent value, $Res Function(ErrorContent) _then) =
      _$ErrorContentCopyWithImpl;
  @useResult
  $Res call({String message, int code, String? stack});
}

/// @nodoc
class _$ErrorContentCopyWithImpl<$Res> implements $ErrorContentCopyWith<$Res> {
  _$ErrorContentCopyWithImpl(this._self, this._then);

  final ErrorContent _self;
  final $Res Function(ErrorContent) _then;

  /// Create a copy of ErrorContent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? code = null,
    Object? stack = freezed,
  }) {
    return _then(_self.copyWith(
      message: null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _self.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      stack: freezed == stack
          ? _self.stack
          : stack // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [ErrorContent].
extension ErrorContentPatterns on ErrorContent {
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
    TResult Function(_ErrorContent value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ErrorContent() when $default != null:
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
    TResult Function(_ErrorContent value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ErrorContent():
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
    TResult? Function(_ErrorContent value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ErrorContent() when $default != null:
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
    TResult Function(String message, int code, String? stack)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ErrorContent() when $default != null:
        return $default(_that.message, _that.code, _that.stack);
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
    TResult Function(String message, int code, String? stack) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ErrorContent():
        return $default(_that.message, _that.code, _that.stack);
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
    TResult? Function(String message, int code, String? stack)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ErrorContent() when $default != null:
        return $default(_that.message, _that.code, _that.stack);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _ErrorContent implements ErrorContent {
  const _ErrorContent({required this.message, required this.code, this.stack});
  factory _ErrorContent.fromJson(Map<String, dynamic> json) =>
      _$ErrorContentFromJson(json);

  @override
  final String message;
  @override
  final int code;
  @override
  final String? stack;

  /// Create a copy of ErrorContent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ErrorContentCopyWith<_ErrorContent> get copyWith =>
      __$ErrorContentCopyWithImpl<_ErrorContent>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ErrorContentToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ErrorContent &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.stack, stack) || other.stack == stack));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, message, code, stack);

  @override
  String toString() {
    return 'ErrorContent(message: $message, code: $code, stack: $stack)';
  }
}

/// @nodoc
abstract mixin class _$ErrorContentCopyWith<$Res>
    implements $ErrorContentCopyWith<$Res> {
  factory _$ErrorContentCopyWith(
          _ErrorContent value, $Res Function(_ErrorContent) _then) =
      __$ErrorContentCopyWithImpl;
  @override
  @useResult
  $Res call({String message, int code, String? stack});
}

/// @nodoc
class __$ErrorContentCopyWithImpl<$Res>
    implements _$ErrorContentCopyWith<$Res> {
  __$ErrorContentCopyWithImpl(this._self, this._then);

  final _ErrorContent _self;
  final $Res Function(_ErrorContent) _then;

  /// Create a copy of ErrorContent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? message = null,
    Object? code = null,
    Object? stack = freezed,
  }) {
    return _then(_ErrorContent(
      message: null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _self.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      stack: freezed == stack
          ? _self.stack
          : stack // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
