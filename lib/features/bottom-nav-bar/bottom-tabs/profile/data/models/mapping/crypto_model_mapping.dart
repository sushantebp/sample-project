import 'package:sample_project/features/bottom-nav-bar/bottom-tabs/profile/data/data.dart';
import 'package:sample_project/features/bottom-nav-bar/bottom-tabs/profile/domain/domain.dart';

extension CryptoModelMapping on CryptoModel {
  CryptoEntity toEntity() =>
      CryptoEntity(coin: coin, wallet: wallet, network: network);
}
