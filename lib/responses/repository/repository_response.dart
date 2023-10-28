import 'package:freezed_annotation/freezed_annotation.dart';

part 'repository_response.freezed.dart';

@freezed
class RepositoryResponse<R> with _$RepositoryResponse<R> {
  const factory RepositoryResponse.done(R result) = RepositoryResponseSuccess;

  const factory RepositoryResponse.error(String message) =
      RepositoryResponseFailure;
}
