part of 'home.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          BlocConsumer<AuthBloc, AuthState>(
            listener: (context, state) {
              state.whenOrNull(
                authenticationSuccess: (_) => context.navigateReplace(
                  Paths.login,
                ),
                authenticationFailure: LoggingService.instance.log,
              );
            },
            builder: (context, state) {
              if (state is AuthenticationInProgress) {
                return const Center(child: CircularProgressIndicator());
              }
              return IconButton(
                onPressed: () => context.read<AuthBloc>().add(
                      AuthEvent.signedUserOut(),
                    ),
                icon: Icon(Icons.logout),
              );
            },
          ),
        ],
      ),
      body: _Body(),
      backgroundColor: const Color(0xffdde0ec),
    );
  }
}
