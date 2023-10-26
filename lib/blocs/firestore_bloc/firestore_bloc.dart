import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gorin_test_project/models/models.dart';
import 'package:gorin_test_project/services/services.dart';
import 'package:gorin_test_project/utils/utils.dart';
import 'package:tuple/tuple.dart';

part 'firestore_event.dart';
part 'firestore_state.dart';
part 'firestore_bloc.freezed.dart';

const _logger = LoggingService.instance;

class FirestoreBloc extends Bloc<FirestoreEvent, FirestoreState> {
  FirestoreBloc(this._environment) : super(const FirestoreInitial()) {
    final application = FirebaseFirestore.instance.collection('application');
    switch (_environment) {
      case Environment.local:
      case Environment.development:
      case Environment.staging:
      case Environment.production:
        users = application.doc(_environment?.name).collection('users');
      default:
        users = null;
    }

    on<FirestoreEvent>((event, emit) {
      event.when(
        retrievedUsers: _retrieveUsers,
        savedUser: _saveUser,
        started: () => emit(const FirestoreInitial()),
        userGot: _getUser,
      );
    });
  }

  Future<void> _saveUser(UserModel userModel) async {
    try {
      emit(const UserSavingState.userSavingInProgress());

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
        person = await users?.add(details).then((doc) {
          return user.copyWith(userId: doc.id);
        });
      } else {
        person = await users?.doc(userId).set(details).then((_) => user);
      }

      if (person == null) {
        emit(
          const UserSavingState.userSavingFailure(
            exception: 'Unable to get user account',
          ),
        );
        return;
      }

      emit(UserSavingState.userSavingSuccess(person));
    } catch (error, stackTrace) {
      await _logger.log(
        error,
        label: 'FAILED DURING USER SAVING',
        stackTrace: stackTrace,
      );
      emit(
        const UserSavingState.userSavingFailure(
          exception: 'Error while updating account',
        ),
      );
    }
  }

  Future<void> _getUser(String emailAddress) async {
    try {
      emit(const ObtainUserState.obtainUserInProgress());

      final querySnapshot = await users
          ?.where(
            JsonKeys.email,
            isEqualTo: emailAddress,
          )
          .get();
      if (querySnapshot == null) {
        emit(const ObtainUserFailure(exception: 'User details not got'));
        return;
      }

      final doc = querySnapshot.docs.firstOrNull;
      final json = doc?.data();
      if (json == null) {
        emit(const ObtainUserFailure(exception: 'User details not retrieved'));
        return;
      }
      if (json is! Map<String, dynamic>) {
        emit(const ObtainUserFailure(exception: 'Invalid user details'));
        return;
      }

      final user = UserModel.fromJson(json).copyWith(userId: doc?.id ?? '');
      emit(ObtainUserState.obtainUserSuccess(user));
    } catch (error, stackTrace) {
      await _logger.log(
        error,
        label: 'FAILED GETTING USER',
        stackTrace: stackTrace,
      );
      emit(
        const ObtainUserState.obtainUserFailure(
          exception: 'Error while getting account',
        ),
      );
    }
  }

  Future<void> _retrieveUsers([bool reload = true]) async {
    try {
      if (reload) {
        emit(const RetrieveUsersState.retrieveUsersInProgress());
      }

      final snapshot = await users?.get();

      if (snapshot == null) {
        emit(
          const RetrieveUsersState.retrieveUsersFailure(
            exception: 'Could not obtain users',
          ),
        );
        return;
      }
      final _users = <UserModel>[];
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
        _users.add(UserModel.fromJson(json).copyWith(userId: id));
      }
      if (_users.isEmpty) {
        emit(
          const RetrieveUsersState.retrieveUsersFailure(
            exception: 'No users found',
          ),
        );
      }
      emit(RetrieveUsersSuccess(_users));
    } catch (error, stackTrace) {
      await _logger.log(
        error,
        label: 'FAILED RETRIEVING USERS',
        stackTrace: stackTrace,
      );
      emit(
        const ObtainUserState.obtainUserFailure(
          exception: 'Error while retrieving users',
        ),
      );
    }
  }

  late final CollectionReference? users;

  final Environment? _environment;
}


