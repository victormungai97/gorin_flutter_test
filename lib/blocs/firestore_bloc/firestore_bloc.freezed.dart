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
    required TResult Function(String emailAddress) userGot,
    required TResult Function(bool reload) retrievedUsers,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(UserModel user)? savedUser,
    TResult? Function(String emailAddress)? userGot,
    TResult? Function(bool reload)? retrievedUsers,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(UserModel user)? savedUser,
    TResult Function(String emailAddress)? userGot,
    TResult Function(bool reload)? retrievedUsers,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SavedUser value) savedUser,
    required TResult Function(_UserGot value) userGot,
    required TResult Function(_RetrievedUsers value) retrievedUsers,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SavedUser value)? savedUser,
    TResult? Function(_UserGot value)? userGot,
    TResult? Function(_RetrievedUsers value)? retrievedUsers,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SavedUser value)? savedUser,
    TResult Function(_UserGot value)? userGot,
    TResult Function(_RetrievedUsers value)? retrievedUsers,
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
    required TResult Function(String emailAddress) userGot,
    required TResult Function(bool reload) retrievedUsers,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(UserModel user)? savedUser,
    TResult? Function(String emailAddress)? userGot,
    TResult? Function(bool reload)? retrievedUsers,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(UserModel user)? savedUser,
    TResult Function(String emailAddress)? userGot,
    TResult Function(bool reload)? retrievedUsers,
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
    required TResult Function(_UserGot value) userGot,
    required TResult Function(_RetrievedUsers value) retrievedUsers,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SavedUser value)? savedUser,
    TResult? Function(_UserGot value)? userGot,
    TResult? Function(_RetrievedUsers value)? retrievedUsers,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SavedUser value)? savedUser,
    TResult Function(_UserGot value)? userGot,
    TResult Function(_RetrievedUsers value)? retrievedUsers,
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
    required TResult Function(String emailAddress) userGot,
    required TResult Function(bool reload) retrievedUsers,
  }) {
    return savedUser(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(UserModel user)? savedUser,
    TResult? Function(String emailAddress)? userGot,
    TResult? Function(bool reload)? retrievedUsers,
  }) {
    return savedUser?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(UserModel user)? savedUser,
    TResult Function(String emailAddress)? userGot,
    TResult Function(bool reload)? retrievedUsers,
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
    required TResult Function(_UserGot value) userGot,
    required TResult Function(_RetrievedUsers value) retrievedUsers,
  }) {
    return savedUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SavedUser value)? savedUser,
    TResult? Function(_UserGot value)? userGot,
    TResult? Function(_RetrievedUsers value)? retrievedUsers,
  }) {
    return savedUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SavedUser value)? savedUser,
    TResult Function(_UserGot value)? userGot,
    TResult Function(_RetrievedUsers value)? retrievedUsers,
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
abstract class _$$UserGotImplCopyWith<$Res> {
  factory _$$UserGotImplCopyWith(
          _$UserGotImpl value, $Res Function(_$UserGotImpl) then) =
      __$$UserGotImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String emailAddress});
}

/// @nodoc
class __$$UserGotImplCopyWithImpl<$Res>
    extends _$FirestoreEventCopyWithImpl<$Res, _$UserGotImpl>
    implements _$$UserGotImplCopyWith<$Res> {
  __$$UserGotImplCopyWithImpl(
      _$UserGotImpl _value, $Res Function(_$UserGotImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? emailAddress = null,
  }) {
    return _then(_$UserGotImpl(
      null == emailAddress
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UserGotImpl implements _UserGot {
  const _$UserGotImpl(this.emailAddress);

  @override
  final String emailAddress;

  @override
  String toString() {
    return 'FirestoreEvent.userGot(emailAddress: $emailAddress)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserGotImpl &&
            (identical(other.emailAddress, emailAddress) ||
                other.emailAddress == emailAddress));
  }

  @override
  int get hashCode => Object.hash(runtimeType, emailAddress);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserGotImplCopyWith<_$UserGotImpl> get copyWith =>
      __$$UserGotImplCopyWithImpl<_$UserGotImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(UserModel user) savedUser,
    required TResult Function(String emailAddress) userGot,
    required TResult Function(bool reload) retrievedUsers,
  }) {
    return userGot(emailAddress);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(UserModel user)? savedUser,
    TResult? Function(String emailAddress)? userGot,
    TResult? Function(bool reload)? retrievedUsers,
  }) {
    return userGot?.call(emailAddress);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(UserModel user)? savedUser,
    TResult Function(String emailAddress)? userGot,
    TResult Function(bool reload)? retrievedUsers,
    required TResult orElse(),
  }) {
    if (userGot != null) {
      return userGot(emailAddress);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SavedUser value) savedUser,
    required TResult Function(_UserGot value) userGot,
    required TResult Function(_RetrievedUsers value) retrievedUsers,
  }) {
    return userGot(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SavedUser value)? savedUser,
    TResult? Function(_UserGot value)? userGot,
    TResult? Function(_RetrievedUsers value)? retrievedUsers,
  }) {
    return userGot?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SavedUser value)? savedUser,
    TResult Function(_UserGot value)? userGot,
    TResult Function(_RetrievedUsers value)? retrievedUsers,
    required TResult orElse(),
  }) {
    if (userGot != null) {
      return userGot(this);
    }
    return orElse();
  }
}

abstract class _UserGot implements FirestoreEvent {
  const factory _UserGot(final String emailAddress) = _$UserGotImpl;

  String get emailAddress;
  @JsonKey(ignore: true)
  _$$UserGotImplCopyWith<_$UserGotImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RetrievedUsersImplCopyWith<$Res> {
  factory _$$RetrievedUsersImplCopyWith(_$RetrievedUsersImpl value,
          $Res Function(_$RetrievedUsersImpl) then) =
      __$$RetrievedUsersImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool reload});
}

