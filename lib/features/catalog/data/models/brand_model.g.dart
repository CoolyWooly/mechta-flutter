// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'brand_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BrandModel _$BrandModelFromJson(Map<String, dynamic> json) => _BrandModel(
  name: json['name'] as String?,
  code: json['code'] as String?,
  image: json['image'] == null
      ? null
      : ImageModel.fromJson(json['image'] as Map<String, dynamic>),
);

Map<String, dynamic> _$BrandModelToJson(_BrandModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'code': instance.code,
      'image': instance.image,
    };
