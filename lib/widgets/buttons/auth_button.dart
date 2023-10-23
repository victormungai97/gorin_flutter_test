import 'package:bcrypt/bcrypt.dart' as bcrypt;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gorin_test_project/blocs/blocs.dart';
import 'package:gorin_test_project/cubits/cubits.dart';
import 'package:gorin_test_project/models/models.dart';
import 'package:gorin_test_project/navigation/navigation.dart';
import 'package:gorin_test_project/utils/utils.dart';
import 'package:gorin_test_project/widgets/widgets.dart';

class AuthButton extends StatelessWidget {
  const AuthButton({
    super.key,
    required this.authentication,
    this.text = 'Submit',
    this.onPressed,
  });

  final Authentication authentication;
  final String text;
  final VoidCallback? onPressed;

  static final _message = ValueNotifier<String?>(null);
  static final _loading = ValueNotifier<bool>(false);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          BlocConsumer<FirestoreBloc, FirestoreState>(
            listener: (context, state) {
              _loading.value = state is UserSavingInProgress ||
                  state is ObtainUserInProgress;
              // _loading.value = (state is UserSavingState) &&
              //     (state.whenOrNull(userSavingInProgress: () => true) ?? false);

              if (state is UserSavingState) {
                state.whenOrNull(
                  userSavingSuccess: (user) {
                    switch (authentication) {
                      case Authentication.REGISTRATION:
                        context.read<AuthenticatedUserCubit>().save(user);
                        context.navigateReplace(Paths.home);
                        break;
                      default:
                    }
                  },
                  userSavingFailure: (exception) => _message.value = exception,
                );
              }

              if (state is ObtainUserState) {
                state.whenOrNull(
                  obtainUserSuccess: (user) {
                    switch (authentication) {
                      case Authentication.LOGIN:
                        final form = context.read<FormCubit>().state;
                        if (form == null) {
                          _message.value = 'Cannot get user details';
                          return;
                        }
                        final password = form[JsonKeys.password];
                        if (password == null || password is! String) {
                          _message.value = 'Cannot get user password';
                          return;
                        }
                        final checkPassword = bcrypt.BCrypt.checkpw(
                          password,
                          user.password,
                        );
                        if (!checkPassword) {
                          _message.value = 'Invalid password provided';
                          return;
                        }
                        context.read<AuthenticatedUserCubit>().save(user);
                        context.navigateReplace(Paths.home);
                        break;
                      default:
                    }
                  },
                  obtainUserFailure: (exception) => _message.value = exception,
                );
              }
            },
            builder: (context, state) {
              Widget? child;
              if (state is UserSavingState) {
                child = state.whenOrNull(
                  userSavingInProgress: CircularProgressIndicator.new,
                );
              }

              if (child != null) return child;

              return BlocConsumer<AuthBloc, AuthState>(
                builder: ((context, state) {
                  final widget = state.whenOrNull(
                    authenticationInProgress: CircularProgressIndicator.new,
                  );

                  if (widget != null) return widget;

                  return PrimaryButton(
                    text: text,
                    onPressed: onPressed,
                    textColor: const Color(0xFF1A237E),
                  );
                }),
                listener: ((context, state) {
                  _loading.value = state is AuthenticationInProgress;

                  state.whenOrNull(
                    authenticationSuccess: (user) {
                      final form = context.read<FormCubit>().state;
                      if (form == null) {
                        _message.value = 'Cannot get user details';
                        return;
                      }

                      FirestoreEvent event;
                      switch (authentication) {
                        case Authentication.REGISTRATION:
                          final json = Map<String, dynamic>.from(form);
                          json[JsonKeys.id] = user?.uid;
                          final person = UserModel.fromJson(json);
                          final userModel = person.copyWith(
                            password: bcrypt.BCrypt.hashpw(
                              person.password,
                              bcrypt.BCrypt.gensalt(),
                            ),
                          );
                          event = FirestoreEvent.savedUser(userModel);
                          break;
                        case Authentication.LOGIN:
                          final email = form[JsonKeys.email];
                          if (email == null || email is! String) {
                            _message.value = 'Cannot get user email address';
                            return;
                          }
                          event = FirestoreEvent.userGot(email);
                          break;
                      }
                      context.read<FirestoreBloc>().add(event);
                    },
                    authenticationFailure: (error) => _message.value = error,
                  );
                }),
              );
            },
          ),
          ValueListenableBuilder(
            valueListenable: _loading,
            builder: (context, state, child) {
              return ValueListenableBuilder(
                builder: (buildContext, message, widget) {
                  if (state || message == null || message.isEmpty) {
                    return const SizedBox.shrink();
                  }
                  return Padding(
                    padding: const EdgeInsets.only(top: 25),
                    child: Text(
                      message,
                      style: const TextStyle(
                        color: Color(0xFFD32F2F),
                        fontSize: 14,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  );
                },
                valueListenable: _message,
              );
            },
          ),
        ],
      ),
    );
  }
}
