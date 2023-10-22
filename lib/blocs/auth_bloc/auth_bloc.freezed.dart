// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String emailAddress, String password)
        userLoggedIn,
    required TResult Function(String emailAddress, String password)
        registeredUser,
    required TResult Function() signedUserOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String emailAddress, String password)? userLoggedIn,
    TResult? Function(String emailAddress, String password)? registeredUser,
    TResult? Function()? signedUserOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String emailAddress, String password)? userLoggedIn,
    TResult Function(String emailAddress, String password)? registeredUser,
    TResult Function()? signedUserOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_UserLoggedIn value) userLoggedIn,
    required TResult Function(_RegisteredUser value) registeredUser,
    required TResult Function(__UserLoggedOut value) signedUserOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_UserLoggedIn value)? userLoggedIn,
    TResult? Function(_RegisteredUser value)? registeredUser,
    TResult? Function(__UserLoggedOut value)? signedUserOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_UserLoggedIn value)? userLoggedIn,
    TResult Function(_RegisteredUser value)? registeredUser,
    TResult Function(__UserLoggedOut value)? signedUserOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res, AuthEvent>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res, $Val extends AuthEvent>
    implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

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
    extends _$AuthEventCopyWithImpl<$Res, _$StartedImpl>
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
    return 'AuthEvent.started()';
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
    required TResult Function(String emailAddress, String password)
        userLoggedIn,
    required TResult Function(String emailAddress, String password)
        registeredUser,
    required TResult Function() signedUserOut,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String emailAddress, String password)? userLoggedIn,
    TResult? Function(String emailAddress, String password)? registeredUser,
    TResult? Function()? signedUserOut,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String emailAddress, String password)? userLoggedIn,
    TResult Function(String emailAddress, String password)? registeredUser,
    TResult Function()? signedUserOut,
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
    required TResult Function(_UserLoggedIn value) userLoggedIn,
    required TResult Function(_RegisteredUser value) registeredUser,
    required TResult Function(__UserLoggedOut value) signedUserOut,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_UserLoggedIn value)? userLoggedIn,
    TResult? Function(_RegisteredUser value)? registeredUser,
    TResult? Function(__UserLoggedOut value)? signedUserOut,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_UserLoggedIn value)? userLoggedIn,
    TResult Function(_RegisteredUser value)? registeredUser,
    TResult Function(__UserLoggedOut value)? signedUserOut,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements AuthEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$UserLoggedInImplCopyWith<$Res> {
  factory _$$UserLoggedInImplCopyWith(
          _$UserLoggedInImpl value, $Res Function(_$UserLoggedInImpl) then) =
      __$$UserLoggedInImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String emailAddress, String password});
}

/// @nodoc
class __$$UserLoggedInImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$UserLoggedInImpl>
    implements _$$UserLoggedInImplCopyWith<$Res> {
  __$$UserLoggedInImplCopyWithImpl(
      _$UserLoggedInImpl _value, $Res Function(_$UserLoggedInImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? emailAddress = null,
    Object? password = null,
  }) {
    return _then(_$UserLoggedInImpl(
      null == emailAddress
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as String,
      null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UserLoggedInImpl implements _UserLoggedIn {
  const _$UserLoggedInImpl(this.emailAddress, this.password);

  @override
  final String emailAddress;
  @override
  final String password;

  @override
  String toString() {
    return 'AuthEvent.userLoggedIn(emailAddress: $emailAddress, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserLoggedInImpl &&
            (identical(other.emailAddress, emailAddress) ||
                other.emailAddress == emailAddress) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, emailAddress, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserLoggedInImplCopyWith<_$UserLoggedInImpl> get copyWith =>
      __$$UserLoggedInImplCopyWithImpl<_$UserLoggedInImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String emailAddress, String password)
        userLoggedIn,
    required TResult Function(String emailAddress, String password)
        registeredUser,
    required TResult Function() signedUserOut,
  }) {
    return userLoggedIn(emailAddress, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String emailAddress, String password)? userLoggedIn,
    TResult? Function(String emailAddress, String password)? registeredUser,
    TResult? Function()? signedUserOut,
  }) {
    return userLoggedIn?.call(emailAddress, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String emailAddress, String password)? userLoggedIn,
    TResult Function(String emailAddress, String password)? registeredUser,
    TResult Function()? signedUserOut,
    required TResult orElse(),
  }) {
    if (userLoggedIn != null) {
      return userLoggedIn(emailAddress, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_UserLoggedIn value) userLoggedIn,
    required TResult Function(_RegisteredUser value) registeredUser,
    required TResult Function(__UserLoggedOut value) signedUserOut,
  }) {
    return userLoggedIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_UserLoggedIn value)? userLoggedIn,
    TResult? Function(_RegisteredUser value)? registeredUser,
    TResult? Function(__UserLoggedOut value)? signedUserOut,
  }) {
    return userLoggedIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_UserLoggedIn value)? userLoggedIn,
    TResult Function(_RegisteredUser value)? registeredUser,
    TResult Function(__UserLoggedOut value)? signedUserOut,
    required TResult orElse(),
  }) {
    if (userLoggedIn != null) {
      return userLoggedIn(this);
    }
    return orElse();
  }
}