/// @nodoc
class __$$RetrievedUsersImplCopyWithImpl<$Res>
    extends _$FirestoreEventCopyWithImpl<$Res, _$RetrievedUsersImpl>
    implements _$$RetrievedUsersImplCopyWith<$Res> {
  __$$RetrievedUsersImplCopyWithImpl(
      _$RetrievedUsersImpl _value, $Res Function(_$RetrievedUsersImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reload = null,
  }) {
    return _then(_$RetrievedUsersImpl(
      reload: null == reload
          ? _value.reload
          : reload // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$RetrievedUsersImpl implements _RetrievedUsers {
  const _$RetrievedUsersImpl({this.reload = true});

  @override
  @JsonKey()
  final bool reload;

  @override
  String toString() {
    return 'FirestoreEvent.retrievedUsers(reload: $reload)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RetrievedUsersImpl &&
            (identical(other.reload, reload) || other.reload == reload));
  }

  @override
  int get hashCode => Object.hash(runtimeType, reload);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RetrievedUsersImplCopyWith<_$RetrievedUsersImpl> get copyWith =>
      __$$RetrievedUsersImplCopyWithImpl<_$RetrievedUsersImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(UserModel user) savedUser,
    required TResult Function(String emailAddress) userGot,
    required TResult Function(bool reload) retrievedUsers,
  }) {
    return retrievedUsers(reload);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(UserModel user)? savedUser,
    TResult? Function(String emailAddress)? userGot,
    TResult? Function(bool reload)? retrievedUsers,
  }) {
    return retrievedUsers?.call(reload);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(UserModel user)? savedUser,
    TResult Function(String emailAddress)? userGot,
    TResult Function(bool reload)? retrievedUsers,
    required TResult orElse(),
  }) {
    if (retrievedUsers != null) {
      return retrievedUsers(reload);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SavedUser value) savedUser,
    required TResult Function(_UserGot value) userGot,
    required TResult Function(_RetrievedUsers value) retrievedUsers,
  }) {
    return retrievedUsers(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SavedUser value)? savedUser,
    TResult? Function(_UserGot value)? userGot,
    TResult? Function(_RetrievedUsers value)? retrievedUsers,
  }) {
    return retrievedUsers?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SavedUser value)? savedUser,
    TResult Function(_UserGot value)? userGot,
    TResult Function(_RetrievedUsers value)? retrievedUsers,
    required TResult orElse(),
  }) {
    if (retrievedUsers != null) {
      return retrievedUsers(this);
    }
    return orElse();
  }
}

abstract class _RetrievedUsers implements FirestoreEvent {
  const factory _RetrievedUsers({final bool reload}) = _$RetrievedUsersImpl;

  bool get reload;
  @JsonKey(ignore: true)
  _$$RetrievedUsersImplCopyWith<_$RetrievedUsersImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$UserSavingState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() userSavingInProgress,
    required TResult Function(UserModel user) userSavingSuccess,
    required TResult Function(String exception) userSavingFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? userSavingInProgress,
    TResult? Function(UserModel user)? userSavingSuccess,
    TResult? Function(String exception)? userSavingFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? userSavingInProgress,
    TResult Function(UserModel user)? userSavingSuccess,
    TResult Function(String exception)? userSavingFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserSavingInitial value) initial,
    required TResult Function(UserSavingInProgress value) userSavingInProgress,
    required TResult Function(UserSavingSuccess value) userSavingSuccess,
    required TResult Function(UserSavingFailure value) userSavingFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserSavingInitial value)? initial,
    TResult? Function(UserSavingInProgress value)? userSavingInProgress,
    TResult? Function(UserSavingSuccess value)? userSavingSuccess,
    TResult? Function(UserSavingFailure value)? userSavingFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserSavingInitial value)? initial,
    TResult Function(UserSavingInProgress value)? userSavingInProgress,
    TResult Function(UserSavingSuccess value)? userSavingSuccess,
    TResult Function(UserSavingFailure value)? userSavingFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserSavingStateCopyWith<$Res> {
  factory $UserSavingStateCopyWith(
          UserSavingState value, $Res Function(UserSavingState) then) =
      _$UserSavingStateCopyWithImpl<$Res, UserSavingState>;
}

