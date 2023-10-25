part of 'firestore_bloc.dart';

@immutable
abstract class FirestoreState {
  const FirestoreState();
}

class FirestoreInitial extends FirestoreState {
  const FirestoreInitial();
}

@freezed
class UserSavingState extends FirestoreState with _$UserSavingState {
  const factory UserSavingState.initial() = UserSavingInitial;
  const factory UserSavingState.userSavingInProgress() = UserSavingInProgress;
  const factory UserSavingState.userSavingSuccess(
    UserModel user,
  ) = UserSavingSuccess;
  const factory UserSavingState.userSavingFailure({
    required String exception,
  }) = UserSavingFailure;
}

@freezed
class ObtainUserState extends FirestoreState with _$ObtainUserState {
  const factory ObtainUserState.initial() = ObtainUserInitial;
  const factory ObtainUserState.obtainUserInProgress() = ObtainUserInProgress;
  const factory ObtainUserState.obtainUserSuccess(
    UserModel user,
  ) = ObtainUserSuccess;
  const factory ObtainUserState.obtainUserFailure({
    required String exception,
  }) = ObtainUserFailure;
}

@freezed
class RetrieveUsersState extends FirestoreState with _$RetrieveUsersState {
  const factory RetrieveUsersState.initial() = RetrieveUsersInitial;
  const factory RetrieveUsersState.retrieveUsersInProgress() =
      RetrieveUsersInProgress;
  const factory RetrieveUsersState.retrieveUsersSuccess(
    List<UserModel> users,
  ) = RetrieveUsersSuccess;
  const factory RetrieveUsersState.retrieveUsersFailure({
    required String exception,
  }) = RetrieveUsersFailure;
}
