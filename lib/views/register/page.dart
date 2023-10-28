part of 'register.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return StatefulWrapper(
      child: WillPopScope(
        onWillPop: () async {
          context.navigateReplace(Paths.login);
          return false;
        },
        child: Scaffold(
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
        ),
      ),
      onInit: () => context.read<ImageBloc>().emit(const ImagePickingInitial()),
    );
  }
}
