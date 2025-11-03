import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';
import 'package:sample_project/core/core.dart';
import 'package:sample_project/features/login/data/data.dart';
import 'package:sample_project/features/login/domain/domain.dart';

class LoginRepositoryImpl extends LoginRepository {
  final NetworkService _networkService;
  LoginRepositoryImpl(this._networkService);
  @override
  Future<Result<LoginResponseEntity>> login(
    LoginRequestEntity loginRequest,
  ) async {
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
        return Right(loginResponseEntity);
      } else {
        return Left(ApiException(statusCode, "Login failed."));
      }
    } on DioException catch (error) {
      final dioAppException = DioAppException.fromDioError(error);
      return Left(dioAppException);
    } catch (error) {
      throw UnknownnException('Something went wrong : $error');
    }
  }
}
