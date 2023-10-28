// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'repository_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RepositoryResponse<R> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(R result) done,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(R result)? done,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(R result)? done,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RepositoryResponseSuccess<R> value) done,
    required TResult Function(RepositoryResponseFailure<R> value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RepositoryResponseSuccess<R> value)? done,
    TResult? Function(RepositoryResponseFailure<R> value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RepositoryResponseSuccess<R> value)? done,
    TResult Function(RepositoryResponseFailure<R> value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RepositoryResponseCopyWith<R, $Res> {
  factory $RepositoryResponseCopyWith(RepositoryResponse<R> value,
          $Res Function(RepositoryResponse<R>) then) =
      _$RepositoryResponseCopyWithImpl<R, $Res, RepositoryResponse<R>>;
}

/// @nodoc
class _$RepositoryResponseCopyWithImpl<R, $Res,
        $Val extends RepositoryResponse<R>>
    implements $RepositoryResponseCopyWith<R, $Res> {
  _$RepositoryResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$RepositoryResponseSuccessImplCopyWith<R, $Res> {
  factory _$$RepositoryResponseSuccessImplCopyWith(
          _$RepositoryResponseSuccessImpl<R> value,
          $Res Function(_$RepositoryResponseSuccessImpl<R>) then) =
      __$$RepositoryResponseSuccessImplCopyWithImpl<R, $Res>;
  @useResult
  $Res call({R result});
}

/// @nodoc
class __$$RepositoryResponseSuccessImplCopyWithImpl<R, $Res>
    extends _$RepositoryResponseCopyWithImpl<R, $Res,
        _$RepositoryResponseSuccessImpl<R>>
    implements _$$RepositoryResponseSuccessImplCopyWith<R, $Res> {
  __$$RepositoryResponseSuccessImplCopyWithImpl(
      _$RepositoryResponseSuccessImpl<R> _value,
      $Res Function(_$RepositoryResponseSuccessImpl<R>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = freezed,
  }) {
    return _then(_$RepositoryResponseSuccessImpl<R>(
      freezed == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as R,
    ));
  }
}

/// @nodoc

class _$RepositoryResponseSuccessImpl<R>
    implements RepositoryResponseSuccess<R> {
  const _$RepositoryResponseSuccessImpl(this.result);

  @override
  final R result;

  @override
  String toString() {
    return 'RepositoryResponse<$R>.done(result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RepositoryResponseSuccessImpl<R> &&
            const DeepCollectionEquality().equals(other.result, result));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(result));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RepositoryResponseSuccessImplCopyWith<R,
          _$RepositoryResponseSuccessImpl<R>>
      get copyWith => __$$RepositoryResponseSuccessImplCopyWithImpl<R,
          _$RepositoryResponseSuccessImpl<R>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(R result) done,
    required TResult Function(String message) error,
  }) {
    return done(result);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(R result)? done,
    TResult? Function(String message)? error,
  }) {
    return done?.call(result);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(R result)? done,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (done != null) {
      return done(result);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RepositoryResponseSuccess<R> value) done,
    required TResult Function(RepositoryResponseFailure<R> value) error,
  }) {
    return done(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RepositoryResponseSuccess<R> value)? done,
    TResult? Function(RepositoryResponseFailure<R> value)? error,
  }) {
    return done?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RepositoryResponseSuccess<R> value)? done,
    TResult Function(RepositoryResponseFailure<R> value)? error,
    required TResult orElse(),
  }) {
    if (done != null) {
      return done(this);
    }
    return orElse();
  }
}

abstract class RepositoryResponseSuccess<R> implements RepositoryResponse<R> {
  const factory RepositoryResponseSuccess(final R result) =
      _$RepositoryResponseSuccessImpl<R>;

  R get result;
  @JsonKey(ignore: true)
  _$$RepositoryResponseSuccessImplCopyWith<R,
          _$RepositoryResponseSuccessImpl<R>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RepositoryResponseFailureImplCopyWith<R, $Res> {
  factory _$$RepositoryResponseFailureImplCopyWith(
          _$RepositoryResponseFailureImpl<R> value,
          $Res Function(_$RepositoryResponseFailureImpl<R>) then) =
      __$$RepositoryResponseFailureImplCopyWithImpl<R, $Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$RepositoryResponseFailureImplCopyWithImpl<R, $Res>
    extends _$RepositoryResponseCopyWithImpl<R, $Res,
        _$RepositoryResponseFailureImpl<R>>
    implements _$$RepositoryResponseFailureImplCopyWith<R, $Res> {
  __$$RepositoryResponseFailureImplCopyWithImpl(
      _$RepositoryResponseFailureImpl<R> _value,
      $Res Function(_$RepositoryResponseFailureImpl<R>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$RepositoryResponseFailureImpl<R>(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RepositoryResponseFailureImpl<R>
    implements RepositoryResponseFailure<R> {
  const _$RepositoryResponseFailureImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'RepositoryResponse<$R>.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RepositoryResponseFailureImpl<R> &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RepositoryResponseFailureImplCopyWith<R,
          _$RepositoryResponseFailureImpl<R>>
      get copyWith => __$$RepositoryResponseFailureImplCopyWithImpl<R,
          _$RepositoryResponseFailureImpl<R>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(R result) done,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(R result)? done,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(R result)? done,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RepositoryResponseSuccess<R> value) done,
    required TResult Function(RepositoryResponseFailure<R> value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RepositoryResponseSuccess<R> value)? done,
    TResult? Function(RepositoryResponseFailure<R> value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RepositoryResponseSuccess<R> value)? done,
    TResult Function(RepositoryResponseFailure<R> value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class RepositoryResponseFailure<R> implements RepositoryResponse<R> {
  const factory RepositoryResponseFailure(final String message) =
      _$RepositoryResponseFailureImpl<R>;

  String get message;
  @JsonKey(ignore: true)
  _$$RepositoryResponseFailureImplCopyWith<R,
          _$RepositoryResponseFailureImpl<R>>
      get copyWith => throw _privateConstructorUsedError;
}
