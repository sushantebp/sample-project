import 'package:sample_project/features/bottom-nav-bar/bottom-tabs/profile/data/data.dart';
import 'package:sample_project/features/bottom-nav-bar/bottom-tabs/profile/domain/domain.dart';

extension BankModelMapping on BankModel {
  BankEntity toEntity() => BankEntity(
    cardExpire: cardExpire,
    cardNumber: cardNumber,
    cardType: cardType,
    currency: currency,
    iban: iban,
  );
}
