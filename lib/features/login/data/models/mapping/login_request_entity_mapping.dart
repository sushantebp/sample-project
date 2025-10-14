import 'package:sample_project/features/login/data/data.dart';
import 'package:sample_project/features/login/domain/domain.dart';

extension LoginRequestEntityMapping on LoginRequestEntity {
  LoginRequestModel toModel() =>
      LoginRequestModel(username: username, password: password);
}
