part of 'register.dart';

class _Form extends StatelessWidget {
  const _Form() : super(key: const ValueKey('LoginForm'));

  static const _logger = LoggingService.instance;

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
    final imageBloc = context.watch<ImageBloc>();

    FormGroup buildForm() => fb.group(
          <String, Object>{
            JsonKeys.profile_photo: FormControl<XFile>(
              validators: [Validators.required],
            ),
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

    final indigo = Colors.indigo.shade900;

    return ReactiveFormBuilder(
      form: buildForm,
      builder: (context, form, child) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // picture
            BlocConsumer<ImageBloc, ImageState>(
              builder: (_, state) {
                Widget? widget;
                if (state is ImagePickingState) {
                  widget = state.whenOrNull(
                    loading: () {
                      return const Center(child: CircularProgressIndicator());
                    },
                  );
                }

                if (widget != null) return widget;

                return Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Center(
                    child: ReactiveValueListenableBuilder<XFile>(
                      builder: (buildContext, control, widget) {
                        final image = control.value;

                        ImageProvider<Object>? bgImg;

                        if (image != null) {
                          if (kIsWeb) {
                            bgImg = NetworkImage(image.path);
                          } else {
                            bgImg = FileImage(File(image.path));
                          }
                        }

                        return Center(
                          child: Column(
                            children: [
                              GestureDetector(
                                onDoubleTap: bgImg != null
                                    ? () async {
                                        await showDialog<Object?>(
                                          context: context,
                                          builder: (_) {
                                            return ImageFullScreen(
                                              backgroundImage: bgImg!,
                                            );
                                          },
                                        );
                                      }
                                    : null,
                                onTap: () async {
                                  try {
                                    String source = 'gallery';
                                    if (!kIsWeb) {
                                      final option =
                                          await showModalBottomSheet<String>(
                                        shape: const RoundedRectangleBorder(
                                          borderRadius: BorderRadius.vertical(
                                            top: Radius.circular(10),
                                          ),
                                        ),
                                        context: context,
                                        builder: (_) {
                                          return const ImagePickerDialog();
                                        },
                                        useRootNavigator: false,
                                      );
                                      if (option == null) return;
                                      source = option;
                                    }
                                    control.markAsUntouched();
                                    imageBloc.add(
                                      ImageEvent.imagePicked(
                                        source: source,
                                        context: context,
                                      ),
                                    );
                                  } catch (error, stackTrace) {
                                    await _logger.log(
                                      error,
                                      label: 'Error choosing image source',
                                      stackTrace: stackTrace,
                                    );
                                  }
                                },
                                child: CircleAvatar(
                                  radius: 40,
                                  backgroundColor: indigo.withOpacity(.55),
                                  backgroundImage: bgImg,
                                  child: image == null
                                      ? const Icon(Icons.person)
                                      : null,
                                  foregroundColor: Colors.white,
                                ),
                              ),
                              StreamBuilder(
                                builder: (_, snapshot) {
                                  final tap = snapshot.data ?? control.touched;
                                  return tap && image == null
                                      ? const Padding(
                                          padding: EdgeInsets.all(12),
                                          child: Text(
                                            'Profile picture is needed',
                                            style: TextStyle(
                                              color: Color(0xFFB71C1C),
                                              fontSize: 14,
                                            ),
                                            textAlign: TextAlign.center,
                                          ),
                                        )
                                      : const SizedBox.shrink();
                                },
                                stream: control.touchChanges,
                              ),
                            ],
                          ),
                        );
                      },
                      formControlName: JsonKeys.profile_photo,
                    ),
                  ),
                );
              },
              listener: (context, state) {
                if (state is ImagePickingState) {
                  final control = form.control(JsonKeys.profile_photo);
                  state.whenOrNull(
                    complete: (file) {
                      control.value = file;
                      control.markAsTouched();
                    },
                    exception: ((message) {
                      control.markAsTouched();
                      _logger.showToast(message);
                    }),
                  );
                }
              },
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

            BlocConsumer<ImageBloc, ImageState>(
              builder: (_, state) {
                Widget? widget;

                if (state is FileUploadingState) {
                  widget = state.whenOrNull(
                    loading: (value) {
                      return Column(
                        children: [
                          LinearProgressIndicator(value: value),
                          Builder(
                            builder: (context) {
                              if (value == null) return const SizedBox.shrink();
                              return Padding(
                                padding: const EdgeInsets.symmetric(
                                  vertical: 12,
                                ),
                                child: Text(
                                  '${(100 * value.round())}%',
                                  textAlign: TextAlign.center,
                                ),
                              );
                            },
                          ),
                        ],
                      );
                    },
                  );
                }

                if (widget != null) return widget;

                if (loading) {
                  return const Center(child: CircularProgressIndicator());
                }

                //sign in btn
                return Center(
                  child: PrimaryButton(
                    text: 'Sign Up',
                    onPressed: () {
                      if (!form.valid) {
                        form.markAllAsTouched();
                        return;
                      }

                      final body = Map<String, Object?>.from(form.value);
                      final img = body.remove(JsonKeys.profile_photo) as XFile?;

                      imageBloc.add(ImageEvent.fileUploaded(image: img));

                      formCubit.saveForm(body);
                    },
                    textColor: indigo,
                  ),
                );
              },
              listener: (_, state) async {
                if (state is FileUploadingState) {
                  await state.whenOrNull(
                    complete: debugPrint,
                    exception: _logger.showToast,
                  );
                }
              },
            ),

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
