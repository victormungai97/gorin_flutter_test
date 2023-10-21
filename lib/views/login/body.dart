part of 'login.dart';

class _Body extends StatelessWidget {
  const _Body() : super(key: const ValueKey('LoginBody'));

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Login with email',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w300,
                color: Colors.indigo.shade900,
              ),
            ),
            const SizedBox(height: 20),
            const _Form(),
            const SizedBox(height: 20),
            GestureDetector(
              onTap: () => context.navigateReplace(Paths.register),
              child: Column(
                children: [
                  Text(
                    'Don\'t have an account',
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
                        "Sign Up",
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
            ),
          ],
        ),
      ),
    );
  }
}
