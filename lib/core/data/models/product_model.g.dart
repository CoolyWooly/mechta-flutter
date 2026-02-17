// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ProductModel _$ProductModelFromJson(
  Map<String, dynamic> json,
) => _ProductModel(
  id: json['id'] as String?,
  name: json['name'] as String?,
  slug: json['slug'] as String?,
  code: json['code'] as String?,
  numericId: (json['numericId'] as num?)?.toInt(),
  images:
      (json['images'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const [],
  preview: json['preview'] as String?,
  availability: json['availability'] as String?,
  preorder: json['preorder'] == null
      ? null
      : PreorderModel.fromJson(json['preorder'] as Map<String, dynamic>),
  prices: json['prices'] == null
      ? null
      : PriceModel.fromJson(json['prices'] as Map<String, dynamic>),
  stickers:
      (json['stickers'] as List<dynamic>?)
          ?.map((e) => StickerModel.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  mainProperties:
      (json['mainProperties'] as List<dynamic>?)
          ?.map((e) => PropertyModel.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  categories:
      (json['categories'] as List<dynamic>?)
          ?.map((e) => ProductCategoryModel.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  rating: json['rating'] == null
      ? null
      : RatingModel.fromJson(json['rating'] as Map<String, dynamic>),
  shipment: json['shipment'] == null
      ? null
      : ShipmentModel.fromJson(json['shipment'] as Map<String, dynamic>),
  propertyGroups:
      (json['propertyGroups'] as List<dynamic>?)
          ?.map((e) => PropertyGroupModel.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  metrics: json['metrics'] == null
      ? null
      : MetricsModel.fromJson(json['metrics'] as Map<String, dynamic>),
  isShowcase: json['onlyShopwindow'] as bool?,
  videos:
      (json['videos'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const [],
  tradeInAvailable: json['tradeInAvailable'] as bool?,
  marketplaces:
      (json['marketplaces'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      const [],
);

Map<String, dynamic> _$ProductModelToJson(_ProductModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'slug': instance.slug,
      'code': instance.code,
      'numericId': instance.numericId,
      'images': instance.images,
      'preview': instance.preview,
      'availability': instance.availability,
      'preorder': instance.preorder,
      'prices': instance.prices,
      'stickers': instance.stickers,
      'mainProperties': instance.mainProperties,
      'categories': instance.categories,
      'rating': instance.rating,
      'shipment': instance.shipment,
      'propertyGroups': instance.propertyGroups,
      'metrics': instance.metrics,
      'onlyShopwindow': instance.isShowcase,
      'videos': instance.videos,
      'tradeInAvailable': instance.tradeInAvailable,
      'marketplaces': instance.marketplaces,
    };
