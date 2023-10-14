import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class UserModel with _$UserModel {
  @JsonSerializable(explicitToJson: true)
  const factory UserModel({
    required String name,
    @JsonKey(name: 'email') required String emailAddress,
    required String password,
    @Default('') @JsonKey(name: 'id') String userId,
    @JsonKey(name: 'profile_photo') String? profilePicture,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);

  @override
  String toString() => 'User $name';
}
