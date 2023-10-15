import 'package:flutter_bloc/flutter_bloc.dart';

class PasswordObsureCubit extends Cubit<bool> {
  PasswordObsureCubit() : super(true);

  void toggle() => emit(!state);
}
