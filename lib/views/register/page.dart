part of 'register.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MultiBlocProvider(
        providers: [
          BlocProvider<PasswordObsureCubit>(
            create: (_) => PasswordObsureCubit(),
          ),
          BlocProvider<FormCubit>(
            create: (context) => FormCubit(),
          ),
        ],
        child: const _Body(),
      ),
      backgroundColor: const Color(0xffdde0ec),
    );
  }
}
