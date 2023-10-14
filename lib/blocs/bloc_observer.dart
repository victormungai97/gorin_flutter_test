import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gorin_test_project/services/services.dart';

/// This class enables detecting bloc changes
/// by listening at the various stages of a bloc life cycle
/// as provided by the overridden methods

class LocalBlocObserver extends BlocObserver {
  const LocalBlocObserver();

  static const _logger = LoggingService.instance;

  @override
  void onCreate(BlocBase<dynamic> bloc) {
    super.onCreate(bloc);
    _logger.log('onCreate -- ${bloc.runtimeType}', isException: false);
  }

  @override
  Future<void> onEvent(Bloc<dynamic, dynamic> bloc, Object? event) async {
    super.onEvent(bloc, event);
    await _logger.log(
      'onEvent -- ${bloc.runtimeType}, $event',
      isException: false,
    );
  }

  @override
  void onChange(BlocBase<dynamic> bloc, Change<dynamic> change) {
    super.onChange(bloc, change);
    _logger.log('onChange -- ${bloc.runtimeType}, $change', isException: false);
  }

  @override
  void onTransition(
    Bloc<dynamic, dynamic> bloc,
    Transition<dynamic, dynamic> transition,
  ) {
    super.onTransition(bloc, transition);
    _logger.log(
      'onTransition -- ${bloc.runtimeType}, $transition',
      isException: false,
    );
  }

  @override
  void onError(BlocBase<dynamic> bloc, Object error, StackTrace stackTrace) {
    _logger.log(
      error,
      label: 'onError -- ${bloc.runtimeType}',
      stackTrace: stackTrace,
    );
    super.onError(bloc, error, stackTrace);
  }

  @override
  void onClose(BlocBase<dynamic> bloc) {
    super.onClose(bloc);
    _logger.log('onClose -- ${bloc.runtimeType}', isException: false);
  }
}
