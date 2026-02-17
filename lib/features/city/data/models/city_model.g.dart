// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'city_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CityModel _$CityModelFromJson(Map<String, dynamic> json) => _CityModel(
  code: json['code'] as String?,
  kaspiCode: json['kaspiCode'] as String?,
  name: json['name'] as String?,
  phones: (json['phones'] as List<dynamic>?)?.map((e) => e as String).toList(),
  coordinates: json['coordinates'] == null
      ? null
      : CoordinatesModel.fromJson(json['coordinates'] as Map<String, dynamic>),
);

Map<String, dynamic> _$CityModelToJson(_CityModel instance) =>
    <String, dynamic>{
      'code': instance.code,
      'kaspiCode': instance.kaspiCode,
      'name': instance.name,
      'phones': instance.phones,
      'coordinates': instance.coordinates,
    };