abstract class _UserLoggedIn implements AuthEvent {
  const factory _UserLoggedIn(
      final String emailAddress, final String password) = _$UserLoggedInImpl;

  String get emailAddress;
  String get password;
  @JsonKey(ignore: true)
  _$$UserLoggedInImplCopyWith<_$UserLoggedInImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RegisteredUserImplCopyWith<$Res> {
  factory _$$RegisteredUserImplCopyWith(_$RegisteredUserImpl value,
          $Res Function(_$RegisteredUserImpl) then) =
      __$$RegisteredUserImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String emailAddress, String password});
}

/// @nodoc
class __$$RegisteredUserImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$RegisteredUserImpl>
    implements _$$RegisteredUserImplCopyWith<$Res> {
  __$$RegisteredUserImplCopyWithImpl(
      _$RegisteredUserImpl _value, $Res Function(_$RegisteredUserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? emailAddress = null,
    Object? password = null,
  }) {
    return _then(_$RegisteredUserImpl(
      null == emailAddress
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as String,
      null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RegisteredUserImpl implements _RegisteredUser {
  const _$RegisteredUserImpl(this.emailAddress, this.password);

  @override
  final String emailAddress;
  @override
  final String password;

  @override
  String toString() {
    return 'AuthEvent.registeredUser(emailAddress: $emailAddress, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisteredUserImpl &&
            (identical(other.emailAddress, emailAddress) ||
                other.emailAddress == emailAddress) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, emailAddress, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisteredUserImplCopyWith<_$RegisteredUserImpl> get copyWith =>
      __$$RegisteredUserImplCopyWithImpl<_$RegisteredUserImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String emailAddress, String password)
        userLoggedIn,
    required TResult Function(String emailAddress, String password)
        registeredUser,
    required TResult Function() signedUserOut,
  }) {
    return registeredUser(emailAddress, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String emailAddress, String password)? userLoggedIn,
    TResult? Function(String emailAddress, String password)? registeredUser,
    TResult? Function()? signedUserOut,
  }) {
    return registeredUser?.call(emailAddress, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String emailAddress, String password)? userLoggedIn,
    TResult Function(String emailAddress, String password)? registeredUser,
    TResult Function()? signedUserOut,
    required TResult orElse(),
  }) {
    if (registeredUser != null) {
      return registeredUser(emailAddress, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_UserLoggedIn value) userLoggedIn,
    required TResult Function(_RegisteredUser value) registeredUser,
    required TResult Function(__UserLoggedOut value) signedUserOut,
  }) {
    return registeredUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_UserLoggedIn value)? userLoggedIn,
    TResult? Function(_RegisteredUser value)? registeredUser,
    TResult? Function(__UserLoggedOut value)? signedUserOut,
  }) {
    return registeredUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_UserLoggedIn value)? userLoggedIn,
    TResult Function(_RegisteredUser value)? registeredUser,
    TResult Function(__UserLoggedOut value)? signedUserOut,
    required TResult orElse(),
  }) {
    if (registeredUser != null) {
      return registeredUser(this);
    }
    return orElse();
  }
}

abstract class _RegisteredUser implements AuthEvent {
  const factory _RegisteredUser(
      final String emailAddress, final String password) = _$RegisteredUserImpl;

