part of 'home.dart';

class _Body extends StatelessWidget {
  const _Body() : super(key: const ValueKey('HomeBody'));

  @override
  Widget build(BuildContext context) {
    final loaded = ValueNotifier(false);
    final size = MediaQuery.sizeOf(context);
    return SafeArea(
      child: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 10),
            ValueListenableBuilder(
              builder: (context, state, widget) {
                final child = const Text(
                  'Users',
                  style: TextStyle(fontWeight: FontWeight.bold),
                  textAlign: TextAlign.start,
                );
                return state ? child : Center(child: child);
              },
              valueListenable: loaded,
            ),
            BlocConsumer<FirestoreBloc, FirestoreState>(
              builder: (context, state) {
                Widget child = const Placeholder();
                if (state is! RetrieveUsersState) {
                  child = const ErrorPage(message: 'Nothing to see here');
                }
                if (state is RetrieveUsersInitial) {
                  child = const ErrorPage(message: 'Waiting for users');
                }
                if (state is RetrieveUsersInProgress) {
                  child = const ErrorPage(
                    message: 'Getting users',
                    loading: true,
                  );
                }
                if (state is RetrieveUsersFailure) {
                  child = ErrorPage(
                    message: 'Apologies!!\t${state.exception}',
                  );
                }
                if (state is RetrieveUsersSuccess) {
                  child = ListView.separated(
                    padding: const EdgeInsets.only(top: 25),
                    itemBuilder: (_, i) {
                      final user = state.users[i];
                      final url = user.profilePicture ??
                          'https://ui-avatars.com/api/?name=${user.name}';
                      return ListTile(
                        contentPadding: EdgeInsets.zero,
                        leading: CircleAvatar(
                          backgroundColor: Colors.indigo[600],
                          backgroundImage: NetworkImage(url),
                        ),
                        title: Text(user.name),
                      );
                    },
                    separatorBuilder: (_, i) => Divider(),
                    itemCount: state.users.length,
                  );
                }
                return ConstrainedBox(
                  constraints: BoxConstraints(maxHeight: size.height * .85),
                  child: child,
                );
              },
              listener: (context, state) {
                loaded.value = state is RetrieveUsersSuccess;
              },
            ),
            BlocConsumer<AuthBloc, AuthState>(
              listener: (context, state) {
                state.whenOrNull(
                  authenticationSuccess: (_) {
                    context.read<AuthenticatedUserCubit>().remove();
                    context.read<FirestoreBloc>().add(
                          const FirestoreEvent.started(),
                        );
                    context.navigateReplace(Paths.login);
                  },
                  authenticationFailure: LoggingService.instance.log,
                );
              },
              builder: (context, state) {
                if (state is AuthenticationInProgress) {
                  return const Center(child: CircularProgressIndicator());
                }
                return Center(
                  child: ElevatedButton.icon(
                    icon: const Icon(Icons.logout_outlined),
                    onPressed: () => context.read<AuthBloc>().add(
                          AuthEvent.signedUserOut(),
                        ),
                    label: const Text('Sign Out'),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
