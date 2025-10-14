import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sample_project/features/login/domain/entity/login_request_entity.dart';

part 'login_request_model.freezed.dart';
part 'login_request_model.g.dart';

@freezed
abstract class LoginRequestModel
    with _$LoginRequestModel
    implements LoginRequestEntity {
  const factory LoginRequestModel({
    required String username,
    required String password,
  }) = _LoginRequestModel;

  factory LoginRequestModel.fromJson(Map<String, dynamic> json) =>
      _$LoginRequestModelFromJson(json);
}