/// @nodoc
class _$UserSavingStateCopyWithImpl<$Res, $Val extends UserSavingState>
    implements $UserSavingStateCopyWith<$Res> {
  _$UserSavingStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$UserSavingInitialImplCopyWith<$Res> {
  factory _$$UserSavingInitialImplCopyWith(_$UserSavingInitialImpl value,
          $Res Function(_$UserSavingInitialImpl) then) =
      __$$UserSavingInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UserSavingInitialImplCopyWithImpl<$Res>
    extends _$UserSavingStateCopyWithImpl<$Res, _$UserSavingInitialImpl>
    implements _$$UserSavingInitialImplCopyWith<$Res> {
  __$$UserSavingInitialImplCopyWithImpl(_$UserSavingInitialImpl _value,
      $Res Function(_$UserSavingInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UserSavingInitialImpl implements UserSavingInitial {
  const _$UserSavingInitialImpl();

  @override
  String toString() {
    return 'UserSavingState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UserSavingInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() userSavingInProgress,
    required TResult Function(UserModel user) userSavingSuccess,
    required TResult Function(String exception) userSavingFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? userSavingInProgress,
    TResult? Function(UserModel user)? userSavingSuccess,
    TResult? Function(String exception)? userSavingFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? userSavingInProgress,
    TResult Function(UserModel user)? userSavingSuccess,
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
    required TResult Function(UserSavingInitial value) initial,
    required TResult Function(UserSavingInProgress value) userSavingInProgress,
    required TResult Function(UserSavingSuccess value) userSavingSuccess,
    required TResult Function(UserSavingFailure value) userSavingFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserSavingInitial value)? initial,
    TResult? Function(UserSavingInProgress value)? userSavingInProgress,
    TResult? Function(UserSavingSuccess value)? userSavingSuccess,
    TResult? Function(UserSavingFailure value)? userSavingFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserSavingInitial value)? initial,
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

abstract class UserSavingInitial implements UserSavingState {
  const factory UserSavingInitial() = _$UserSavingInitialImpl;
}

/// @nodoc
abstract class _$$UserSavingInProgressImplCopyWith<$Res> {
  factory _$$UserSavingInProgressImplCopyWith(_$UserSavingInProgressImpl value,
          $Res Function(_$UserSavingInProgressImpl) then) =
      __$$UserSavingInProgressImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UserSavingInProgressImplCopyWithImpl<$Res>
    extends _$UserSavingStateCopyWithImpl<$Res, _$UserSavingInProgressImpl>
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
    return 'UserSavingState.userSavingInProgress()';
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
    required TResult Function(UserModel user) userSavingSuccess,
    required TResult Function(String exception) userSavingFailure,
  }) {
    return userSavingInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? userSavingInProgress,
    TResult? Function(UserModel user)? userSavingSuccess,
    TResult? Function(String exception)? userSavingFailure,
  }) {
    return userSavingInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? userSavingInProgress,
    TResult Function(UserModel user)? userSavingSuccess,
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
    required TResult Function(UserSavingInitial value) initial,
    required TResult Function(UserSavingInProgress value) userSavingInProgress,
    required TResult Function(UserSavingSuccess value) userSavingSuccess,
    required TResult Function(UserSavingFailure value) userSavingFailure,
  }) {
    return userSavingInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserSavingInitial value)? initial,
    TResult? Function(UserSavingInProgress value)? userSavingInProgress,
    TResult? Function(UserSavingSuccess value)? userSavingSuccess,
    TResult? Function(UserSavingFailure value)? userSavingFailure,
  }) {
    return userSavingInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserSavingInitial value)? initial,
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

abstract class UserSavingInProgress implements UserSavingState {
  const factory UserSavingInProgress() = _$UserSavingInProgressImpl;
}

/// @nodoc
abstract class _$$UserSavingSuccessImplCopyWith<$Res> {
  factory _$$UserSavingSuccessImplCopyWith(_$UserSavingSuccessImpl value,
          $Res Function(_$UserSavingSuccessImpl) then) =
      __$$UserSavingSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UserModel user});

  $UserModelCopyWith<$Res> get user;
}

/// @nodoc
class __$$UserSavingSuccessImplCopyWithImpl<$Res>
    extends _$UserSavingStateCopyWithImpl<$Res, _$UserSavingSuccessImpl>
    implements _$$UserSavingSuccessImplCopyWith<$Res> {
  __$$UserSavingSuccessImplCopyWithImpl(_$UserSavingSuccessImpl _value,
      $Res Function(_$UserSavingSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$UserSavingSuccessImpl(
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

class _$UserSavingSuccessImpl implements UserSavingSuccess {
  const _$UserSavingSuccessImpl(this.user);

  @override
  final UserModel user;

  @override
  String toString() {
    return 'UserSavingState.userSavingSuccess(user: $user)';
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
    required TResult Function(UserModel user) userSavingSuccess,
    required TResult Function(String exception) userSavingFailure,
  }) {
    return userSavingSuccess(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? userSavingInProgress,
    TResult? Function(UserModel user)? userSavingSuccess,
    TResult? Function(String exception)? userSavingFailure,
  }) {
    return userSavingSuccess?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? userSavingInProgress,
    TResult Function(UserModel user)? userSavingSuccess,
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
    required TResult Function(UserSavingInitial value) initial,
    required TResult Function(UserSavingInProgress value) userSavingInProgress,
    required TResult Function(UserSavingSuccess value) userSavingSuccess,
    required TResult Function(UserSavingFailure value) userSavingFailure,
  }) {
    return userSavingSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserSavingInitial value)? initial,
    TResult? Function(UserSavingInProgress value)? userSavingInProgress,
    TResult? Function(UserSavingSuccess value)? userSavingSuccess,
    TResult? Function(UserSavingFailure value)? userSavingFailure,
  }) {
    return userSavingSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserSavingInitial value)? initial,
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

abstract class UserSavingSuccess implements UserSavingState {
  const factory UserSavingSuccess(final UserModel user) =
      _$UserSavingSuccessImpl;

  UserModel get user;
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
    extends _$UserSavingStateCopyWithImpl<$Res, _$UserSavingFailureImpl>
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
    return 'UserSavingState.userSavingFailure(exception: $exception)';
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
    required TResult Function(UserModel user) userSavingSuccess,
    required TResult Function(String exception) userSavingFailure,
  }) {
    return userSavingFailure(exception);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? userSavingInProgress,
    TResult? Function(UserModel user)? userSavingSuccess,
    TResult? Function(String exception)? userSavingFailure,
  }) {
    return userSavingFailure?.call(exception);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? userSavingInProgress,
    TResult Function(UserModel user)? userSavingSuccess,
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
    required TResult Function(UserSavingInitial value) initial,
    required TResult Function(UserSavingInProgress value) userSavingInProgress,
    required TResult Function(UserSavingSuccess value) userSavingSuccess,
    required TResult Function(UserSavingFailure value) userSavingFailure,
  }) {
    return userSavingFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserSavingInitial value)? initial,
    TResult? Function(UserSavingInProgress value)? userSavingInProgress,
    TResult? Function(UserSavingSuccess value)? userSavingSuccess,
    TResult? Function(UserSavingFailure value)? userSavingFailure,
  }) {
    return userSavingFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserSavingInitial value)? initial,
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

