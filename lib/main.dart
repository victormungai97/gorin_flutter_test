import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
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
