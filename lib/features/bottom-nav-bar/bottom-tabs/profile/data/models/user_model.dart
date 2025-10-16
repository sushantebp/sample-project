import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sample_project/features/bottom-nav-bar/bottom-tabs/profile/data/data.dart';
import 'package:sample_project/features/bottom-nav-bar/bottom-tabs/profile/domain/domain.dart';

part 'user_model.g.dart';
part 'user_model.freezed.dart';

@freezed
abstract class UserModel with _$UserModel implements UserEntity {
  const factory UserModel({
    required int id,
    required String firstName,
    required String lastName,
    required String maidenName,
    required int age,
    required String gender,
    required String email,
    required String phone,
    required String username,
    required String password,
    required String birthDate,
    required String image,
    required String bloodGroup,
    required double height,
    required double weight,
    required String eyeColor,
    required HairModel hair,
    required String ip,
    required AddressModel address,
    required String macAddress,
    required String university,
    required BankModel bank,
    required CompanyModel company,
    required String ein,
    required String ssn,
    required String userAgent,
    required CryptoModel crypto,
    required String role,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}