abstract class UserSavingFailure implements UserSavingState {
  const factory UserSavingFailure({required final String exception}) =
      _$UserSavingFailureImpl;

  String get exception;
  @JsonKey(ignore: true)
  _$$UserSavingFailureImplCopyWith<_$UserSavingFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ObtainUserState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() obtainUserInProgress,
    required TResult Function(UserModel user) obtainUserSuccess,
    required TResult Function(String exception) obtainUserFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? obtainUserInProgress,
    TResult? Function(UserModel user)? obtainUserSuccess,
    TResult? Function(String exception)? obtainUserFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? obtainUserInProgress,
    TResult Function(UserModel user)? obtainUserSuccess,
    TResult Function(String exception)? obtainUserFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ObtainUserInitial value) initial,
    required TResult Function(ObtainUserInProgress value) obtainUserInProgress,
    required TResult Function(ObtainUserSuccess value) obtainUserSuccess,
    required TResult Function(ObtainUserFailure value) obtainUserFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ObtainUserInitial value)? initial,
    TResult? Function(ObtainUserInProgress value)? obtainUserInProgress,
    TResult? Function(ObtainUserSuccess value)? obtainUserSuccess,
    TResult? Function(ObtainUserFailure value)? obtainUserFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ObtainUserInitial value)? initial,
    TResult Function(ObtainUserInProgress value)? obtainUserInProgress,
    TResult Function(ObtainUserSuccess value)? obtainUserSuccess,
    TResult Function(ObtainUserFailure value)? obtainUserFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ObtainUserStateCopyWith<$Res> {
  factory $ObtainUserStateCopyWith(
          ObtainUserState value, $Res Function(ObtainUserState) then) =
      _$ObtainUserStateCopyWithImpl<$Res, ObtainUserState>;
}

/// @nodoc
class _$ObtainUserStateCopyWithImpl<$Res, $Val extends ObtainUserState>
    implements $ObtainUserStateCopyWith<$Res> {
  _$ObtainUserStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ObtainUserInitialImplCopyWith<$Res> {
  factory _$$ObtainUserInitialImplCopyWith(_$ObtainUserInitialImpl value,
          $Res Function(_$ObtainUserInitialImpl) then) =
      __$$ObtainUserInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ObtainUserInitialImplCopyWithImpl<$Res>
    extends _$ObtainUserStateCopyWithImpl<$Res, _$ObtainUserInitialImpl>
    implements _$$ObtainUserInitialImplCopyWith<$Res> {
  __$$ObtainUserInitialImplCopyWithImpl(_$ObtainUserInitialImpl _value,
      $Res Function(_$ObtainUserInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ObtainUserInitialImpl implements ObtainUserInitial {
  const _$ObtainUserInitialImpl();

  @override
  String toString() {
    return 'ObtainUserState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ObtainUserInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() obtainUserInProgress,
    required TResult Function(UserModel user) obtainUserSuccess,
    required TResult Function(String exception) obtainUserFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? obtainUserInProgress,
    TResult? Function(UserModel user)? obtainUserSuccess,
    TResult? Function(String exception)? obtainUserFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? obtainUserInProgress,
    TResult Function(UserModel user)? obtainUserSuccess,
    TResult Function(String exception)? obtainUserFailure,
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
    required TResult Function(ObtainUserInitial value) initial,
    required TResult Function(ObtainUserInProgress value) obtainUserInProgress,
    required TResult Function(ObtainUserSuccess value) obtainUserSuccess,
    required TResult Function(ObtainUserFailure value) obtainUserFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ObtainUserInitial value)? initial,
    TResult? Function(ObtainUserInProgress value)? obtainUserInProgress,
    TResult? Function(ObtainUserSuccess value)? obtainUserSuccess,
    TResult? Function(ObtainUserFailure value)? obtainUserFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ObtainUserInitial value)? initial,
    TResult Function(ObtainUserInProgress value)? obtainUserInProgress,
    TResult Function(ObtainUserSuccess value)? obtainUserSuccess,
    TResult Function(ObtainUserFailure value)? obtainUserFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class ObtainUserInitial implements ObtainUserState {
  const factory ObtainUserInitial() = _$ObtainUserInitialImpl;
}

/// @nodoc
abstract class _$$ObtainUserInProgressImplCopyWith<$Res> {
  factory _$$ObtainUserInProgressImplCopyWith(_$ObtainUserInProgressImpl value,
          $Res Function(_$ObtainUserInProgressImpl) then) =
      __$$ObtainUserInProgressImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ObtainUserInProgressImplCopyWithImpl<$Res>
    extends _$ObtainUserStateCopyWithImpl<$Res, _$ObtainUserInProgressImpl>
    implements _$$ObtainUserInProgressImplCopyWith<$Res> {
  __$$ObtainUserInProgressImplCopyWithImpl(_$ObtainUserInProgressImpl _value,
      $Res Function(_$ObtainUserInProgressImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ObtainUserInProgressImpl implements ObtainUserInProgress {
  const _$ObtainUserInProgressImpl();

  @override
  String toString() {
    return 'ObtainUserState.obtainUserInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ObtainUserInProgressImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() obtainUserInProgress,
    required TResult Function(UserModel user) obtainUserSuccess,
    required TResult Function(String exception) obtainUserFailure,
  }) {
    return obtainUserInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? obtainUserInProgress,
    TResult? Function(UserModel user)? obtainUserSuccess,
    TResult? Function(String exception)? obtainUserFailure,
  }) {
    return obtainUserInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? obtainUserInProgress,
    TResult Function(UserModel user)? obtainUserSuccess,
    TResult Function(String exception)? obtainUserFailure,
    required TResult orElse(),
  }) {
    if (obtainUserInProgress != null) {
      return obtainUserInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ObtainUserInitial value) initial,
    required TResult Function(ObtainUserInProgress value) obtainUserInProgress,
    required TResult Function(ObtainUserSuccess value) obtainUserSuccess,
    required TResult Function(ObtainUserFailure value) obtainUserFailure,
  }) {
    return obtainUserInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ObtainUserInitial value)? initial,
    TResult? Function(ObtainUserInProgress value)? obtainUserInProgress,
    TResult? Function(ObtainUserSuccess value)? obtainUserSuccess,
    TResult? Function(ObtainUserFailure value)? obtainUserFailure,
  }) {
    return obtainUserInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ObtainUserInitial value)? initial,
    TResult Function(ObtainUserInProgress value)? obtainUserInProgress,
    TResult Function(ObtainUserSuccess value)? obtainUserSuccess,
    TResult Function(ObtainUserFailure value)? obtainUserFailure,
    required TResult orElse(),
  }) {
    if (obtainUserInProgress != null) {
      return obtainUserInProgress(this);
    }
    return orElse();
  }
}

abstract class ObtainUserInProgress implements ObtainUserState {
  const factory ObtainUserInProgress() = _$ObtainUserInProgressImpl;
}

/// @nodoc
abstract class _$$ObtainUserSuccessImplCopyWith<$Res> {
  factory _$$ObtainUserSuccessImplCopyWith(_$ObtainUserSuccessImpl value,
          $Res Function(_$ObtainUserSuccessImpl) then) =
      __$$ObtainUserSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UserModel user});

  $UserModelCopyWith<$Res> get user;
}

