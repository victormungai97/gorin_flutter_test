import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:gorin_test_project/responses/responses.dart';
import 'package:gorin_test_project/services/services.dart';
import 'package:gorin_test_project/repositories/repositories.dart';
import 'package:gorin_test_project/utils/utils.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

const _logger = LoggingService.instance;

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc(this._userRepository) : super(const AuthInitial()) {
    on<AuthEvent>((event, emit) {
      event.when(
        registeredUser: _registerUser,
        started: () => emit(const AuthInitial()),
        signedUserOut: _logUserOut,
        userLoggedIn: _logInUser,
      );
    });
  }

  Future<void> _registerUser(String emailAddress, String password) async {
    await _authenticateUser(
      Authentication.REGISTRATION,
      emailAddress,
      password,
    );
  }

  Future<void> _logInUser(String emailAddress, String password) async {
    await _authenticateUser(Authentication.LOGIN, emailAddress, password);
  }

  /// Authenticate user against Firebase and thus allow them entry into app
  Future<void> _authenticateUser(
    Authentication authentication, [
    String emailAddress = '',
    String password = '',
  ]) async {
    final event = authentication.name;
    try {
      emit(const AuthState.authenticationInProgress());

      RepositoryResponse<User>? result;

      switch (authentication) {
        case Authentication.REGISTRATION:
          result = await _userRepository.registerUser<User>(
            emailAddress,
            password,
          );
          break;
        case Authentication.LOGIN:
          result = await _userRepository.logInUser<User>(
            emailAddress,
            password,
          );
          break;
        default:
      }

      if (result == null) {
        emit(
          const AuthenticationFailure(exception: 'Undefined error occurred'),
        );
        return;
      }

      result.when(
        error: (exc) => emit(AuthState.authenticationFailure(exception: exc)),
        done: (user) => emit(AuthState.authenticationSuccess(user: user)),
      );
    } catch (ex, stackTrace) {
      await _logger.log(
        ex,
        label: 'FAILED DURING $event',
        stackTrace: stackTrace,
      );
      emit(
        AuthState.authenticationFailure(
          exception: 'Error during ${event.toLowerCase()}',
        ),
      );
    }
  }

  Future<void> _logUserOut() async {
    final result = await _userRepository.logUserOut();
    if (result != null) {
      emit(AuthState.authenticationFailure(exception: result));
    } else {
      emit(const AuthState.authenticationSuccess());
    }
  }

  final UserRepository _userRepository;
}
