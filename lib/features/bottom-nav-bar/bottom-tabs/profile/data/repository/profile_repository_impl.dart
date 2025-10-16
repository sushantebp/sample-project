import 'package:sample_project/core/core.dart';
import 'package:sample_project/features/bottom-nav-bar/bottom-tabs/profile/data/data.dart';
import 'package:sample_project/features/bottom-nav-bar/bottom-tabs/profile/domain/domain.dart';

class ProfileRepositoryImpl extends ProfileRepository {
  final NetworkService networkService;
  ProfileRepositoryImpl(this.networkService);
  @override
  Future<UserEntity> fetchUserDetails() async {
    try {
      final response = await networkService.dio.get(ApiEndPoint.authUser);

      if (response.statusCode == 200) {
        final data = response.data;

        final userModel = UserModel.fromJson(data);
        final userEntity = userModel.toEntity();

        return userEntity;
      } else {
        throw const UserFetchException();
      }
    } catch (e) {
      throw UserFetchException("Error occurred : ${e.toString()}");
    }
  }

  @override
  Future<void> logout() async =>
      await Future.wait([deleteAccessToken(), deleteRefreshToken()]);
}
