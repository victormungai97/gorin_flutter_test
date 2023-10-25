part of 'firestore_bloc.dart';

@freezed
class FirestoreEvent with _$FirestoreEvent {
  const factory FirestoreEvent.started() = _Started;

  const factory FirestoreEvent.savedUser(UserModel user) = _SavedUser;

  const factory FirestoreEvent.userGot(String emailAddress) = _UserGot;

  const factory FirestoreEvent.retrievedUsers() = _RetrievedUsers;
}
