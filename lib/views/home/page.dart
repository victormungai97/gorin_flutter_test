part of 'home.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return StatefulWrapper(
      child: Scaffold(
        body: const _Body(),
        backgroundColor: const Color(0xffdde0ec),
      ),
      onInit: () {
        context.read<FirestoreBloc>().add(
              const FirestoreEvent.retrievedUsers(),
            );
      },
    );
  }
}
