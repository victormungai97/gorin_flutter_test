part of 'register.dart';

class _Body extends StatelessWidget {
  const _Body() : super(key: const ValueKey('RegisterBody'));

  static final _ongoing = ValueNotifier<bool>(false);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Sign up with email',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w300,
                color: Colors.indigo.shade900,
              ),
            ),
            const SizedBox(height: 10),
            const _Form(),
            const SizedBox(height: 20),
            MultiBlocListener(
              listeners: [
                BlocListener<AuthBloc, AuthState>(
                  listener: (context, state) {
                    _ongoing.value = state.whenOrNull(
                          authenticationInProgress: () => true,
                        ) ??
                        false;
                  },
                ),
                BlocListener<FirestoreBloc, FirestoreState>(
                  listener: (context, state) {
                    _ongoing.value = state.whenOrNull(
                          userSavingInProgress: () => true,
                        ) ??
                        false;
                  },
                ),
                BlocListener<ImageBloc, ImageState>(
                  listener: (context, state) {
                    if (state is FileUploadingState) {
                      Future(() {
                        _ongoing.value = state.whenOrNull(
                              loading: (_) => true,
                            ) ??
                            false;
                      });
                    } else {
                      _ongoing.value = false;
                    }
                  },
                ),
              ],
              child: ValueListenableBuilder(
                builder: (buildContext, state, child) {
                  debugPrint('REGISTRATION ONGOING!!\t${state}');
                  if (state) return const SizedBox.shrink();
                  return GestureDetector(
                    onTap: () => context.navigateReplace(Paths.login),
                    child: Column(
                      children: [
                        Text(
                          'Already have an account?',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w300,
                            color: Colors.indigo.shade900,
                          ),
                        ),
                        const SizedBox(height: 5),
                        Align(
                          alignment: Alignment.center,
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            child: Text(
                              "Login",
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.indigo.shade800,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
                valueListenable: _ongoing,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
