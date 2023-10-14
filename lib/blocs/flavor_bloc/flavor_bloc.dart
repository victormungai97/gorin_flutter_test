import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:gorin_test_project/models/models.dart';
import 'package:gorin_test_project/services/services.dart';

part 'flavor_event.dart';
part 'flavor_state.dart';
part 'flavor_bloc.freezed.dart';

const _logger = LoggingService.instance;

class FlavorBloc extends Bloc<FlavorEvent, FlavorState> {
  FlavorBloc() : super(const FlavorInitial()) {
    on<FlavorEvent>((event, emit) {
      event.when(
        flavorLoaded: _loadFlavor,
        started: () => emit(const FlavorState.initial()),
      );
    });
  }

  /// Communicate with native module, get the name of flavor and use retrieved
  /// flavor to setup AppConfig parameter values
  Future<void> _loadFlavor() async {
    const _kMethodName = 'getFlavor';

    try {
      emit(const FlavorState.loadInProgress());
      late final String? flavor;
      // Communicate with native code
      if (!kIsWeb) {
        flavor = await const MethodChannel('flutter.native/helper')
            .invokeMethod<String>(_kMethodName);
      } else {
        flavor = const String.fromEnvironment('flavor');
      }
      // Set the instance of flavor which will be available later
      emit(FlavorState.loadSuccess(FlavorModel(flavorName: flavor)));
    } catch (error, stackTrace) {
      await _logger.log(
        error,
        stackTrace: stackTrace,
        label: 'FAILED TO LOAD FLAVOR',
      );
      emit(const FlavorState.loadFailure(exception: 'Error loading flavor'));
    }
  }
}
