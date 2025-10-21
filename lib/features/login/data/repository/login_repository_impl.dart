import 'package:dio/dio.dart';
import 'package:sample_project/core/core.dart';
import 'package:sample_project/features/login/data/data.dart';
import 'package:sample_project/features/login/domain/domain.dart';

class LoginRepositoryImpl extends LoginRepository {
  final NetworkService _networkService;
  LoginRepositoryImpl(this._networkService);
  @override
  Future<void> login(LoginRequestEntity loginRequest) async {
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

        await setAccessToken(loginResponseEntity.accessToken);
        await setRefreshToken(loginResponseEntity.refreshToken);
      }
    } on DioException catch (e) {
      final error = e.error;
      if (error is AppException) {
        throw error;
      } else {
        throw const NetworkException("Unexpected network error");
      }
    } catch (e) {
      throw Exception("hmm something is wrong");
    }
  }
}
