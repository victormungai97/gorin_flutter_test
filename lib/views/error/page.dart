part of 'error.dart';

class ErrorPage extends StatelessWidget {
  const ErrorPage({super.key, this.message, this.loading = false});

  final String? message;
  final bool loading;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _Body(message: message, isLoading: loading),
      backgroundColor: const Color(0xffdde0ec),
    );
  }
}
