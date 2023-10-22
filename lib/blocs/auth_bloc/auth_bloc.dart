import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:gorin_test_project/services/services.dart';
import 'package:gorin_test_project/utils/utils.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

const _logger = LoggingService.instance;

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(const AuthInitial()) {
    on<AuthEvent>((event, emit) {
      event.when(
        registeredUser: _registerUser,
        started: () => emit(const AuthInitial()),
        signedUserOut: _logUserOut,
        userLoggedIn: _logInUser,
      );
    });
  }

  /// Validate an email address using regex
  bool _validateEmail(String? email) {
    if (email == null || email.isEmpty) return false;
    final regExp = RegExp(
      r'^(([^<>()[\]\\.,;:\s@"]+(\.[^<>()[\]\\.,;:\s@"]+)*)|(".+"))@((\[\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}\])|(([a-zA-Z\-\d]+\.)+[a-zA-Z]{2,}))$',
    );
    return regExp.hasMatch(email);
  }

  /// Validate a password
  bool _validatePassword(String? password) =>
      password != null && password.length >= 8;

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

      if (!_validateEmail(emailAddress)) {
        emit(
          const AuthState.authenticationFailure(
            exception: 'Please provide a valid email address',
          ),
        );
        return;
      }
      if (!_validatePassword(password)) {
        emit(
          const AuthState.authenticationFailure(
            exception: 'Input a password with at least 8 characters',
          ),
        );
        return;
      }

      final user = (switch (authentication) {
        Authentication.REGISTRATION =>
          await _firebaseAuth.createUserWithEmailAndPassword(
            email: emailAddress,
            password: password,
          ),
        Authentication.LOGIN => await _firebaseAuth.signInWithEmailAndPassword(
            email: emailAddress,
            password: password,
          ),
      })
          .user;

      if (user == null) {
        emit(
          const AuthState.authenticationFailure(
            exception: 'User not found for given email.',
          ),
        );
        return;
      }

      emit(AuthState.authenticationSuccess(user: user));
    } on FirebaseAuthException catch (e) {
      await _logger.log(
        e.message,
        stackTrace: e.stackTrace,
        label: e.code,
      );
      String exception = 'Error occurred while authenticating user';
      switch (authentication) {
        case Authentication.LOGIN:
          exception = switch (e.code) {
            'user-not-found' => "User not found for given email",
            'wrong-password' => "Wrong password provided for that user",
            _ => "Something went wrong. Please contact support",
          };
        case Authentication.REGISTRATION:
          exception = switch (e.code) {
            'email-already-in-use' => "User with given email already created",
            'weak-password' => "The password provided is too weak",
            _ => "Something went wrong. Please contact support",
          };
      }
      emit(AuthState.authenticationFailure(exception: exception));
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
    try {
      await _firebaseAuth.signOut();
      emit(const AuthState.authenticationSuccess());
      await _logger.log('User logged out successfully', isException: false);
    } catch (ex, stackTrace) {
      await _logger.log(
        ex,
        label: 'FAILED DURING LOGOUT',
        stackTrace: stackTrace,
      );
      emit(
        AuthState.authenticationFailure(
          exception: 'Error during logging out',
        ),
      );
    }
  }

  static final _firebaseAuth = FirebaseAuth.instance;
}
