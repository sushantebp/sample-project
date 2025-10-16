import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sample_project/features/bottom-nav-bar/bottom-tabs/profile/domain/domain.dart';

part 'crypto_model.g.dart';
part 'crypto_model.freezed.dart';

@freezed
abstract class CryptoModel with _$CryptoModel implements CryptoEntity {
  const factory CryptoModel({
    required String coin,
    required String wallet,
    required String network,
  }) = _CryptoModel;

  factory CryptoModel.fromJson(Map<String, dynamic> json) =>
      _$CryptoModelFromJson(json);
}
