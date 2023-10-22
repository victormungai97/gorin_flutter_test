import 'package:bcrypt/bcrypt.dart' as bcrypt;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gorin_test_project/blocs/blocs.dart';
import 'package:gorin_test_project/cubits/cubits.dart';
import 'package:gorin_test_project/models/models.dart';
import 'package:gorin_test_project/navigation/navigation.dart';
import 'package:gorin_test_project/services/services.dart';
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

  @override
  Widget build(BuildContext context) {
    final message = context.watch<AuthBloc>().state.whenOrNull(
              authenticationFailure: (exception) => exception,
            ) ??
        context.watch<FirestoreBloc>().state.whenOrNull(
              userSavingFailure: (exception) => exception,
            );

    return Center(
      child: Column(
        children: [
          BlocConsumer<FirestoreBloc, FirestoreState>(
            listener: (context, state) {
              state.whenOrNull(
                userSavingSuccess: (_) => context.navigateReplace(Paths.home),
                userSavingFailure: LoggingService.instance.showToast,
              );
            },
            builder: (context, state) {
              final child = state.whenOrNull(
                userSavingInProgress: CircularProgressIndicator.new,
              );

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
                  state.whenOrNull(
                    authenticationSuccess: (user) {
                      switch (authentication) {
                        case Authentication.REGISTRATION:
                          final form = context.read<FormCubit>().state;
                          if (form == null) return;
                          final json = Map<String, dynamic>.from(form);
                          json[JsonKeys.id] = user?.uid;
                          final person = UserModel.fromJson(json);
                          final userModel = person.copyWith(
                            password: bcrypt.BCrypt.hashpw(
                              'password',
                              bcrypt.BCrypt.gensalt(),
                            ),
                          );
                          context.read<FirestoreBloc>().add(
                                FirestoreEvent.savedUser(userModel),
                              );
                          break;
                        case Authentication.LOGIN:
                          context.navigateReplace(Paths.home);
                          break;
                      }
                    },
                    authenticationFailure: LoggingService.instance.showToast,
                  );
                }),
              );
            },
          ),
          const SizedBox(height: 25),
          if (message != null && message.isNotEmpty)
            Text(
              message,
              style: const TextStyle(color: Color(0xFFD32F2F), fontSize: 14),
              textAlign: TextAlign.center,
            ),
        ],
      ),
    );
  }
}
