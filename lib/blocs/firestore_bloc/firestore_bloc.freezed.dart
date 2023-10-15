// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'firestore_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FirestoreEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(UserModel user) savedUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(UserModel user)? savedUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(UserModel user)? savedUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SavedUser value) savedUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SavedUser value)? savedUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SavedUser value)? savedUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FirestoreEventCopyWith<$Res> {
  factory $FirestoreEventCopyWith(
          FirestoreEvent value, $Res Function(FirestoreEvent) then) =
      _$FirestoreEventCopyWithImpl<$Res, FirestoreEvent>;
}

/// @nodoc
class _$FirestoreEventCopyWithImpl<$Res, $Val extends FirestoreEvent>
    implements $FirestoreEventCopyWith<$Res> {
  _$FirestoreEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$FirestoreEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'FirestoreEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(UserModel user) savedUser,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(UserModel user)? savedUser,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(UserModel user)? savedUser,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SavedUser value) savedUser,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SavedUser value)? savedUser,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SavedUser value)? savedUser,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements FirestoreEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$SavedUserImplCopyWith<$Res> {
  factory _$$SavedUserImplCopyWith(
          _$SavedUserImpl value, $Res Function(_$SavedUserImpl) then) =
      __$$SavedUserImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UserModel user});

  $UserModelCopyWith<$Res> get user;
}

/// @nodoc
class __$$SavedUserImplCopyWithImpl<$Res>
    extends _$FirestoreEventCopyWithImpl<$Res, _$SavedUserImpl>
    implements _$$SavedUserImplCopyWith<$Res> {
  __$$SavedUserImplCopyWithImpl(
      _$SavedUserImpl _value, $Res Function(_$SavedUserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$SavedUserImpl(
      null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $UserModelCopyWith<$Res> get user {
    return $UserModelCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$SavedUserImpl implements _SavedUser {
  const _$SavedUserImpl(this.user);

  @override
  final UserModel user;

  @override
  String toString() {
    return 'FirestoreEvent.savedUser(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SavedUserImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SavedUserImplCopyWith<_$SavedUserImpl> get copyWith =>
      __$$SavedUserImplCopyWithImpl<_$SavedUserImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(UserModel user) savedUser,
  }) {
    return savedUser(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(UserModel user)? savedUser,
  }) {
    return savedUser?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(UserModel user)? savedUser,
    required TResult orElse(),
  }) {
    if (savedUser != null) {
      return savedUser(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SavedUser value) savedUser,
  }) {
    return savedUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SavedUser value)? savedUser,
  }) {
    return savedUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SavedUser value)? savedUser,
    required TResult orElse(),
  }) {
    if (savedUser != null) {
      return savedUser(this);
    }
    return orElse();
  }
}

abstract class _SavedUser implements FirestoreEvent {
  const factory _SavedUser(final UserModel user) = _$SavedUserImpl;

