import 'package:flutter_bloc/flutter_bloc.dart';

class FormCubit extends Cubit<Map<String, dynamic>?> {
  FormCubit() : super(null);

  void saveForm(Map<String, dynamic>? form) => emit(form);
}
