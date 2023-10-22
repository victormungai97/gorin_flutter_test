part of 'login.dart';

class _Form extends StatelessWidget {
  const _Form() : super(key: const ValueKey('LoginForm'));

  @override
  Widget build(BuildContext context) {
    final cubit = context.watch<PasswordObsureCubit>();
    final obscureVal = cubit.state;

    FormGroup buildForm() => fb.group(
          <String, Object>{
            JsonKeys.email: FormControl<String>(
              validators: [Validators.required, Validators.email],
            ),
            JsonKeys.password: FormControl<String>(
              validators: [Validators.required, Validators.minLength(8)],
            ),
          },
        );

    return ReactiveFormBuilder(
      form: buildForm,
      builder: (context, form, child) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //email
            Container(
              margin: const EdgeInsets.fromLTRB(20, 8, 20, 8),
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: ReactiveTextField<String>(
                formControlName: JsonKeys.email,
                keyboardType: TextInputType.emailAddress,
                textInputAction: TextInputAction.next,
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  label: Text('email'),
                  labelStyle: TextStyle(
                    color: Color(0xFF293567),
                    fontSize: 14,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                validationMessages: {
                  ValidationMessage.required: (_) => 'Email address is needed',
                  ValidationMessage.email: (_) =>
                      'Invalid email address entered',
                },
              ),
            ),

            //password
            Container(
              margin: const EdgeInsets.fromLTRB(20, 8, 20, 8),
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: ReactiveTextField<String>(
                formControlName: JsonKeys.password,
                keyboardType: TextInputType.visiblePassword,
                textInputAction: TextInputAction.done,
                decoration: InputDecoration(
                  label: Text('password'),
                  labelStyle: const TextStyle(
                    color: Color(0xFF293567),
                    fontSize: 14,
                    fontWeight: FontWeight.w300,
                  ),
                  suffixIcon: GestureDetector(
                    onTap: cubit.toggle,
                    child: Icon(
                      obscureVal
                          ? Icons.visibility_rounded
                          : Icons.visibility_off_rounded,
                      color: const Color(0xff5C5C5C).withAlpha(180),
                    ),
                  ),
                  border: InputBorder.none,
                ),
                validationMessages: {
                  ValidationMessage.required: (_) => 'Password is required',
                  ValidationMessage.minLength: (_) =>
                      'Password should have at least 8 characters',
                },
                autocorrect: false,
                obscureText: obscureVal,
                enableSuggestions: false,
              ),
            ),

            const SizedBox(height: 16),

            //forgot password
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: GestureDetector(
                  onTap: null,
                  child: Text(
                    "Forgot Password ? ",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.indigo.shade800,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
            ),

            const SizedBox(height: 20),

            //sign in btn
            Center(
              child: PrimaryButton(
                text: 'Login',
                onPressed: () => context.navigateReplace(Paths.home),
                textColor: Colors.indigo.shade900,
              ),
            ),

            SizedBox(height: 16),
          ],
        );
      },
    );
  }
}
