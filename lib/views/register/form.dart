part of 'register.dart';

class _Form extends StatelessWidget {
  const _Form() : super(key: const ValueKey('LoginForm'));

  @override
  Widget build(BuildContext context) {
    final obscure = context.watch<PasswordObsureCubit>();
    final obscureVal = obscure.state;
    final formCubit = context.watch<FormCubit>();

    final auth = context.watch<AuthBloc>();
    final loading = auth.state.whenOrNull(
          authenticationInProgress: () => true,
        ) ??
        false;
    final firestore = context.watch<FirestoreBloc>();
    auth.state.whenOrNull(
      authenticationSuccess: (user) {
        final form = formCubit.state;
        if (form == null) return;
        final json = Map<String, dynamic>.from(form);
        json[JsonKeys.id] = user.uid;
        firestore.add(
          FirestoreEvent.savedUser(UserModel.fromJson(json)),
        );
      },
    );
    firestore.state.whenOrNull(userSavingSuccess: (_) {
      context.navigate(Paths.home);
    });

    FormGroup buildForm() => fb.group(
          <String, Object>{
            JsonKeys.email: FormControl<String>(
              validators: [Validators.required, Validators.email],
            ),
            JsonKeys.name: FormControl<String>(
              validators: [Validators.required],
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
            // picture
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Center(
                child: CircleAvatar(
                  radius: 40,
                  backgroundColor: Colors.indigo.shade900.withOpacity(.55),
                  child: Icon(Icons.person, color: Colors.white),
                ),
              ),
            ),

            //name
            Container(
              margin: const EdgeInsets.fromLTRB(20, 8, 20, 8),
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: ReactiveTextField<String>(
                formControlName: JsonKeys.name,
                keyboardType: TextInputType.name,
                textInputAction: TextInputAction.next,
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  label: Text('Name'),
                  labelStyle: TextStyle(
                    color: Color(0xFF293567),
                    fontSize: 14,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                validationMessages: {
                  ValidationMessage.required: (_) => 'Please enter your name',
                },
              ),
            ),

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
                  label: Text('Email'),
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
                  label: Text('Password'),
                  labelStyle: const TextStyle(
                    color: Color(0xFF293567),
                    fontSize: 14,
                    fontWeight: FontWeight.w300,
                  ),
                  suffixIcon: GestureDetector(
                    onTap: obscure.toggle,
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

            const SizedBox(height: 20),

            if (!loading)
              //sign in btn
              Center(
                child: PrimaryButton(
                  text: 'Sign Up',
                  onPressed: () {
                    if (!form.valid) {
                      form.markAllAsTouched();
                      return;
                    }

                    auth.add(
                      AuthEvent.registeredUser(
                        "${form.control(JsonKeys.email).value}",
                        "${form.control(JsonKeys.password).value}",
                      ),
                    );

                    formCubit.saveForm(Map<String, Object?>.from(form.value));
                  },
                  textColor: Colors.indigo.shade900,
                ),
              )
            else
              const Center(child: CircularProgressIndicator()),

            const SizedBox(height: 16),

            auth.state.whenOrNull(
                  authenticationFailure: (exception) {
                    return Text(
                      exception,
                      style: const TextStyle(color: Colors.red, fontSize: 18),
                      textAlign: TextAlign.center,
                    );
                  },
                ) ??
                const SizedBox.shrink(),

            firestore.state.whenOrNull(userSavingFailure: (exception) {
                  return Text(
                    exception,
                    style: const TextStyle(color: Colors.red, fontSize: 18),
                    textAlign: TextAlign.center,
                  );
                }) ??
                const SizedBox.shrink(),
          ],
        );
      },
    );
  }
}
