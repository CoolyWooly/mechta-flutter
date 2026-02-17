// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'price_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PriceModel _$PriceModelFromJson(Map<String, dynamic> json) => _PriceModel(
  basePrice: (json['basePrice'] as num?)?.toInt(),
  finalPrice: (json['finalPrice'] as num?)?.toInt(),
);

Map<String, dynamic> _$PriceModelToJson(_PriceModel instance) =>
    <String, dynamic>{
      'basePrice': instance.basePrice,
      'finalPrice': instance.finalPrice,
    };
