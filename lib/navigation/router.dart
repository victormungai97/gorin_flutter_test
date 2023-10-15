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
      GoRoute(path: Paths.root, builder: (_, state) => const RegisterPage()),
    ],

    // First route to be rendered when app starts
    initialLocation: Paths.root,

    // Error page
    errorBuilder: (_, state) => ErrorWidget('${state.error}'),
  );

  /// Detect the environment that the app is running in
  final Environment _environment;
}
