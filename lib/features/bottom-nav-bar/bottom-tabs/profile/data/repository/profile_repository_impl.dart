import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';
import 'package:sample_project/core/core.dart';
import 'package:sample_project/features/bottom-nav-bar/bottom-tabs/profile/data/data.dart';
import 'package:sample_project/features/bottom-nav-bar/bottom-tabs/profile/domain/domain.dart';

class ProfileRepositoryImpl extends ProfileRepository {
  final NetworkService networkService;
  ProfileRepositoryImpl(this.networkService);
  @override
  Future<Result<UserEntity>> fetchUserDetails() async {
    try {
      final response = await networkService.dio.get(ApiEndPoint.authUser);

      if (response.statusCode == 200) {
        final data = response.data;

        final userModel = UserModel.fromJson(data);
        final userEntity = userModel.toEntity();

        return Right(userEntity);
      } else {
        String message = response.data["message"] ?? "Failed to fetch data";
        return Left(ApiException(response.statusCode, message));
      }
    } on DioException catch (error) {
      final dioExcept = DioAppException.fromDioError(error);
      return Left(dioExcept);
    } catch (error) {
      throw UnknownnException('Something went wrong : $error');
    }
  }

  @override
  Future<void> logout() async =>
      await Future.wait([deleteAccessToken(), deleteRefreshToken()]);
}