/// @nodoc
class __$$ObtainUserSuccessImplCopyWithImpl<$Res>
    extends _$ObtainUserStateCopyWithImpl<$Res, _$ObtainUserSuccessImpl>
    implements _$$ObtainUserSuccessImplCopyWith<$Res> {
  __$$ObtainUserSuccessImplCopyWithImpl(_$ObtainUserSuccessImpl _value,
      $Res Function(_$ObtainUserSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$ObtainUserSuccessImpl(
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

class _$ObtainUserSuccessImpl implements ObtainUserSuccess {
  const _$ObtainUserSuccessImpl(this.user);

  @override
  final UserModel user;

  @override
  String toString() {
    return 'ObtainUserState.obtainUserSuccess(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ObtainUserSuccessImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ObtainUserSuccessImplCopyWith<_$ObtainUserSuccessImpl> get copyWith =>
      __$$ObtainUserSuccessImplCopyWithImpl<_$ObtainUserSuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() obtainUserInProgress,
    required TResult Function(UserModel user) obtainUserSuccess,
    required TResult Function(String exception) obtainUserFailure,
  }) {
    return obtainUserSuccess(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? obtainUserInProgress,
    TResult? Function(UserModel user)? obtainUserSuccess,
    TResult? Function(String exception)? obtainUserFailure,
  }) {
    return obtainUserSuccess?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? obtainUserInProgress,
    TResult Function(UserModel user)? obtainUserSuccess,
    TResult Function(String exception)? obtainUserFailure,
    required TResult orElse(),
  }) {
    if (obtainUserSuccess != null) {
      return obtainUserSuccess(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ObtainUserInitial value) initial,
    required TResult Function(ObtainUserInProgress value) obtainUserInProgress,
    required TResult Function(ObtainUserSuccess value) obtainUserSuccess,
    required TResult Function(ObtainUserFailure value) obtainUserFailure,
  }) {
    return obtainUserSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ObtainUserInitial value)? initial,
    TResult? Function(ObtainUserInProgress value)? obtainUserInProgress,
    TResult? Function(ObtainUserSuccess value)? obtainUserSuccess,
    TResult? Function(ObtainUserFailure value)? obtainUserFailure,
  }) {
    return obtainUserSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ObtainUserInitial value)? initial,
    TResult Function(ObtainUserInProgress value)? obtainUserInProgress,
    TResult Function(ObtainUserSuccess value)? obtainUserSuccess,
    TResult Function(ObtainUserFailure value)? obtainUserFailure,
    required TResult orElse(),
  }) {
    if (obtainUserSuccess != null) {
      return obtainUserSuccess(this);
    }
    return orElse();
  }
}

abstract class ObtainUserSuccess implements ObtainUserState {
  const factory ObtainUserSuccess(final UserModel user) =
      _$ObtainUserSuccessImpl;

  UserModel get user;
  @JsonKey(ignore: true)
  _$$ObtainUserSuccessImplCopyWith<_$ObtainUserSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ObtainUserFailureImplCopyWith<$Res> {
  factory _$$ObtainUserFailureImplCopyWith(_$ObtainUserFailureImpl value,
          $Res Function(_$ObtainUserFailureImpl) then) =
      __$$ObtainUserFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String exception});
}