  UserModel get user;
  @JsonKey(ignore: true)
  _$$SavedUserImplCopyWith<_$SavedUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$FirestoreState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() userSavingInProgress,
    required TResult Function(UserModel? user) userSavingSuccess,
    required TResult Function(String exception) userSavingFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? userSavingInProgress,
    TResult? Function(UserModel? user)? userSavingSuccess,
    TResult? Function(String exception)? userSavingFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? userSavingInProgress,
    TResult Function(UserModel? user)? userSavingSuccess,
    TResult Function(String exception)? userSavingFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(UserSavingInProgress value) userSavingInProgress,
    required TResult Function(UserSavingSuccess value) userSavingSuccess,
    required TResult Function(UserSavingFailure value) userSavingFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(UserSavingInProgress value)? userSavingInProgress,
    TResult? Function(UserSavingSuccess value)? userSavingSuccess,
    TResult? Function(UserSavingFailure value)? userSavingFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(UserSavingInProgress value)? userSavingInProgress,
    TResult Function(UserSavingSuccess value)? userSavingSuccess,
    TResult Function(UserSavingFailure value)? userSavingFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FirestoreStateCopyWith<$Res> {
  factory $FirestoreStateCopyWith(
          FirestoreState value, $Res Function(FirestoreState) then) =
      _$FirestoreStateCopyWithImpl<$Res, FirestoreState>;
}

/// @nodoc
class _$FirestoreStateCopyWithImpl<$Res, $Val extends FirestoreState>
    implements $FirestoreStateCopyWith<$Res> {
  _$FirestoreStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$FirestoreStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'FirestoreState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() userSavingInProgress,
    required TResult Function(UserModel? user) userSavingSuccess,
    required TResult Function(String exception) userSavingFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? userSavingInProgress,
    TResult? Function(UserModel? user)? userSavingSuccess,
    TResult? Function(String exception)? userSavingFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? userSavingInProgress,
    TResult Function(UserModel? user)? userSavingSuccess,
    TResult Function(String exception)? userSavingFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(UserSavingInProgress value) userSavingInProgress,
    required TResult Function(UserSavingSuccess value) userSavingSuccess,
    required TResult Function(UserSavingFailure value) userSavingFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(UserSavingInProgress value)? userSavingInProgress,
    TResult? Function(UserSavingSuccess value)? userSavingSuccess,
    TResult? Function(UserSavingFailure value)? userSavingFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(UserSavingInProgress value)? userSavingInProgress,
    TResult Function(UserSavingSuccess value)? userSavingSuccess,
    TResult Function(UserSavingFailure value)? userSavingFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements FirestoreState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$UserSavingInProgressImplCopyWith<$Res> {
  factory _$$UserSavingInProgressImplCopyWith(_$UserSavingInProgressImpl value,
          $Res Function(_$UserSavingInProgressImpl) then) =
      __$$UserSavingInProgressImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UserSavingInProgressImplCopyWithImpl<$Res>
    extends _$FirestoreStateCopyWithImpl<$Res, _$UserSavingInProgressImpl>
    implements _$$UserSavingInProgressImplCopyWith<$Res> {
  __$$UserSavingInProgressImplCopyWithImpl(_$UserSavingInProgressImpl _value,
      $Res Function(_$UserSavingInProgressImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UserSavingInProgressImpl implements UserSavingInProgress {
  const _$UserSavingInProgressImpl();

  @override
  String toString() {
    return 'FirestoreState.userSavingInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserSavingInProgressImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() userSavingInProgress,
    required TResult Function(UserModel? user) userSavingSuccess,
    required TResult Function(String exception) userSavingFailure,
  }) {
    return userSavingInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? userSavingInProgress,
    TResult? Function(UserModel? user)? userSavingSuccess,
    TResult? Function(String exception)? userSavingFailure,
  }) {
    return userSavingInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? userSavingInProgress,
    TResult Function(UserModel? user)? userSavingSuccess,
    TResult Function(String exception)? userSavingFailure,
    required TResult orElse(),
  }) {
    if (userSavingInProgress != null) {
      return userSavingInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(UserSavingInProgress value) userSavingInProgress,
    required TResult Function(UserSavingSuccess value) userSavingSuccess,
    required TResult Function(UserSavingFailure value) userSavingFailure,
  }) {
    return userSavingInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(UserSavingInProgress value)? userSavingInProgress,
    TResult? Function(UserSavingSuccess value)? userSavingSuccess,
    TResult? Function(UserSavingFailure value)? userSavingFailure,
  }) {
    return userSavingInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(UserSavingInProgress value)? userSavingInProgress,
    TResult Function(UserSavingSuccess value)? userSavingSuccess,
    TResult Function(UserSavingFailure value)? userSavingFailure,
    required TResult orElse(),
  }) {
    if (userSavingInProgress != null) {
      return userSavingInProgress(this);
    }
    return orElse();
  }
}

abstract class UserSavingInProgress implements FirestoreState {
  const factory UserSavingInProgress() = _$UserSavingInProgressImpl;
}

/// @nodoc
abstract class _$$UserSavingSuccessImplCopyWith<$Res> {
  factory _$$UserSavingSuccessImplCopyWith(_$UserSavingSuccessImpl value,
          $Res Function(_$UserSavingSuccessImpl) then) =
      __$$UserSavingSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UserModel? user});

  $UserModelCopyWith<$Res>? get user;
}

