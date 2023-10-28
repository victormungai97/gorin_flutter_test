import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gorin_test_project/models/models.dart';
import 'package:gorin_test_project/repositories/repositories.dart';
import 'package:gorin_test_project/services/services.dart';
import 'package:gorin_test_project/utils/utils.dart';

part 'firestore_event.dart';
part 'firestore_state.dart';
part 'firestore_bloc.freezed.dart';

const _logger = LoggingService.instance;

class FirestoreBloc extends Bloc<FirestoreEvent, FirestoreState> {
  FirestoreBloc(this._databaseRepository) : super(const FirestoreInitial()) {
    on<FirestoreEvent>((event, emit) {
      event.when(
        savedUser: _saveUser,
        retrievedUsers: _retrieveUsers,
        started: () => emit(const FirestoreInitial()),
        firestoreSubscriptionUpdated: _updateFirestoreSubscription,
        userGot: _getUser,
      );
    });
  }

  Future<void> _saveUser(UserModel userModel) async {
    try {
      emit(const UserSavingState.userSavingInProgress());

      final result = await _databaseRepository.saveUserData<UserModel>(
        userModel,
      );

      result.when(
        done: (user) => emit(UserSavingState.userSavingSuccess(user)),
        error: (exc) => emit(UserSavingState.userSavingFailure(exception: exc)),
      );
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

      final result = await _databaseRepository.obtainCurrentUser<UserModel>(
        emailAddress,
      );

      result.when(
        done: (user) => emit(ObtainUserState.obtainUserSuccess(user)),
        error: (exc) => emit(ObtainUserState.obtainUserFailure(exception: exc)),
      );
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

      final result = await _databaseRepository.retrieveUsers<List<UserModel>>();
      result.when(
        error: (exception) => emit(
          RetrieveUsersState.retrieveUsersFailure(exception: exception),
        ),
        done: (users) => emit(RetrieveUsersState.retrieveUsersSuccess(users)),
      );
    } catch (error, stackTrace) {
      await _logger.log(
        error,
        label: 'FAILED RETRIEVING USERS',
        stackTrace: stackTrace,
      );
      emit(
        const RetrieveUsersState.retrieveUsersFailure(
          exception: 'Error while retrieving users',
        ),
      );
    }
  }

  Future<void> _updateFirestoreSubscription([bool connect = true]) async {
    await _snapshotStreamSubscription?.cancel();

    if (!connect) return;

    final _users = (_databaseRepository as FirestoreDatabaseRepository).users;

    _snapshotStreamSubscription =
        _users?.snapshots(includeMetadataChanges: true).listen(
      (event) async {
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
          if (!Validation.listsEqual(docs, users)) _retrieveUsers(false);
        } catch (error, stackTrace) {
          await _logger.log(
            error,
            label: 'ERROR LISTENING ON CLOUD FIRESTORE',
            stackTrace: stackTrace,
          );
        }
      },
      onError: _logger.logError,
    );
  }

  @override
  Future<void> close() async {
    await _snapshotStreamSubscription?.cancel();
    return super.close();
  }

  StreamSubscription<QuerySnapshot<Object?>>? _snapshotStreamSubscription;

  final DatabaseRepository _databaseRepository;
}
