import 'dart:convert';

import 'package:gorin_test_project/models/models.dart';
import 'package:gorin_test_project/services/services.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

const _logger = LoggingService.instance;

/// Bloc to persisently save an authenticated user
class AuthenticatedUserCubit extends HydratedCubit<UserModel?> {
  AuthenticatedUserCubit() : super(null);

  void save(UserModel user) => emit(user);

  void remove() => emit(null);

  @override
  UserModel? fromJson(Map<String, dynamic>? json) {
    if (json == null) return null;
    try {
      Future(() async {
        await _logger.log(
          JsonEncoder.withIndent('  ').convert(json),
          label: 'PRIOR LOGGED IN USER',
          isException: false,
        );
      });
      final authenticated = json['authenticated'];
      if (authenticated == null || authenticated is! bool || !authenticated) {
        return null;
      }
      final user = json['user'];
      if (user == null || user is! Map<String, dynamic>) return null;
      return UserModel.fromJson(user);
    } catch (error, stackTrace) {
      Future(() async => await _logger.logError(error, stackTrace));
    }
    return null;
  }

  @override
  Map<String, dynamic>? toJson(UserModel? state) {
    final json = <String, dynamic>{};
    try {
      json['authenticated'] = state != null;
      if (state != null) json['user'] = state.toJson();
    } catch (error, stackTrace) {
      Future(() async => await _logger.logError(error, stackTrace));
      json['authenticated'] = false;
    }
    return json;
  }
}
