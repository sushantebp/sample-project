import 'package:sample_project/features/bottom-nav-bar/bottom-tabs/profile/data/data.dart';
import 'package:sample_project/features/bottom-nav-bar/bottom-tabs/profile/domain/domain.dart';

extension UserModelMapping on UserModel {
  UserEntity toEntity() => UserEntity(
    id: id,
    firstName: firstName,
    lastName: lastName,
    maidenName: maidenName,
    age: age,
    gender: gender,
    email: email,
    phone: phone,
    username: username,
    password: password,
    birthDate: birthDate,
    image: image,
    bloodGroup: bloodGroup,
    height: height,
    weight: weight,
    eyeColor: eyeColor,
    hair: hair.toEntity(),
    ip: ip,
    address: address.toEntity(),
    macAddress: macAddress,
    university: university,
    bank: bank.toEntity(),
    company: company.toEntity(),
    ein: ein,
    ssn: ssn,
    userAgent: userAgent,
    crypto: crypto.toEntity(),
    role: role,
  );
}
