import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gorin_test_project/blocs/blocs.dart';
import 'package:gorin_test_project/firebase_options/firebase_options.dart';
import 'package:gorin_test_project/services/services.dart';
import 'package:gorin_test_project/widgets/widgets.dart';
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
    final environment = context.watch<FlavorBloc>().state.whenOrNull(
          loadSuccess: (flavor) => flavor.environment,
        );

    return StatefulWrapper(
      onInit: () {
        context.read<FlavorBloc>().add(const FlavorEvent.flavorLoaded());
      },
      child: MultiProvider(
        providers: [
          FutureProvider<FirebaseApp?>(
            create: (context) async {
              try {
                return Firebase.initializeApp(
                  options: getFirebaseOptions(environment: environment),
                );
              } catch (error, stackTrace) {
                await _logger.log(
                  error,
                  label: 'Something went wrong while initializing Flavors',
                  stackTrace: stackTrace,
                );
                return null;
              }
            },
            initialData: null,
          ),
        ],
        child: MultiBlocProvider(
          providers: [
            BlocProvider(create: (context) => FirestoreBloc(environment)),
          ],
          child: const MaterialApp(
            home: Placeholder(),
            debugShowCheckedModeBanner: false,
          ),
        ),
      ),
    );
  }
}
