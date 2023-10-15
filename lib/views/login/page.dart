part of 'login.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider<_PasswordObsureCubit>(
        create: (_) => _PasswordObsureCubit(),
        child: const _Body(),
      ),
      backgroundColor: const Color(0xffdde0ec),
    );
  }
}
