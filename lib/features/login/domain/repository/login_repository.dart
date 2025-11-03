import 'package:sample_project/core/core.dart';
import 'package:sample_project/features/login/domain/domain.dart';

abstract class LoginRepository {
  Future<Result<LoginResponseEntity>> login(LoginRequestEntity loginRequest);
}
