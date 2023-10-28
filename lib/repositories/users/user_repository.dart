part of 'repository.dart';

/// Abstract base class for user authentication

abstract class UserRepository {
  Future<RepositoryResponse<T>> registerUser<T>(
    String emailAddress,
    String password,
  );

  Future<RepositoryResponse<T>> logInUser<T>(
    String emailAddress,
    String password,
  );

  Future<String?> logUserOut();
}
