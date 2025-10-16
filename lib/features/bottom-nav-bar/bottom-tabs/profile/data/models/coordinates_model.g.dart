// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coordinates_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CoordinatesModel _$CoordinatesModelFromJson(Map<String, dynamic> json) =>
    _CoordinatesModel(
      lat: (json['lat'] as num).toDouble(),
      lng: (json['lng'] as num).toDouble(),
    );

Map<String, dynamic> _$CoordinatesModelToJson(_CoordinatesModel instance) =>
    <String, dynamic>{'lat': instance.lat, 'lng': instance.lng};
