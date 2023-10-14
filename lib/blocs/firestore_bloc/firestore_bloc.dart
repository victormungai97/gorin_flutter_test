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
        started: () => emit(const FirestoreState.initial()),
      );
    });
  }

  late final CollectionReference? _users;

  final Environment? _environment;
}
