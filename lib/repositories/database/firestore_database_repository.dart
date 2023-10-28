part of 'repository.dart';

/// Database operations utilizing Cloud Firestore

class FirestoreDatabaseRepository implements DatabaseRepository {
  FirestoreDatabaseRepository(this._environment) {
    final application = FirebaseFirestore.instance.collection('application');
    switch (_environment) {
      case Environment.local:
      case Environment.development:
      case Environment.staging:
      case Environment.production:
        _users = application.doc(_environment?.name).collection('users');
      default:
        _users = null;
    }
  }

  @override
  Future<RepositoryResponse<R>> saveUserData<R>(UserModel userModel) async {
    try {
      final picture = userModel.profilePicture;
      final user = picture == null || picture.isEmpty
          ? userModel.copyWith(
              profilePicture:
                  'https://ui-avatars.com/api/?name=${userModel.name}',
            )
          : userModel;

      final details = Map<String, dynamic>.from(user.toJson());
      final userId = details.remove(JsonKeys.id) as String;

      UserModel? person;
      if (userId.isEmpty) {
        person = await _users?.add(details).then((doc) {
          return user.copyWith(userId: doc.id);
        });
      } else {
        person = await _users?.doc(userId).set(details).then((_) => user);
      }

      if (person == null) {
        return RepositoryResponse.error('Unable to get user account');
      } else {
        return RepositoryResponse.done(person as R);
      }
    } catch (error, stackTrace) {
      await _logger.log(
        error,
        label: 'EXCEPTION WHILE SAVING USER DATA',
        stackTrace: stackTrace,
      );
      return RepositoryResponse.error('Problem while updating your account');
    }
  }

  @override
  Future<RepositoryResponse<R>> obtainCurrentUser<R>(
    String emailAddress,
  ) async {
    try {
      final querySnapshot = await _users
          ?.where(
            JsonKeys.email,
            isEqualTo: emailAddress,
          )
          .get();
      if (querySnapshot == null) {
        return RepositoryResponse.error('User details not got');
      }

      final doc = querySnapshot.docs.firstOrNull;
      final json = doc?.data();
      if (json == null) {
        return RepositoryResponse.error('User details not retrieved');
      }
      if (json is! Map<String, dynamic>) {
        return RepositoryResponse.error('Invalid user details');
      }

      final user = UserModel.fromJson(json).copyWith(userId: doc?.id ?? '');
      return RepositoryResponse.done(user as R);
    } catch (error, stackTrace) {
      await _logger.log(
        error,
        label: 'EXCEPTION WHILE OBTAINING USER',
        stackTrace: stackTrace,
      );
      return RepositoryResponse.error('Problem while getting your account');
    }
  }

  @override
  Future<RepositoryResponse<R>> retrieveUsers<R>() async {
    try {
      final snapshot = await _users?.get();

      if (snapshot == null) {
        return RepositoryResponse.error('Could not obtain users');
      }
      final users = <UserModel>[];
      final jsons = snapshot.docs.map((e) => Tuple2(e.id, e.data())).toList();
      for (final pair in jsons.indexed) {
        final index = pair.$1;
        final tuple = pair.$2;
        final id = tuple.item1;
        final json = tuple.item2;
        if (json == null) {
          await _logger.logError('Details for user ${index + 1} not retrieved');
          continue;
        }
        if (json is! Map<String, dynamic>) {
          await _logger.logError('Invalid details for user ${index + 1}');
          continue;
        }
        users.add(UserModel.fromJson(json).copyWith(userId: id));
      }
      if (users.isEmpty) {
        return RepositoryResponse.error('No users found');
      }
      return RepositoryResponse.done(users as R);
    } catch (error, stackTrace) {
      await _logger.log(
        error,
        label: 'EXCEPTION WHILE RETRIEVING USERS',
        stackTrace: stackTrace,
      );
      return RepositoryResponse.error('Problem while retrieving users');
    }
  }

  late final CollectionReference? _users;

  CollectionReference? get users => _users;

  final Environment? _environment;
}
