part of 'error.dart';

class ErrorPage extends StatelessWidget {
  const ErrorPage({super.key, this.message});

  final String? message;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _Body(message: message),
      backgroundColor: const Color(0xffdde0ec),
    );
  }
}
