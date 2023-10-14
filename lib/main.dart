import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gorin_test_project/firebase_options.dart';

void main() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const App());
}

/// Root widget for the application
class App extends StatelessWidget {
  /// Constructor for ``App``
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: const [
        /*BlocProvider(
          create: (context) => SubjectBloc(),
        ),
        BlocProvider(
          create: (context) => SubjectBloc(),
        ),*/
      ],
      child: MaterialApp.router(),
    );
  }
}
