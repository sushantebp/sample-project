import 'package:sample_project/features/login/data/data.dart';
import 'package:sample_project/features/login/domain/domain.dart';

extension LoginResponseModelMapping on LoginResponseModel {
  LoginResponseEntity toEntity() => LoginResponseEntity(
    id: id,
    username: username,
    email: email,
    firstName: firstName,
    lastName: lastName,
    gender: gender,
    image: image,
    accessToken: accessToken,
    refreshToken: refreshToken,
  );
}
