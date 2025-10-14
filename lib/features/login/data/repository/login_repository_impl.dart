import 'package:sample_project/core/core.dart';
import 'package:sample_project/features/login/data/data.dart';
import 'package:sample_project/features/login/domain/domain.dart';

class LoginRepositoryImpl extends LoginRepository {
  final NetworkService _networkService;
  LoginRepositoryImpl(this._networkService);
  @override
  Future<LoginResponseEntity> login(LoginRequestEntity loginRequest) async {
    try {
      final loginRequestModel = loginRequest.toModel();
      final jsonBody = loginRequestModel.toJson();

      final response = await _networkService.dio.post(
        ApiEndPoint.login,
        data: jsonBody,
      );

      final statusCode = response.statusCode;

      if (statusCode == 200) {
        final jsonData = response.data;

        final loginResponseModel = LoginResponseModel.fromJson(jsonData);
        final loginResponseEntity = loginResponseModel.toEntity();

        return loginResponseEntity;
      } else if (statusCode == 400) {
        throw BadRequestException(response.data.toString());
      } else if (statusCode! >= 500) {
        throw ServerException('Server error with status code $statusCode');
      } else {
        throw LoginException('Unexpected error with status code $statusCode');
      }
    } catch (e) {
      throw LoginException(e.toString());
    }
  }
}
