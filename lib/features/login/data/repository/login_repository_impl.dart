import 'package:sample_project/core/core.dart';
import 'package:sample_project/features/login/domain/domain.dart';

class LoginRepositoryImpl extends LoginRepository {
  final NetworkService _networkService;
  LoginRepositoryImpl(this._networkService);
  @override
  Future<LoginResponseEntity> login(LoginRequestEntity loginRequest) {
    try {
    } catch (e) {
      throw LoginException();
    }
  }
}