/// @nodoc
class __$$UserSavingSuccessImplCopyWithImpl<$Res>
    extends _$FirestoreStateCopyWithImpl<$Res, _$UserSavingSuccessImpl>
    implements _$$UserSavingSuccessImplCopyWith<$Res> {
  __$$UserSavingSuccessImplCopyWithImpl(_$UserSavingSuccessImpl _value,
      $Res Function(_$UserSavingSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_$UserSavingSuccessImpl(
      freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $UserModelCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserModelCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$UserSavingSuccessImpl implements UserSavingSuccess {
  const _$UserSavingSuccessImpl(this.user);

  @override
  final UserModel? user;

  @override
  String toString() {
    return 'FirestoreState.userSavingSuccess(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserSavingSuccessImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserSavingSuccessImplCopyWith<_$UserSavingSuccessImpl> get copyWith =>
      __$$UserSavingSuccessImplCopyWithImpl<_$UserSavingSuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() userSavingInProgress,
    required TResult Function(UserModel? user) userSavingSuccess,
    required TResult Function(String exception) userSavingFailure,
  }) {
    return userSavingSuccess(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? userSavingInProgress,
    TResult? Function(UserModel? user)? userSavingSuccess,
    TResult? Function(String exception)? userSavingFailure,
  }) {
    return userSavingSuccess?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? userSavingInProgress,
    TResult Function(UserModel? user)? userSavingSuccess,
    TResult Function(String exception)? userSavingFailure,
    required TResult orElse(),
  }) {
    if (userSavingSuccess != null) {
      return userSavingSuccess(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(UserSavingInProgress value) userSavingInProgress,
    required TResult Function(UserSavingSuccess value) userSavingSuccess,
    required TResult Function(UserSavingFailure value) userSavingFailure,
  }) {
    return userSavingSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(UserSavingInProgress value)? userSavingInProgress,
    TResult? Function(UserSavingSuccess value)? userSavingSuccess,
    TResult? Function(UserSavingFailure value)? userSavingFailure,
  }) {
    return userSavingSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(UserSavingInProgress value)? userSavingInProgress,
    TResult Function(UserSavingSuccess value)? userSavingSuccess,
    TResult Function(UserSavingFailure value)? userSavingFailure,
    required TResult orElse(),
  }) {
    if (userSavingSuccess != null) {
      return userSavingSuccess(this);
    }
    return orElse();
  }
}

abstract class UserSavingSuccess implements FirestoreState {
  const factory UserSavingSuccess(final UserModel? user) =
      _$UserSavingSuccessImpl;

  UserModel? get user;
  @JsonKey(ignore: true)
  _$$UserSavingSuccessImplCopyWith<_$UserSavingSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UserSavingFailureImplCopyWith<$Res> {
  factory _$$UserSavingFailureImplCopyWith(_$UserSavingFailureImpl value,
          $Res Function(_$UserSavingFailureImpl) then) =
      __$$UserSavingFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String exception});
}

/// @nodoc
class __$$UserSavingFailureImplCopyWithImpl<$Res>
    extends _$FirestoreStateCopyWithImpl<$Res, _$UserSavingFailureImpl>
    implements _$$UserSavingFailureImplCopyWith<$Res> {
  __$$UserSavingFailureImplCopyWithImpl(_$UserSavingFailureImpl _value,
      $Res Function(_$UserSavingFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? exception = null,
  }) {
    return _then(_$UserSavingFailureImpl(
      exception: null == exception
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UserSavingFailureImpl implements UserSavingFailure {
  const _$UserSavingFailureImpl({required this.exception});

  @override
  final String exception;

  @override
  String toString() {
    return 'FirestoreState.userSavingFailure(exception: $exception)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserSavingFailureImpl &&
            (identical(other.exception, exception) ||
                other.exception == exception));
  }

  @override
  int get hashCode => Object.hash(runtimeType, exception);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserSavingFailureImplCopyWith<_$UserSavingFailureImpl> get copyWith =>
      __$$UserSavingFailureImplCopyWithImpl<_$UserSavingFailureImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() userSavingInProgress,
    required TResult Function(UserModel? user) userSavingSuccess,
    required TResult Function(String exception) userSavingFailure,
  }) {
    return userSavingFailure(exception);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? userSavingInProgress,
    TResult? Function(UserModel? user)? userSavingSuccess,
    TResult? Function(String exception)? userSavingFailure,
  }) {
    return userSavingFailure?.call(exception);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? userSavingInProgress,
    TResult Function(UserModel? user)? userSavingSuccess,
    TResult Function(String exception)? userSavingFailure,
    required TResult orElse(),
  }) {
    if (userSavingFailure != null) {
      return userSavingFailure(exception);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(UserSavingInProgress value) userSavingInProgress,
    required TResult Function(UserSavingSuccess value) userSavingSuccess,
    required TResult Function(UserSavingFailure value) userSavingFailure,
  }) {
    return userSavingFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(UserSavingInProgress value)? userSavingInProgress,
    TResult? Function(UserSavingSuccess value)? userSavingSuccess,
    TResult? Function(UserSavingFailure value)? userSavingFailure,
  }) {
    return userSavingFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(UserSavingInProgress value)? userSavingInProgress,
    TResult Function(UserSavingSuccess value)? userSavingSuccess,
    TResult Function(UserSavingFailure value)? userSavingFailure,
    required TResult orElse(),
  }) {
    if (userSavingFailure != null) {
      return userSavingFailure(this);
    }
    return orElse();
  }
}

abstract class UserSavingFailure implements FirestoreState {
  const factory UserSavingFailure({required final String exception}) =
      _$UserSavingFailureImpl;

  String get exception;
  @JsonKey(ignore: true)
  _$$UserSavingFailureImplCopyWith<_$UserSavingFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
