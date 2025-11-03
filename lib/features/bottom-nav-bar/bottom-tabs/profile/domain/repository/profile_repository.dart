import 'package:sample_project/core/core.dart';
import 'package:sample_project/features/bottom-nav-bar/bottom-tabs/profile/domain/domain.dart';

abstract class ProfileRepository {
  Future<void> logout();
  Future<Result<UserEntity>> fetchUserDetails();
}
