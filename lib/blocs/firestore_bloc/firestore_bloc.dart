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
  FirestoreBloc(this._environment) : super(const FirestoreInitial()) {
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

    on<FirestoreEvent>((event, emit) {
      event.when(
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
        person = await _users?.add(details).then((doc) {
          return user.copyWith(userId: doc.id);
        });
      } else {
        person = await _users?.doc(userId).set(details).then((_) => user);
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

      final querySnapshot = await _users
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

  late final CollectionReference? _users;

  final Environment? _environment;
}
