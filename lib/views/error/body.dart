part of 'error.dart';

class _Body extends StatelessWidget {
  const _Body({required this.isLoading, this.message})
      : super(
          key: const ValueKey('ErrorBody'),
        );

  final String? message;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    final color = Colors.indigo.shade800;
    return Center(
      child: Column(
        children: [
          Icon(
            isLoading ? Icons.sync : Icons.error_outline,
            color: color,
            size: 128,
          ),
          const SizedBox(height: 18),
          Text(
            message ?? 'An error has been encountered',
            style: TextStyle(
              fontSize: 18,
              color: color,
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
        mainAxisAlignment: MainAxisAlignment.center,
      ),
    );
  }
}
