import 'package:sample_project/features/login/domain/domain.dart';

abstract class LoginRepository {
  Future<void> login(LoginRequestEntity loginRequest);
}