/// @nodoc
class __$$ObtainUserFailureImplCopyWithImpl<$Res>
    extends _$ObtainUserStateCopyWithImpl<$Res, _$ObtainUserFailureImpl>
    implements _$$ObtainUserFailureImplCopyWith<$Res> {
  __$$ObtainUserFailureImplCopyWithImpl(_$ObtainUserFailureImpl _value,
      $Res Function(_$ObtainUserFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? exception = null,
  }) {
    return _then(_$ObtainUserFailureImpl(
      exception: null == exception
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ObtainUserFailureImpl implements ObtainUserFailure {
  const _$ObtainUserFailureImpl({required this.exception});

  @override
  final String exception;

  @override
  String toString() {
    return 'ObtainUserState.obtainUserFailure(exception: $exception)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ObtainUserFailureImpl &&
            (identical(other.exception, exception) ||
                other.exception == exception));
  }

  @override
  int get hashCode => Object.hash(runtimeType, exception);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ObtainUserFailureImplCopyWith<_$ObtainUserFailureImpl> get copyWith =>
      __$$ObtainUserFailureImplCopyWithImpl<_$ObtainUserFailureImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() obtainUserInProgress,
    required TResult Function(UserModel user) obtainUserSuccess,
    required TResult Function(String exception) obtainUserFailure,
  }) {
    return obtainUserFailure(exception);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? obtainUserInProgress,
    TResult? Function(UserModel user)? obtainUserSuccess,
    TResult? Function(String exception)? obtainUserFailure,
  }) {
    return obtainUserFailure?.call(exception);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? obtainUserInProgress,
    TResult Function(UserModel user)? obtainUserSuccess,
    TResult Function(String exception)? obtainUserFailure,
    required TResult orElse(),
  }) {
    if (obtainUserFailure != null) {
      return obtainUserFailure(exception);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ObtainUserInitial value) initial,
    required TResult Function(ObtainUserInProgress value) obtainUserInProgress,
    required TResult Function(ObtainUserSuccess value) obtainUserSuccess,
    required TResult Function(ObtainUserFailure value) obtainUserFailure,
  }) {
    return obtainUserFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ObtainUserInitial value)? initial,
    TResult? Function(ObtainUserInProgress value)? obtainUserInProgress,
    TResult? Function(ObtainUserSuccess value)? obtainUserSuccess,
    TResult? Function(ObtainUserFailure value)? obtainUserFailure,
  }) {
    return obtainUserFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ObtainUserInitial value)? initial,
    TResult Function(ObtainUserInProgress value)? obtainUserInProgress,
    TResult Function(ObtainUserSuccess value)? obtainUserSuccess,
    TResult Function(ObtainUserFailure value)? obtainUserFailure,
    required TResult orElse(),
  }) {
    if (obtainUserFailure != null) {
      return obtainUserFailure(this);
    }
    return orElse();
  }
}

abstract class ObtainUserFailure implements ObtainUserState {
  const factory ObtainUserFailure({required final String exception}) =
      _$ObtainUserFailureImpl;

  String get exception;
  @JsonKey(ignore: true)
  _$$ObtainUserFailureImplCopyWith<_$ObtainUserFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RetrieveUsersState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() retrieveUsersInProgress,
    required TResult Function(List<UserModel> users) retrieveUsersSuccess,
    required TResult Function(String exception) retrieveUsersFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? retrieveUsersInProgress,
    TResult? Function(List<UserModel> users)? retrieveUsersSuccess,
    TResult? Function(String exception)? retrieveUsersFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? retrieveUsersInProgress,
    TResult Function(List<UserModel> users)? retrieveUsersSuccess,
    TResult Function(String exception)? retrieveUsersFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RetrieveUsersInitial value) initial,
    required TResult Function(RetrieveUsersInProgress value)
        retrieveUsersInProgress,
    required TResult Function(RetrieveUsersSuccess value) retrieveUsersSuccess,
    required TResult Function(RetrieveUsersFailure value) retrieveUsersFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RetrieveUsersInitial value)? initial,
    TResult? Function(RetrieveUsersInProgress value)? retrieveUsersInProgress,
    TResult? Function(RetrieveUsersSuccess value)? retrieveUsersSuccess,
    TResult? Function(RetrieveUsersFailure value)? retrieveUsersFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RetrieveUsersInitial value)? initial,
    TResult Function(RetrieveUsersInProgress value)? retrieveUsersInProgress,
    TResult Function(RetrieveUsersSuccess value)? retrieveUsersSuccess,
    TResult Function(RetrieveUsersFailure value)? retrieveUsersFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RetrieveUsersStateCopyWith<$Res> {
  factory $RetrieveUsersStateCopyWith(
          RetrieveUsersState value, $Res Function(RetrieveUsersState) then) =
      _$RetrieveUsersStateCopyWithImpl<$Res, RetrieveUsersState>;
}

