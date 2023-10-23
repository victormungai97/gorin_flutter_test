part of 'login.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MultiBlocProvider(
        providers: [
          BlocProvider<PasswordObsureCubit>(
            create: (_) => PasswordObsureCubit(),
          ),
          BlocProvider<FormCubit>(create: (_) => FormCubit()),
        ],
        child: const _Body(),
      ),
      backgroundColor: const Color(0xffdde0ec),
    );
  }
}
