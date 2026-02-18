// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'legacy_product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_LegacyProductModel _$LegacyProductModelFromJson(
  Map<String, dynamic> json,
) => _LegacyProductModel(
  id: (json['id'] as num?)?.toInt(),
  name: json['name'] as String?,
  code: json['code'] as String?,
  price: (json['price'] as num?)?.toInt(),
  photos:
      (json['photos'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const [],
  gallery:
      (json['gallery'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const [],
  availability: json['availability'] as String?,
  prices: json['prices'] == null
      ? null
      : LegacyPricesModel.fromJson(json['prices'] as Map<String, dynamic>),
);

Map<String, dynamic> _$LegacyProductModelToJson(_LegacyProductModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'code': instance.code,
      'price': instance.price,
      'photos': instance.photos,
      'gallery': instance.gallery,
      'availability': instance.availability,
      'prices': instance.prices,
    };

_LegacyPricesModel _$LegacyPricesModelFromJson(Map<String, dynamic> json) =>
    _LegacyPricesModel(
      discountedPrice: (json['discounted_price'] as num?)?.toInt(),
      basePrice: (json['base_price'] as num?)?.toInt(),
      hasDiscount: json['has_discount'] as bool?,
    );

Map<String, dynamic> _$LegacyPricesModelToJson(_LegacyPricesModel instance) =>
    <String, dynamic>{
      'discounted_price': instance.discountedPrice,
      'base_price': instance.basePrice,
      'has_discount': instance.hasDiscount,
    };
