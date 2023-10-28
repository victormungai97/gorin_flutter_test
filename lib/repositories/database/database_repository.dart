part of 'repository.dart';

/// Abstract base class for persistent storage

abstract class DatabaseRepository {
  Future<RepositoryResponse<R>> saveUserData<R>(UserModel userModel);
  Future<RepositoryResponse<R>> obtainCurrentUser<R>(String emailAddress);
  Future<RepositoryResponse<R>> retrieveUsers<R>();
}
