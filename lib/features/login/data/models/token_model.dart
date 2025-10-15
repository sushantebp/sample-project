import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sample_project/features/login/domain/entity/token_entity.dart';

part 'token_model.g.dart';
part 'token_model.freezed.dart';

@freezed
abstract class TokenModel with _$TokenModel implements TokenEntity {
  const factory TokenModel({
    required String accessToken,
    required String refreshToken,
  }) = _TokenModel;
  factory TokenModel.fromJson(Map<String, dynamic> json) =>
      _$TokenModelFromJson(json);
}
