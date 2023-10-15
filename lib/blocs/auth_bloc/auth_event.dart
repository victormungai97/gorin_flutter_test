part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.started() = _Started;

  const factory AuthEvent.userLoggedIn(
    String emailAddress,
    String password,
  ) = _UserLoggedIn;

  const factory AuthEvent.registeredUser(
    String emailAddress,
    String password,
  ) = _RegisteredUser;
}
