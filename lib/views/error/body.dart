part of 'error.dart';

class _Body extends StatelessWidget {
  const _Body({this.message}) : super(key: const ValueKey('ErrorBody'));

  final String? message;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Icon(
            Icons.error_outline,
            color: Colors.indigo.shade800,
            size: 128,
          ),
          // const Spacer(),
          Text(
            message ?? 'An error has been encountered',
            style: TextStyle(
              fontSize: 18,
              color: Colors.indigo.shade800,
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
        mainAxisAlignment: MainAxisAlignment.center,
      ),
    );
  }
}
