part of 'repository.dart';

/// User authentication utilizing Firebase Auth

class FirebaseUserRepository implements UserRepository {
  FirebaseUserRepository({FirebaseAuth? firebaseAuth})
      : _firebaseAuth = firebaseAuth ?? FirebaseAuth.instance;

  final FirebaseAuth _firebaseAuth;

  @override
  Future<RepositoryResponse<T>> registerUser<T>(
    String emailAddress,
    String password,
  ) async {
    try {
      final response = await _authenticateUser<T>(
        Authentication.REGISTRATION,
        emailAddress,
        password,
      );

      return response.when(
        error: (message) {
          if (message.startsWith('FIREBASE AUTH ERROR!!:')) {
            final code = message.split(':').sublist(1).join(':');
            return RepositoryResponse.error(
              switch (code) {
                'email already in use' =>
                  "User with given email already created",
                'weak password' => "The password provided is too weak",
                _ => "Something went wrong. Please contact support",
              },
            );
          }
          return RepositoryResponse.error(message);
        },
        done: (result) => RepositoryResponse.done(result),
      );

      /*if (response is String) {
        
      }*/
    } catch (error, stackTrace) {
      await _logger.log(
        error,
        label: 'EXCEPTION WHILE REGISTERING',
        stackTrace: stackTrace,
      );
      return RepositoryResponse.error('Problem while registering');
    }
  }

  @override
  Future<RepositoryResponse<T>> logInUser<T>(
    String emailAddress,
    String password,
  ) async {
    try {
      final response = await _authenticateUser<T>(
        Authentication.LOGIN,
        emailAddress,
        password,
      );
      return response.when(
        error: (message) {
          if (message.startsWith('FIREBASE AUTH ERROR!!:')) {
            final code = message.split(':').sublist(1).join(':');
            return RepositoryResponse.error(
              switch (code) {
                'user not found' => "User not found for given email",
                'wrong password' => "Wrong password provided for that user",
                'invalid login credentials' =>
                  'Invalid email or password entered',
                _ => "Something went wrong. Please contact support",
              },
            );
          }
          return RepositoryResponse.error(message);
        },
        done: (result) => RepositoryResponse.done(result),
      );
    } catch (error, stackTrace) {
      await _logger.log(
        error,
        label: 'EXCEPTION WHILE SIGNING IN',
        stackTrace: stackTrace,
      );
      return RepositoryResponse.error('Problem while signing in');
    }
  }

  /// Authenticate user against Firebase and thus allow them entry into app
  Future<RepositoryResponse<T>> _authenticateUser<T>(
    Authentication authentication, [
    String emailAddress = '',
    String password = '',
  ]) async {
    try {
      if (!Validation.validateEmail(emailAddress)) {
        return RepositoryResponse.error('Please provide a valid email address');
      }
      if (!Validation.validatePassword(password)) {
        return RepositoryResponse.error(
          'Input a password with at least 8 characters',
        );
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
        return RepositoryResponse.error(
          'User not found for given email.',
        );
      }

      return RepositoryResponse.done(user as T);
    } on FirebaseAuthException catch (e) {
      await _logger.log(
        e.message,
        stackTrace: e.stackTrace,
        label: e.code,
      );

      final code =
          e.code.replaceAll('-', ' ').replaceAll('_', ' ').toLowerCase();

      return RepositoryResponse.error('FIREBASE AUTH ERROR!!:$code');
    }
  }

  @override
  Future<String?> logUserOut() async {
    try {
      await _firebaseAuth.signOut();
      await _logger.log('User logged out successfully', isException: false);
    } catch (ex, stackTrace) {
      await _logger.log(
        ex,
        label: 'FAILED DURING LOGOUT',
        stackTrace: stackTrace,
      );
      return 'Error during logging out';
    }
    return null;
  }
}