/*

import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gorin_test_project/models/models.dart';
import 'package:gorin_test_project/services/services.dart';
import 'package:gorin_test_project/utils/utils.dart';
import 'package:tuple/tuple.dart';
import 'package:quiver/collection.dart';

part 'firestore_event.dart';
part 'firestore_state.dart';
part 'firestore_bloc.freezed.dart';

const _logger = LoggingService.instance;

class FirestoreBloc extends Bloc<FirestoreEvent, FirestoreState> {
  FirestoreBloc(this._environment) : super(const FirestoreInitial()) {
    final app = FirebaseFirestore.instance.collection('application');
    switch (_environment) {
      case Environment.local:
      case Environment.development:
      case Environment.staging:
      case Environment.production:
        usersCollection = app.doc(_environment?.name).collection('users');
      default:
        usersCollection = null;
    }

    _listenForUserChanges();

    on<FirestoreEvent>((event, emit) {
      event.when(
        retrievedUsers: _retrieveUsers,
        savedUser: _saveUser,
        started: () => emit(const FirestoreInitial()),
        userGot: _getUser,
      );
    });
  }

  FutureOr<void> _listenForUserChanges() async {
    final snapshots = usersCollection?.snapshots(includeMetadataChanges: true);
    await snapshots?.listen((event) async {
      try {
        if (this.state is! RetrieveUsersSuccess) return;
        final users = (this.state as RetrieveUsersState).whenOrNull(
              retrieveUsersSuccess: (users) => users,
            ) ??
            [];
        final docs = event.docs
            .map(
              (e) => UserModel.fromJson(e.data() as Map<String, dynamic>)
                  .copyWith(userId: e.id),
            )
            .toList();
        if (!listsEqual(docs, users)) await _retrieveUsers(false);
      } catch (error, stackTrace) {
        await LoggingService.instance.log(
          error,
          label: 'ERROR LISTENING ON CLOUD FIRESTORE',
          stackTrace: stackTrace,
        );
      }
    });
  }

  Future<void> _saveUser(UserModel userModel) async {
    try {
      emit(const UserSavingState.userSavingInProgress());

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
        person = await usersCollection?.add(details).then((doc) {
          return user.copyWith(userId: doc.id);
        });
      } else {
        person = await usersCollection?.doc(userId).set(details).then(
              (_) => user,
            );
      }

      if (person == null) {
        emit(
          const UserSavingState.userSavingFailure(
            exception: 'Unable to get user account',
          ),
        );
        return;
      }

      emit(UserSavingState.userSavingSuccess(person));
    } catch (error, stackTrace) {
      await _logger.log(
        error,
        label: 'FAILED DURING USER SAVING',
        stackTrace: stackTrace,
      );
      emit(
        const UserSavingState.userSavingFailure(
          exception: 'Error while updating account',
        ),
      );
    }
  }

  Future<void> _getUser(String emailAddress) async {
    try {
      emit(const ObtainUserState.obtainUserInProgress());

      final querySnapshot = await usersCollection
          ?.where(
            JsonKeys.email,
            isEqualTo: emailAddress,
          )
          .get();
      if (querySnapshot == null) {
        emit(const ObtainUserFailure(exception: 'User details not got'));
        return;
      }

      final doc = querySnapshot.docs.firstOrNull;
      final json = doc?.data();
      if (json == null) {
        emit(const ObtainUserFailure(exception: 'User details not retrieved'));
        return;
      }
      if (json is! Map<String, dynamic>) {
        emit(const ObtainUserFailure(exception: 'Invalid user details'));
        return;
      }

      final user = UserModel.fromJson(json).copyWith(userId: doc?.id ?? '');
      emit(ObtainUserState.obtainUserSuccess(user));
    } catch (error, stackTrace) {
      await _logger.log(
        error,
        label: 'FAILED GETTING USER',
        stackTrace: stackTrace,
      );
      emit(
        const ObtainUserState.obtainUserFailure(
          exception: 'Error while getting account',
        ),
      );
    }
  }

  Future<void> _retrieveUsers([bool reload = true]) async {
    try {
      if (reload) {
        emit(const RetrieveUsersState.retrieveUsersInProgress());
      }

      final snapshot = await usersCollection?.get();

      if (snapshot == null) {
        emit(
          const RetrieveUsersState.retrieveUsersFailure(
            exception: 'Could not obtain users',
          ),
        );
        return;
      }
      final _users = <UserModel>[];
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
        _users.add(UserModel.fromJson(json).copyWith(userId: id));
      }
      if (_users.isEmpty) {
        emit(
          const RetrieveUsersState.retrieveUsersFailure(
            exception: 'No users found',
          ),
        );
      }
      emit(RetrieveUsersSuccess(_users));
    } catch (error, stackTrace) {
      await _logger.log(
        error,
        label: 'FAILED RETRIEVING USERS',
        stackTrace: stackTrace,
      );
      emit(
        const ObtainUserState.obtainUserFailure(
          exception: 'Error while retrieving users',
        ),
      );
    }
  }

  late final CollectionReference? usersCollection;

  final Environment? _environment;
}

*/