part of 'home.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = context.watch<FirestoreBloc>();
    final usersCollection = bloc.users;

    return StatefulWrapper(
      child: Scaffold(
        body: const _Body(),
        backgroundColor: const Color(0xffdde0ec),
      ),
      onInit: () {
        context.read<FirestoreBloc>().add(
              const FirestoreEvent.retrievedUsers(),
            );

        usersCollection?.snapshots(includeMetadataChanges: true).listen(
          (event) async {
            try {
              if (bloc.state is! RetrieveUsersSuccess) return;
              final users = (bloc.state as RetrieveUsersState).whenOrNull(
                    retrieveUsersSuccess: (users) => users,
                  ) ??
                  [];
              final docs = event.docs
                  .map(
                    (e) => UserModel.fromJson(e.data() as Map<String, dynamic>)
                        .copyWith(userId: e.id),
                  )
                  .toList();
              if (!listEquals(docs, users)) {
                context.read<FirestoreBloc>().add(
                      const FirestoreEvent.retrievedUsers(reload: false),
                    );
              }
              ;
            } catch (error, stackTrace) {
              await _logger.log(
                error,
                label: 'ERROR LISTENING ON CLOUD FIRESTORE',
                stackTrace: stackTrace,
              );
            }
          },
          onError: _logger.logError,
        );
      },
    );
  }
}
