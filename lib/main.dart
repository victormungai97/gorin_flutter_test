import 'dart:developer';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gorin_test_project/blocs/blocs.dart';
import 'package:gorin_test_project/cubits/cubits.dart';
import 'package:gorin_test_project/firebase_options/firebase_options.dart';
import 'package:gorin_test_project/models/models.dart';
import 'package:gorin_test_project/navigation/navigation.dart';
import 'package:gorin_test_project/services/services.dart';
import 'package:gorin_test_project/utils/utils.dart';
import 'package:gorin_test_project/views/error/error.dart';
import 'package:gorin_test_project/widgets/widgets.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:logging/logging.dart';
import 'package:provider/provider.dart';
import 'package:path_provider/path_provider.dart';

const _logger = LoggingService.instance;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  HydratedBloc.storage = await HydratedStorage.build(
    storageDirectory: kIsWeb
        ? HydratedStorage.webStorageDirectory
        : await getTemporaryDirectory(),
  );

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
                  Provider(create: (_) => PermissionService()),
                ],
                child: MultiBlocProvider(
                  providers: [
                    BlocProvider(create: (_) => FirestoreBloc(environment)),
                    BlocProvider(create: (_) => AuthBloc()),
                    BlocProvider(create: (_) => ImageBloc(environment)),
                    BlocProvider(create: (_) => AuthenticatedUserCubit()),
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
              return const _TempApp(
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

class _TempApp extends StatelessWidget {
  const _TempApp({this.message, this.isLoading = false})
      : super(
          key: const ValueKey('_TempPage'),
        );

  final String? message;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: theme,
      title: "Gorin Test Project",
      home: ErrorPage(message: message, loading: isLoading),
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

    return StatefulWrapper(
      child: Consumer<FirebaseApp?>(
        builder: (context, firebaseApp, widget) {
          if (firebaseApp == null) {
            return const _TempApp(
              message: 'Please wait as the app initializes',
              isLoading: true,
            );
          }
          final router = CustomRouter(
            environment ?? Environment.unspecified,
          );
          return BlocListener<AuthenticatedUserCubit, UserModel?>(
            listener: (context, state) {
              context.read<FirestoreBloc>().add(
                    FirestoreEvent.firestoreSubscriptionUpdated(
                      connect: state != null,
                    ),
                  );
            },
            child: MaterialApp.router(
              routerConfig: router.routerConfig,
              theme: theme,
              title: "Gorin Test Project",
              debugShowCheckedModeBanner: false,
            ),
          );
        },
      ),
      onInit: () {
        FlutterError.onError = _logger.log;

        PlatformDispatcher.instance.onError = (error, stackTrace) {
          _logger.log(error, stackTrace: stackTrace);
          return true;
        };

        Bloc.observer = const LocalBlocObserver();
      },
    );
  }
}
