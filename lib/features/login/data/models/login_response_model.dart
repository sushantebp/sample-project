import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sample_project/features/login/domain/entity/login_response_entity.dart';

part 'login_response_model.freezed.dart';
part 'login_response_model.g.dart';

@freezed
abstract class LoginResponseModel
    with _$LoginResponseModel
    implements LoginResponseEntity {
  const factory LoginResponseModel({
    required int id,
    required String username,
    required String email,
    required String firstName,
    required String lastName,
    required String gender,
    required String image,
    required String accessToken,
    required String refreshToken,
  }) = _LoginResponseModel;

  factory LoginResponseModel.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseModelFromJson(json);
}