/// @nodoc
class _$RetrieveUsersStateCopyWithImpl<$Res, $Val extends RetrieveUsersState>
    implements $RetrieveUsersStateCopyWith<$Res> {
  _$RetrieveUsersStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$RetrieveUsersInitialImplCopyWith<$Res> {
  factory _$$RetrieveUsersInitialImplCopyWith(_$RetrieveUsersInitialImpl value,
          $Res Function(_$RetrieveUsersInitialImpl) then) =
      __$$RetrieveUsersInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RetrieveUsersInitialImplCopyWithImpl<$Res>
    extends _$RetrieveUsersStateCopyWithImpl<$Res, _$RetrieveUsersInitialImpl>
    implements _$$RetrieveUsersInitialImplCopyWith<$Res> {
  __$$RetrieveUsersInitialImplCopyWithImpl(_$RetrieveUsersInitialImpl _value,
      $Res Function(_$RetrieveUsersInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RetrieveUsersInitialImpl implements RetrieveUsersInitial {
  const _$RetrieveUsersInitialImpl();

  @override
  String toString() {
    return 'RetrieveUsersState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RetrieveUsersInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() retrieveUsersInProgress,
    required TResult Function(List<UserModel> users) retrieveUsersSuccess,
    required TResult Function(String exception) retrieveUsersFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? retrieveUsersInProgress,
    TResult? Function(List<UserModel> users)? retrieveUsersSuccess,
    TResult? Function(String exception)? retrieveUsersFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? retrieveUsersInProgress,
    TResult Function(List<UserModel> users)? retrieveUsersSuccess,
    TResult Function(String exception)? retrieveUsersFailure,
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
    required TResult Function(RetrieveUsersInitial value) initial,
    required TResult Function(RetrieveUsersInProgress value)
        retrieveUsersInProgress,
    required TResult Function(RetrieveUsersSuccess value) retrieveUsersSuccess,
    required TResult Function(RetrieveUsersFailure value) retrieveUsersFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RetrieveUsersInitial value)? initial,
    TResult? Function(RetrieveUsersInProgress value)? retrieveUsersInProgress,
    TResult? Function(RetrieveUsersSuccess value)? retrieveUsersSuccess,
    TResult? Function(RetrieveUsersFailure value)? retrieveUsersFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RetrieveUsersInitial value)? initial,
    TResult Function(RetrieveUsersInProgress value)? retrieveUsersInProgress,
    TResult Function(RetrieveUsersSuccess value)? retrieveUsersSuccess,
    TResult Function(RetrieveUsersFailure value)? retrieveUsersFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class RetrieveUsersInitial implements RetrieveUsersState {
  const factory RetrieveUsersInitial() = _$RetrieveUsersInitialImpl;
}

/// @nodoc
abstract class _$$RetrieveUsersInProgressImplCopyWith<$Res> {
  factory _$$RetrieveUsersInProgressImplCopyWith(
          _$RetrieveUsersInProgressImpl value,
          $Res Function(_$RetrieveUsersInProgressImpl) then) =
      __$$RetrieveUsersInProgressImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RetrieveUsersInProgressImplCopyWithImpl<$Res>
    extends _$RetrieveUsersStateCopyWithImpl<$Res,
        _$RetrieveUsersInProgressImpl>
    implements _$$RetrieveUsersInProgressImplCopyWith<$Res> {
  __$$RetrieveUsersInProgressImplCopyWithImpl(
      _$RetrieveUsersInProgressImpl _value,
      $Res Function(_$RetrieveUsersInProgressImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RetrieveUsersInProgressImpl implements RetrieveUsersInProgress {
  const _$RetrieveUsersInProgressImpl();

  @override
  String toString() {
    return 'RetrieveUsersState.retrieveUsersInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RetrieveUsersInProgressImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() retrieveUsersInProgress,
    required TResult Function(List<UserModel> users) retrieveUsersSuccess,
    required TResult Function(String exception) retrieveUsersFailure,
  }) {
    return retrieveUsersInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? retrieveUsersInProgress,
    TResult? Function(List<UserModel> users)? retrieveUsersSuccess,
    TResult? Function(String exception)? retrieveUsersFailure,
  }) {
    return retrieveUsersInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? retrieveUsersInProgress,
    TResult Function(List<UserModel> users)? retrieveUsersSuccess,
    TResult Function(String exception)? retrieveUsersFailure,
    required TResult orElse(),
  }) {
    if (retrieveUsersInProgress != null) {
      return retrieveUsersInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RetrieveUsersInitial value) initial,
    required TResult Function(RetrieveUsersInProgress value)
        retrieveUsersInProgress,
    required TResult Function(RetrieveUsersSuccess value) retrieveUsersSuccess,
    required TResult Function(RetrieveUsersFailure value) retrieveUsersFailure,
  }) {
    return retrieveUsersInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RetrieveUsersInitial value)? initial,
    TResult? Function(RetrieveUsersInProgress value)? retrieveUsersInProgress,
    TResult? Function(RetrieveUsersSuccess value)? retrieveUsersSuccess,
    TResult? Function(RetrieveUsersFailure value)? retrieveUsersFailure,
  }) {
    return retrieveUsersInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RetrieveUsersInitial value)? initial,
    TResult Function(RetrieveUsersInProgress value)? retrieveUsersInProgress,
    TResult Function(RetrieveUsersSuccess value)? retrieveUsersSuccess,
    TResult Function(RetrieveUsersFailure value)? retrieveUsersFailure,
    required TResult orElse(),
  }) {
    if (retrieveUsersInProgress != null) {
      return retrieveUsersInProgress(this);
    }
    return orElse();
  }
}

abstract class RetrieveUsersInProgress implements RetrieveUsersState {
  const factory RetrieveUsersInProgress() = _$RetrieveUsersInProgressImpl;
}

/// @nodoc
abstract class _$$RetrieveUsersSuccessImplCopyWith<$Res> {
  factory _$$RetrieveUsersSuccessImplCopyWith(_$RetrieveUsersSuccessImpl value,
          $Res Function(_$RetrieveUsersSuccessImpl) then) =
      __$$RetrieveUsersSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<UserModel> users});
}

/// @nodoc
class __$$RetrieveUsersSuccessImplCopyWithImpl<$Res>
    extends _$RetrieveUsersStateCopyWithImpl<$Res, _$RetrieveUsersSuccessImpl>
    implements _$$RetrieveUsersSuccessImplCopyWith<$Res> {
  __$$RetrieveUsersSuccessImplCopyWithImpl(_$RetrieveUsersSuccessImpl _value,
      $Res Function(_$RetrieveUsersSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? users = null,
  }) {
    return _then(_$RetrieveUsersSuccessImpl(
      null == users
          ? _value._users
          : users // ignore: cast_nullable_to_non_nullable
              as List<UserModel>,
    ));
  }
}

/// @nodoc

class _$RetrieveUsersSuccessImpl implements RetrieveUsersSuccess {
  const _$RetrieveUsersSuccessImpl(final List<UserModel> users)
      : _users = users;

