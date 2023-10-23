part of 'navigation.dart';

/// Custom class for Navigation

class CustomRouter {
  /// Constructor

  CustomRouter([this._environment = Environment.unspecified]);

  /// Instance of `GoRouter` which facilitates navigation in this Flutter app
  /// by implementing Navigation API 2.0

  late final routerConfig = GoRouter(
    // Show debugging logs if app is in debug.
    debugLogDiagnostics: _environment != Environment.production,
    // Set all routes to be used
    routes: <GoRoute>[
      GoRoute(
        path: Paths.root,
        builder: (context, state) {
          final state = context.read<AuthenticatedUserCubit>().state;
          return state == null ? const LoginPage() : const HomePage();
        },
      ),
      GoRoute(path: Paths.home, builder: (_, state) => const HomePage()),
      GoRoute(path: Paths.login, builder: (_, state) => const LoginPage()),
      GoRoute(path: Paths.register, builder: (_, s) => const RegisterPage()),
    ],

    // First route to be rendered when app starts
    initialLocation: Paths.root,

    // Error page
    errorBuilder: (_, state) {
      Future(() async => LoggingService.instance.log(state.error));
      return ErrorPage(message: '${state.error?.message}');
    },
  );

  /// Detect the environment that the app is running in
  final Environment _environment;
}
