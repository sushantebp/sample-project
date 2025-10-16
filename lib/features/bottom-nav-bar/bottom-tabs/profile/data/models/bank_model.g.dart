// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bank_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BankModel _$BankModelFromJson(Map<String, dynamic> json) => _BankModel(
  cardExpire: json['cardExpire'] as String,
  cardNumber: json['cardNumber'] as String,
  cardType: json['cardType'] as String,
  currency: json['currency'] as String,
  iban: json['iban'] as String,
);

Map<String, dynamic> _$BankModelToJson(_BankModel instance) =>
    <String, dynamic>{
      'cardExpire': instance.cardExpire,
      'cardNumber': instance.cardNumber,
      'cardType': instance.cardType,
      'currency': instance.currency,
      'iban': instance.iban,
    };