  String get emailAddress;
  String get password;
  @JsonKey(ignore: true)
  _$$RegisteredUserImplCopyWith<_$RegisteredUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UserLoggedOutImplCopyWith<$Res> {
  factory _$$_UserLoggedOutImplCopyWith(_$_UserLoggedOutImpl value,
          $Res Function(_$_UserLoggedOutImpl) then) =
      __$$_UserLoggedOutImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_UserLoggedOutImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_UserLoggedOutImpl>
    implements _$$_UserLoggedOutImplCopyWith<$Res> {
  __$$_UserLoggedOutImplCopyWithImpl(
      _$_UserLoggedOutImpl _value, $Res Function(_$_UserLoggedOutImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_UserLoggedOutImpl implements __UserLoggedOut {
  const _$_UserLoggedOutImpl();

  @override
  String toString() {
    return 'AuthEvent.signedUserOut()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_UserLoggedOutImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String emailAddress, String password)
        userLoggedIn,
    required TResult Function(String emailAddress, String password)
        registeredUser,
    required TResult Function() signedUserOut,
  }) {
    return signedUserOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String emailAddress, String password)? userLoggedIn,
    TResult? Function(String emailAddress, String password)? registeredUser,
    TResult? Function()? signedUserOut,
  }) {
    return signedUserOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String emailAddress, String password)? userLoggedIn,
    TResult Function(String emailAddress, String password)? registeredUser,
    TResult Function()? signedUserOut,
    required TResult orElse(),
  }) {
    if (signedUserOut != null) {
      return signedUserOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_UserLoggedIn value) userLoggedIn,
    required TResult Function(_RegisteredUser value) registeredUser,
    required TResult Function(__UserLoggedOut value) signedUserOut,
  }) {
    return signedUserOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_UserLoggedIn value)? userLoggedIn,
    TResult? Function(_RegisteredUser value)? registeredUser,
    TResult? Function(__UserLoggedOut value)? signedUserOut,
  }) {
    return signedUserOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_UserLoggedIn value)? userLoggedIn,
    TResult Function(_RegisteredUser value)? registeredUser,
    TResult Function(__UserLoggedOut value)? signedUserOut,
    required TResult orElse(),
  }) {
    if (signedUserOut != null) {
      return signedUserOut(this);
    }
    return orElse();
  }
}

abstract class __UserLoggedOut implements AuthEvent {
  const factory __UserLoggedOut() = _$_UserLoggedOutImpl;
}

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() authenticationInProgress,
    required TResult Function(User? user) authenticationSuccess,
    required TResult Function(String exception) authenticationFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? authenticationInProgress,
    TResult? Function(User? user)? authenticationSuccess,
    TResult? Function(String exception)? authenticationFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? authenticationInProgress,
    TResult Function(User? user)? authenticationSuccess,
    TResult Function(String exception)? authenticationFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthInitial value) initial,
    required TResult Function(AuthenticationInProgress value)
        authenticationInProgress,
    required TResult Function(AuthenticationSuccess value)
        authenticationSuccess,
    required TResult Function(AuthenticationFailure value)
        authenticationFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthInitial value)? initial,
    TResult? Function(AuthenticationInProgress value)? authenticationInProgress,
    TResult? Function(AuthenticationSuccess value)? authenticationSuccess,
    TResult? Function(AuthenticationFailure value)? authenticationFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthInitial value)? initial,
    TResult Function(AuthenticationInProgress value)? authenticationInProgress,
    TResult Function(AuthenticationSuccess value)? authenticationSuccess,
    TResult Function(AuthenticationFailure value)? authenticationFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AuthInitialImplCopyWith<$Res> {
  factory _$$AuthInitialImplCopyWith(
          _$AuthInitialImpl value, $Res Function(_$AuthInitialImpl) then) =
      __$$AuthInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthInitialImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthInitialImpl>
    implements _$$AuthInitialImplCopyWith<$Res> {
  __$$AuthInitialImplCopyWithImpl(
      _$AuthInitialImpl _value, $Res Function(_$AuthInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AuthInitialImpl implements AuthInitial {
  const _$AuthInitialImpl();

  @override
  String toString() {
    return 'AuthState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AuthInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() authenticationInProgress,
    required TResult Function(User? user) authenticationSuccess,
    required TResult Function(String exception) authenticationFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? authenticationInProgress,
    TResult? Function(User? user)? authenticationSuccess,
    TResult? Function(String exception)? authenticationFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? authenticationInProgress,
    TResult Function(User? user)? authenticationSuccess,
    TResult Function(String exception)? authenticationFailure,
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
    required TResult Function(AuthInitial value) initial,
    required TResult Function(AuthenticationInProgress value)
        authenticationInProgress,
    required TResult Function(AuthenticationSuccess value)
        authenticationSuccess,
    required TResult Function(AuthenticationFailure value)
        authenticationFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthInitial value)? initial,
    TResult? Function(AuthenticationInProgress value)? authenticationInProgress,
    TResult? Function(AuthenticationSuccess value)? authenticationSuccess,
    TResult? Function(AuthenticationFailure value)? authenticationFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthInitial value)? initial,
    TResult Function(AuthenticationInProgress value)? authenticationInProgress,
    TResult Function(AuthenticationSuccess value)? authenticationSuccess,
    TResult Function(AuthenticationFailure value)? authenticationFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class AuthInitial implements AuthState {
  const factory AuthInitial() = _$AuthInitialImpl;
}

/// @nodoc
abstract class _$$AuthenticationInProgressImplCopyWith<$Res> {
  factory _$$AuthenticationInProgressImplCopyWith(
          _$AuthenticationInProgressImpl value,
          $Res Function(_$AuthenticationInProgressImpl) then) =
      __$$AuthenticationInProgressImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthenticationInProgressImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthenticationInProgressImpl>
    implements _$$AuthenticationInProgressImplCopyWith<$Res> {
  __$$AuthenticationInProgressImplCopyWithImpl(
      _$AuthenticationInProgressImpl _value,
      $Res Function(_$AuthenticationInProgressImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AuthenticationInProgressImpl implements AuthenticationInProgress {
  const _$AuthenticationInProgressImpl();

  @override
  String toString() {
    return 'AuthState.authenticationInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthenticationInProgressImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() authenticationInProgress,
    required TResult Function(User? user) authenticationSuccess,
    required TResult Function(String exception) authenticationFailure,
  }) {
    return authenticationInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? authenticationInProgress,
    TResult? Function(User? user)? authenticationSuccess,
    TResult? Function(String exception)? authenticationFailure,
  }) {
    return authenticationInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? authenticationInProgress,
    TResult Function(User? user)? authenticationSuccess,
    TResult Function(String exception)? authenticationFailure,
    required TResult orElse(),
  }) {
    if (authenticationInProgress != null) {
      return authenticationInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthInitial value) initial,
    required TResult Function(AuthenticationInProgress value)
        authenticationInProgress,
    required TResult Function(AuthenticationSuccess value)
        authenticationSuccess,
    required TResult Function(AuthenticationFailure value)
        authenticationFailure,
  }) {
    return authenticationInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthInitial value)? initial,
    TResult? Function(AuthenticationInProgress value)? authenticationInProgress,
    TResult? Function(AuthenticationSuccess value)? authenticationSuccess,
    TResult? Function(AuthenticationFailure value)? authenticationFailure,
  }) {
    return authenticationInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthInitial value)? initial,
    TResult Function(AuthenticationInProgress value)? authenticationInProgress,
    TResult Function(AuthenticationSuccess value)? authenticationSuccess,
    TResult Function(AuthenticationFailure value)? authenticationFailure,
    required TResult orElse(),
  }) {
    if (authenticationInProgress != null) {
      return authenticationInProgress(this);
    }
    return orElse();
  }
}

