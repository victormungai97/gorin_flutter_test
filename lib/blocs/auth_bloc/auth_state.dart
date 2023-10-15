part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.initial() = AuthInitial;
  const factory AuthState.authenticationInProgress() = AuthenticationInProgress;
  const factory AuthState.authenticationSuccess(
    User user,
  ) = AuthenticationSuccess;
  const factory AuthState.authenticationFailure({
    required String exception,
  }) = AuthenticationFailure;
}
