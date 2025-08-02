// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'error_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ErrorResponseModel _$ErrorResponseModelFromJson(Map<String, dynamic> json) {
  return _ErrorResponseModel.fromJson(json);
}

/// @nodoc
mixin _$ErrorResponseModel {
  ErrorContent get error => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ErrorResponseModelCopyWith<ErrorResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ErrorResponseModelCopyWith<$Res> {
  factory $ErrorResponseModelCopyWith(
          ErrorResponseModel value, $Res Function(ErrorResponseModel) then) =
      _$ErrorResponseModelCopyWithImpl<$Res, ErrorResponseModel>;
  @useResult
  $Res call({ErrorContent error});

  $ErrorContentCopyWith<$Res> get error;
}

/// @nodoc
class _$ErrorResponseModelCopyWithImpl<$Res, $Val extends ErrorResponseModel>
    implements $ErrorResponseModelCopyWith<$Res> {
  _$ErrorResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_value.copyWith(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as ErrorContent,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ErrorContentCopyWith<$Res> get error {
    return $ErrorContentCopyWith<$Res>(_value.error, (value) {
      return _then(_value.copyWith(error: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ErrorResponseModelImplCopyWith<$Res>
    implements $ErrorResponseModelCopyWith<$Res> {
  factory _$$ErrorResponseModelImplCopyWith(_$ErrorResponseModelImpl value,
          $Res Function(_$ErrorResponseModelImpl) then) =
      __$$ErrorResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ErrorContent error});

  @override
  $ErrorContentCopyWith<$Res> get error;
}

/// @nodoc
class __$$ErrorResponseModelImplCopyWithImpl<$Res>
    extends _$ErrorResponseModelCopyWithImpl<$Res, _$ErrorResponseModelImpl>
    implements _$$ErrorResponseModelImplCopyWith<$Res> {
  __$$ErrorResponseModelImplCopyWithImpl(_$ErrorResponseModelImpl _value,
      $Res Function(_$ErrorResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$ErrorResponseModelImpl(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as ErrorContent,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ErrorResponseModelImpl implements _ErrorResponseModel {
  const _$ErrorResponseModelImpl({required this.error});

  factory _$ErrorResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ErrorResponseModelImplFromJson(json);

  @override
  final ErrorContent error;

  @override
  String toString() {
    return 'ErrorResponseModel(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorResponseModelImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorResponseModelImplCopyWith<_$ErrorResponseModelImpl> get copyWith =>
      __$$ErrorResponseModelImplCopyWithImpl<_$ErrorResponseModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ErrorResponseModelImplToJson(
      this,
    );
  }
}

abstract class _ErrorResponseModel implements ErrorResponseModel {
  const factory _ErrorResponseModel({required final ErrorContent error}) =
      _$ErrorResponseModelImpl;

  factory _ErrorResponseModel.fromJson(Map<String, dynamic> json) =
      _$ErrorResponseModelImpl.fromJson;

  @override
  ErrorContent get error;
  @override
  @JsonKey(ignore: true)
  _$$ErrorResponseModelImplCopyWith<_$ErrorResponseModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ErrorContent _$ErrorContentFromJson(Map<String, dynamic> json) {
  return _ErrorContent.fromJson(json);
}

/// @nodoc
mixin _$ErrorContent {
  String get message => throw _privateConstructorUsedError;
  int get code => throw _privateConstructorUsedError;
  String? get stack => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ErrorContentCopyWith<ErrorContent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ErrorContentCopyWith<$Res> {
  factory $ErrorContentCopyWith(
          ErrorContent value, $Res Function(ErrorContent) then) =
      _$ErrorContentCopyWithImpl<$Res, ErrorContent>;
  @useResult
  $Res call({String message, int code, String? stack});
}

/// @nodoc
class _$ErrorContentCopyWithImpl<$Res, $Val extends ErrorContent>
    implements $ErrorContentCopyWith<$Res> {
  _$ErrorContentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? code = null,
    Object? stack = freezed,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      stack: freezed == stack
          ? _value.stack
          : stack // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ErrorContentImplCopyWith<$Res>
    implements $ErrorContentCopyWith<$Res> {
  factory _$$ErrorContentImplCopyWith(
          _$ErrorContentImpl value, $Res Function(_$ErrorContentImpl) then) =
      __$$ErrorContentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, int code, String? stack});
}

/// @nodoc
class __$$ErrorContentImplCopyWithImpl<$Res>
    extends _$ErrorContentCopyWithImpl<$Res, _$ErrorContentImpl>
    implements _$$ErrorContentImplCopyWith<$Res> {
  __$$ErrorContentImplCopyWithImpl(
      _$ErrorContentImpl _value, $Res Function(_$ErrorContentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? code = null,
    Object? stack = freezed,
  }) {
    return _then(_$ErrorContentImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      stack: freezed == stack
          ? _value.stack
          : stack // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ErrorContentImpl implements _ErrorContent {
  const _$ErrorContentImpl(
      {required this.message, required this.code, this.stack});

  factory _$ErrorContentImpl.fromJson(Map<String, dynamic> json) =>
      _$$ErrorContentImplFromJson(json);

  @override
  final String message;
  @override
  final int code;
  @override
  final String? stack;

  @override
  String toString() {
    return 'ErrorContent(message: $message, code: $code, stack: $stack)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorContentImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.stack, stack) || other.stack == stack));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, message, code, stack);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorContentImplCopyWith<_$ErrorContentImpl> get copyWith =>
      __$$ErrorContentImplCopyWithImpl<_$ErrorContentImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ErrorContentImplToJson(
      this,
    );
  }
}

abstract class _ErrorContent implements ErrorContent {
  const factory _ErrorContent(
      {required final String message,
      required final int code,
      final String? stack}) = _$ErrorContentImpl;

  factory _ErrorContent.fromJson(Map<String, dynamic> json) =
      _$ErrorContentImpl.fromJson;

  @override
  String get message;
  @override
  int get code;
  @override
  String? get stack;
  @override
  @JsonKey(ignore: true)
  _$$ErrorContentImplCopyWith<_$ErrorContentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
