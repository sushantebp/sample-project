// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'crypto_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CryptoModel _$CryptoModelFromJson(Map<String, dynamic> json) => _CryptoModel(
  coin: json['coin'] as String,
  wallet: json['wallet'] as String,
  network: json['network'] as String,
);

Map<String, dynamic> _$CryptoModelToJson(_CryptoModel instance) =>
    <String, dynamic>{
      'coin': instance.coin,
      'wallet': instance.wallet,
      'network': instance.network,
    };
