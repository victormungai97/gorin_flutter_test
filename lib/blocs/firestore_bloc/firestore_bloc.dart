import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gorin_test_project/models/models.dart';
import 'package:gorin_test_project/services/services.dart';
import 'package:gorin_test_project/utils/utils.dart';

part 'firestore_event.dart';
part 'firestore_state.dart';
part 'firestore_bloc.freezed.dart';

const _logger = LoggingService.instance;

class FirestoreBloc extends Bloc<FirestoreEvent, FirestoreState> {
  FirestoreBloc(this._environment) : super(_Initial()) {
    on<FirestoreEvent>((event, emit) {
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

      event.whenOrNull(
        savedUser: _saveUser,
        started: () => emit(const FirestoreState.initial()),
      );
    });
  }

  Future<void> _saveUser(UserModel userModel) async {
    try {
      emit(const FirestoreState.userSavingInProgress());

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
        person = await _users?.add(details).then((value) {
          return user.copyWith(userId: value.id);
        });
      } else {
        person = await _users?.doc(userId).set(details).then((_) => user);
      }

      emit(FirestoreState.userSavingSuccess(person));
    } catch (error, stackTrace) {
      await _logger.log(
        error,
        label: 'FAILED DURING USER SAVING',
        stackTrace: stackTrace,
      );
      emit(
        const FirestoreState.userSavingFailure(
          exception: 'Error while updating account',
        ),
      );
    }
  }

  CollectionReference? _users;

  final Environment? _environment;
}