  final List<UserModel> _users;
  @override
  List<UserModel> get users {
    if (_users is EqualUnmodifiableListView) return _users;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_users);
  }

  @override
  String toString() {
    return 'RetrieveUsersState.retrieveUsersSuccess(users: $users)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RetrieveUsersSuccessImpl &&
            const DeepCollectionEquality().equals(other._users, _users));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_users));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RetrieveUsersSuccessImplCopyWith<_$RetrieveUsersSuccessImpl>
      get copyWith =>
          __$$RetrieveUsersSuccessImplCopyWithImpl<_$RetrieveUsersSuccessImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() retrieveUsersInProgress,
    required TResult Function(List<UserModel> users) retrieveUsersSuccess,
    required TResult Function(String exception) retrieveUsersFailure,
  }) {
    return retrieveUsersSuccess(users);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? retrieveUsersInProgress,
    TResult? Function(List<UserModel> users)? retrieveUsersSuccess,
    TResult? Function(String exception)? retrieveUsersFailure,
  }) {
    return retrieveUsersSuccess?.call(users);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? retrieveUsersInProgress,
    TResult Function(List<UserModel> users)? retrieveUsersSuccess,
    TResult Function(String exception)? retrieveUsersFailure,
    required TResult orElse(),
  }) {
    if (retrieveUsersSuccess != null) {
      return retrieveUsersSuccess(users);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RetrieveUsersInitial value) initial,
    required TResult Function(RetrieveUsersInProgress value)
        retrieveUsersInProgress,
    required TResult Function(RetrieveUsersSuccess value) retrieveUsersSuccess,
    required TResult Function(RetrieveUsersFailure value) retrieveUsersFailure,
  }) {
    return retrieveUsersSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RetrieveUsersInitial value)? initial,
    TResult? Function(RetrieveUsersInProgress value)? retrieveUsersInProgress,
    TResult? Function(RetrieveUsersSuccess value)? retrieveUsersSuccess,
    TResult? Function(RetrieveUsersFailure value)? retrieveUsersFailure,
  }) {
    return retrieveUsersSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RetrieveUsersInitial value)? initial,
    TResult Function(RetrieveUsersInProgress value)? retrieveUsersInProgress,
    TResult Function(RetrieveUsersSuccess value)? retrieveUsersSuccess,
    TResult Function(RetrieveUsersFailure value)? retrieveUsersFailure,
    required TResult orElse(),
  }) {
    if (retrieveUsersSuccess != null) {
      return retrieveUsersSuccess(this);
    }
    return orElse();
  }
}

abstract class RetrieveUsersSuccess implements RetrieveUsersState {
  const factory RetrieveUsersSuccess(final List<UserModel> users) =
      _$RetrieveUsersSuccessImpl;

  List<UserModel> get users;
  @JsonKey(ignore: true)
  _$$RetrieveUsersSuccessImplCopyWith<_$RetrieveUsersSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RetrieveUsersFailureImplCopyWith<$Res> {
  factory _$$RetrieveUsersFailureImplCopyWith(_$RetrieveUsersFailureImpl value,
          $Res Function(_$RetrieveUsersFailureImpl) then) =
      __$$RetrieveUsersFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String exception});
}

/// @nodoc
class __$$RetrieveUsersFailureImplCopyWithImpl<$Res>
    extends _$RetrieveUsersStateCopyWithImpl<$Res, _$RetrieveUsersFailureImpl>
    implements _$$RetrieveUsersFailureImplCopyWith<$Res> {
  __$$RetrieveUsersFailureImplCopyWithImpl(_$RetrieveUsersFailureImpl _value,
      $Res Function(_$RetrieveUsersFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? exception = null,
  }) {
    return _then(_$RetrieveUsersFailureImpl(
      exception: null == exception
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RetrieveUsersFailureImpl implements RetrieveUsersFailure {
  const _$RetrieveUsersFailureImpl({required this.exception});

  @override
  final String exception;

  @override
  String toString() {
    return 'RetrieveUsersState.retrieveUsersFailure(exception: $exception)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RetrieveUsersFailureImpl &&
            (identical(other.exception, exception) ||
                other.exception == exception));
  }

  @override
  int get hashCode => Object.hash(runtimeType, exception);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RetrieveUsersFailureImplCopyWith<_$RetrieveUsersFailureImpl>
      get copyWith =>
          __$$RetrieveUsersFailureImplCopyWithImpl<_$RetrieveUsersFailureImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() retrieveUsersInProgress,
    required TResult Function(List<UserModel> users) retrieveUsersSuccess,
    required TResult Function(String exception) retrieveUsersFailure,
  }) {
    return retrieveUsersFailure(exception);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? retrieveUsersInProgress,
    TResult? Function(List<UserModel> users)? retrieveUsersSuccess,
    TResult? Function(String exception)? retrieveUsersFailure,
  }) {
    return retrieveUsersFailure?.call(exception);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? retrieveUsersInProgress,
    TResult Function(List<UserModel> users)? retrieveUsersSuccess,
    TResult Function(String exception)? retrieveUsersFailure,
    required TResult orElse(),
  }) {
    if (retrieveUsersFailure != null) {
      return retrieveUsersFailure(exception);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RetrieveUsersInitial value) initial,
    required TResult Function(RetrieveUsersInProgress value)
        retrieveUsersInProgress,
    required TResult Function(RetrieveUsersSuccess value) retrieveUsersSuccess,
    required TResult Function(RetrieveUsersFailure value) retrieveUsersFailure,
  }) {
    return retrieveUsersFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RetrieveUsersInitial value)? initial,
    TResult? Function(RetrieveUsersInProgress value)? retrieveUsersInProgress,
    TResult? Function(RetrieveUsersSuccess value)? retrieveUsersSuccess,
    TResult? Function(RetrieveUsersFailure value)? retrieveUsersFailure,
  }) {
    return retrieveUsersFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RetrieveUsersInitial value)? initial,
    TResult Function(RetrieveUsersInProgress value)? retrieveUsersInProgress,
    TResult Function(RetrieveUsersSuccess value)? retrieveUsersSuccess,
    TResult Function(RetrieveUsersFailure value)? retrieveUsersFailure,
    required TResult orElse(),
  }) {
    if (retrieveUsersFailure != null) {
      return retrieveUsersFailure(this);
    }
    return orElse();
  }
}

abstract class RetrieveUsersFailure implements RetrieveUsersState {
  const factory RetrieveUsersFailure({required final String exception}) =
      _$RetrieveUsersFailureImpl;

  String get exception;
  @JsonKey(ignore: true)
  _$$RetrieveUsersFailureImplCopyWith<_$RetrieveUsersFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}
