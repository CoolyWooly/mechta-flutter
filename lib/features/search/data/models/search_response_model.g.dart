// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SearchResponseModel _$SearchResponseModelFromJson(
  Map<String, dynamic> json,
) => _SearchResponseModel(
  text: json['text'] as String? ?? '',
  correction: json['correction'] as String? ?? '',
  taps:
      (json['taps'] as List<dynamic>?)
          ?.map((e) => SearchChipModel.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  variants:
      (json['variants'] as List<dynamic>?)
          ?.map((e) => SearchVariantModel.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  products:
      (json['products'] as List<dynamic>?)
          ?.map((e) => SearchProductModel.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  categories:
      (json['categories'] as List<dynamic>?)
          ?.map((e) => SearchCategoryModel.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
);

Map<String, dynamic> _$SearchResponseModelToJson(
  _SearchResponseModel instance,
) => <String, dynamic>{
  'text': instance.text,
  'correction': instance.correction,
  'taps': instance.taps,
  'variants': instance.variants,
  'products': instance.products,
  'categories': instance.categories,
};

_SearchChipModel _$SearchChipModelFromJson(Map<String, dynamic> json) =>
    _SearchChipModel(
      label: json['label'] as String? ?? '',
      searchText: json['search_text'] as String? ?? '',
    );

Map<String, dynamic> _$SearchChipModelToJson(_SearchChipModel instance) =>
    <String, dynamic>{
      'label': instance.label,
      'search_text': instance.searchText,
    };

_SearchVariantModel _$SearchVariantModelFromJson(Map<String, dynamic> json) =>
    _SearchVariantModel(text: json['text'] as String? ?? '');

Map<String, dynamic> _$SearchVariantModelToJson(_SearchVariantModel instance) =>
    <String, dynamic>{'text': instance.text};

_SearchProductModel _$SearchProductModelFromJson(Map<String, dynamic> json) =>
    _SearchProductModel(
      id: json['id'] as String? ?? '',
      available: json['available'] as bool? ?? false,
      name: json['name'] as String? ?? '',
      brand: json['brand'] as String? ?? '',
      price: json['price'] as String? ?? '',
      imageUrl: json['image_url'] as String? ?? '',
      link: json['link'] as String? ?? '',
      code: json['code'] as String?,
    );

Map<String, dynamic> _$SearchProductModelToJson(_SearchProductModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'available': instance.available,
      'name': instance.name,
      'brand': instance.brand,
      'price': instance.price,
      'image_url': instance.imageUrl,
      'link': instance.link,
      'code': instance.code,
    };

_SearchCategoryModel _$SearchCategoryModelFromJson(Map<String, dynamic> json) =>
    _SearchCategoryModel(
      id: json['id'] as String? ?? '',
      name: json['name'] as String? ?? '',
      direct: json['direct'] as bool? ?? false,
      link: json['link'] as String? ?? '',
    );

Map<String, dynamic> _$SearchCategoryModelToJson(
  _SearchCategoryModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'direct': instance.direct,
  'link': instance.link,
};
