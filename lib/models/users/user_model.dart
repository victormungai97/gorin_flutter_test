import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gorin_test_project/utils/utils.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class UserModel with _$UserModel {
  @JsonSerializable(explicitToJson: true)
  const factory UserModel({
    @JsonKey(name: JsonKeys.name) required String name,
    @JsonKey(name: JsonKeys.email) required String emailAddress,
    @JsonKey(name: JsonKeys.password) required String password,
    @Default('') @JsonKey(name: JsonKeys.id) String userId,
    @JsonKey(name: JsonKeys.profile_photo) String? profilePicture,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);

  @override
  String toString() => 'User $name';
}