abstract class AuthenticationInProgress implements AuthState {
  const factory AuthenticationInProgress() = _$AuthenticationInProgressImpl;
}

/// @nodoc
abstract class _$$AuthenticationSuccessImplCopyWith<$Res> {
  factory _$$AuthenticationSuccessImplCopyWith(
          _$AuthenticationSuccessImpl value,
          $Res Function(_$AuthenticationSuccessImpl) then) =
      __$$AuthenticationSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({User? user});
}

/// @nodoc
class __$$AuthenticationSuccessImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthenticationSuccessImpl>
    implements _$$AuthenticationSuccessImplCopyWith<$Res> {
  __$$AuthenticationSuccessImplCopyWithImpl(_$AuthenticationSuccessImpl _value,
      $Res Function(_$AuthenticationSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_$AuthenticationSuccessImpl(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
    ));
  }
}

/// @nodoc

class _$AuthenticationSuccessImpl implements AuthenticationSuccess {
  const _$AuthenticationSuccessImpl({this.user});

  @override
  final User? user;

  @override
  String toString() {
    return 'AuthState.authenticationSuccess(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthenticationSuccessImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthenticationSuccessImplCopyWith<_$AuthenticationSuccessImpl>
      get copyWith => __$$AuthenticationSuccessImplCopyWithImpl<
          _$AuthenticationSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() authenticationInProgress,
    required TResult Function(User? user) authenticationSuccess,
    required TResult Function(String exception) authenticationFailure,
  }) {
    return authenticationSuccess(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? authenticationInProgress,
    TResult? Function(User? user)? authenticationSuccess,
    TResult? Function(String exception)? authenticationFailure,
  }) {
    return authenticationSuccess?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? authenticationInProgress,
    TResult Function(User? user)? authenticationSuccess,
    TResult Function(String exception)? authenticationFailure,
    required TResult orElse(),
  }) {
    if (authenticationSuccess != null) {
      return authenticationSuccess(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthInitial value) initial,
    required TResult Function(AuthenticationInProgress value)
        authenticationInProgress,
    required TResult Function(AuthenticationSuccess value)
        authenticationSuccess,
    required TResult Function(AuthenticationFailure value)
        authenticationFailure,
  }) {
    return authenticationSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthInitial value)? initial,
    TResult? Function(AuthenticationInProgress value)? authenticationInProgress,
    TResult? Function(AuthenticationSuccess value)? authenticationSuccess,
    TResult? Function(AuthenticationFailure value)? authenticationFailure,
  }) {
    return authenticationSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthInitial value)? initial,
    TResult Function(AuthenticationInProgress value)? authenticationInProgress,
    TResult Function(AuthenticationSuccess value)? authenticationSuccess,
    TResult Function(AuthenticationFailure value)? authenticationFailure,
    required TResult orElse(),
  }) {
    if (authenticationSuccess != null) {
      return authenticationSuccess(this);
    }
    return orElse();
  }
}

