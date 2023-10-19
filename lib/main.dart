import 'dart:developer';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gorin_test_project/blocs/blocs.dart';
import 'package:gorin_test_project/firebase_options/firebase_options.dart';
import 'package:gorin_test_project/navigation/navigation.dart';
import 'package:gorin_test_project/services/services.dart';
import 'package:gorin_test_project/utils/utils.dart';
import 'package:gorin_test_project/views/error/error.dart';
import 'package:gorin_test_project/widgets/widgets.dart';
import 'package:logging/logging.dart';
import 'package:provider/provider.dart';

const _logger = LoggingService.instance;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  FlutterError.onError = _logger.log;

  PlatformDispatcher.instance.onError = (error, stackTrace) {
    _logger.log(error, stackTrace: stackTrace);
    return true;
  };

  Bloc.observer = const LocalBlocObserver();

  runApp(
    BlocProvider(create: (_) => FlavorBloc(), child: const App()),
  );
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return StatefulWrapper(
      onInit: () {
        context.read<FlavorBloc>().add(const FlavorEvent.flavorLoaded());
      },
      child: BlocBuilder<FlavorBloc, FlavorState>(
        builder: (context, state) {
          return state.when(
            initial: () => const SizedBox.shrink(),
            loadSuccess: (flavor) {
              final environment = flavor.environment;
              return MultiProvider(
                providers: [
                  FutureProvider<FirebaseApp?>(
                    create: (context) async {
                      try {
                        return Firebase.initializeApp(
                          options: getFirebaseOptions(environment: environment),
                        );
                      } catch (error, stackTrace) {
                        log(
                          'Something went wrong while initializing Flavors',
                          error: error,
                          stackTrace: stackTrace,
                          level: Level.SHOUT.value,
                        );
                        return null;
                      }
                    },
                    initialData: null,
                  ),
                ],
                child: MultiBlocProvider(
                  providers: [
                    BlocProvider(create: (_) => FirestoreBloc(environment)),
                    BlocProvider(create: (context) => AuthBloc()),
                  ],
                  child: const _App(),
                ),
              );
            },
            loadFailure: (exception) {
              log(
                'Unable to obtain app flavor',
                error: exception,
                level: Level.SEVERE.value,
              );
              return const _ErrorApp(
                message: 'There was a problem starting the application',
              );
            },
            loadInProgress: () => Center(child: CircularProgressIndicator()),
          );
        },
      ),
    );
  }
}

class _ErrorApp extends StatelessWidget {
  const _ErrorApp({this.message}) : super(key: const ValueKey('_ErrorPage'));

  final String? message;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: theme,
      home: ErrorPage(message: message),
      debugShowCheckedModeBanner: true,
    );
  }
}

class _App extends StatelessWidget {
  const _App() : super(key: const ValueKey('_App'));

  @override
  Widget build(BuildContext context) {
    final environment = context.watch<FlavorBloc>().state.whenOrNull(
          loadSuccess: (flavor) => flavor.environment,
        );

    return Consumer<FirebaseApp?>(
      builder: (context, firebaseApp, widget) {
        if (firebaseApp == null) {
          return const _ErrorApp(message: 'Please wait as the app initializes');
        }
        final router = CustomRouter(
          environment ?? Environment.unspecified,
        );
        return MaterialApp.router(
          routerConfig: router.routerConfig,
          theme: theme,
          debugShowCheckedModeBanner: false,
        );
      },
    );
  }
}
