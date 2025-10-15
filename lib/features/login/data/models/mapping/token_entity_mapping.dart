import 'package:sample_project/features/login/data/data.dart';
import 'package:sample_project/features/login/domain/domain.dart';

extension TokenEntityMapping on TokenModel {
  TokenEntity toEntity() =>
      TokenEntity(accessToken: accessToken, refreshToken: refreshToken);
}