abstract class AuthenticationSuccess implements AuthState {
  const factory AuthenticationSuccess({final User? user}) =
      _$AuthenticationSuccessImpl;

  User? get user;
  @JsonKey(ignore: true)
  _$$AuthenticationSuccessImplCopyWith<_$AuthenticationSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AuthenticationFailureImplCopyWith<$Res> {
  factory _$$AuthenticationFailureImplCopyWith(
          _$AuthenticationFailureImpl value,
          $Res Function(_$AuthenticationFailureImpl) then) =
      __$$AuthenticationFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String exception});
}

/// @nodoc
class __$$AuthenticationFailureImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthenticationFailureImpl>
    implements _$$AuthenticationFailureImplCopyWith<$Res> {
  __$$AuthenticationFailureImplCopyWithImpl(_$AuthenticationFailureImpl _value,
      $Res Function(_$AuthenticationFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? exception = null,
  }) {
    return _then(_$AuthenticationFailureImpl(
      exception: null == exception
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AuthenticationFailureImpl implements AuthenticationFailure {
  const _$AuthenticationFailureImpl({required this.exception});

  @override
  final String exception;

  @override
  String toString() {
    return 'AuthState.authenticationFailure(exception: $exception)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthenticationFailureImpl &&
            (identical(other.exception, exception) ||
                other.exception == exception));
  }

  @override
  int get hashCode => Object.hash(runtimeType, exception);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthenticationFailureImplCopyWith<_$AuthenticationFailureImpl>
      get copyWith => __$$AuthenticationFailureImplCopyWithImpl<
          _$AuthenticationFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() authenticationInProgress,
    required TResult Function(User? user) authenticationSuccess,
    required TResult Function(String exception) authenticationFailure,
  }) {
    return authenticationFailure(exception);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? authenticationInProgress,
    TResult? Function(User? user)? authenticationSuccess,
    TResult? Function(String exception)? authenticationFailure,
  }) {
    return authenticationFailure?.call(exception);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? authenticationInProgress,
    TResult Function(User? user)? authenticationSuccess,
    TResult Function(String exception)? authenticationFailure,
    required TResult orElse(),
  }) {
    if (authenticationFailure != null) {
      return authenticationFailure(exception);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthInitial value) initial,
    required TResult Function(AuthenticationInProgress value)
        authenticationInProgress,
    required TResult Function(AuthenticationSuccess value)
        authenticationSuccess,
    required TResult Function(AuthenticationFailure value)
        authenticationFailure,
  }) {
    return authenticationFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthInitial value)? initial,
    TResult? Function(AuthenticationInProgress value)? authenticationInProgress,
    TResult? Function(AuthenticationSuccess value)? authenticationSuccess,
    TResult? Function(AuthenticationFailure value)? authenticationFailure,
  }) {
    return authenticationFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthInitial value)? initial,
    TResult Function(AuthenticationInProgress value)? authenticationInProgress,
    TResult Function(AuthenticationSuccess value)? authenticationSuccess,
    TResult Function(AuthenticationFailure value)? authenticationFailure,
    required TResult orElse(),
  }) {
    if (authenticationFailure != null) {
      return authenticationFailure(this);
    }
    return orElse();
  }
}

abstract class AuthenticationFailure implements AuthState {
  const factory AuthenticationFailure({required final String exception}) =
      _$AuthenticationFailureImpl;

  String get exception;
  @JsonKey(ignore: true)
  _$$AuthenticationFailureImplCopyWith<_$AuthenticationFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}
