import 'package:sample_project/features/login/domain/domain.dart';

abstract class LoginRepository {
  Future<LoginResponseEntity> login(LoginRequestEntity loginRequest);
}
