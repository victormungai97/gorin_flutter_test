part of 'firestore_bloc.dart';

@freezed
class FirestoreEvent with _$FirestoreEvent {
  const factory FirestoreEvent.started() = _Started;
}