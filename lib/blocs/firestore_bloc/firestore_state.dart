part of 'firestore_bloc.dart';

@freezed
class FirestoreState with _$FirestoreState {
  const factory FirestoreState.initial() = _Initial;
  const factory FirestoreState.userSavingInProgress() = UserSavingInProgress;
  const factory FirestoreState.userSavingSuccess(
    UserModel? user,
  ) = UserSavingSuccess;
  const factory FirestoreState.userSavingFailure({
    required String exception,
  }) = UserSavingFailure;
}
