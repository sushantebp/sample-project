// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AddressModel _$AddressModelFromJson(Map<String, dynamic> json) =>
    _AddressModel(
      address: json['address'] as String,
      city: json['city'] as String,
      state: json['state'] as String,
      stateCode: json['stateCode'] as String,
      postalCode: json['postalCode'] as String,
      coordinates: CoordinatesModel.fromJson(
        json['coordinates'] as Map<String, dynamic>,
      ),
      country: json['country'] as String,
    );

Map<String, dynamic> _$AddressModelToJson(_AddressModel instance) =>
    <String, dynamic>{
      'address': instance.address,
      'city': instance.city,
      'state': instance.state,
      'stateCode': instance.stateCode,
      'postalCode': instance.postalCode,
      'coordinates': instance.coordinates,
      'country': instance.country,
    };
