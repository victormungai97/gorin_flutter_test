part of 'login.dart';

class _PasswordObsureCubit extends Cubit<bool> {
  _PasswordObsureCubit() : super(true);

  void toggle() => emit(!state);
}
