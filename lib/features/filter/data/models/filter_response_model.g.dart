// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'filter_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_FiltersResponseModel _$FiltersResponseModelFromJson(
  Map<String, dynamic> json,
) => _FiltersResponseModel(
  totalCount: (json['totalCount'] as num?)?.toInt(),
  priceRange: json['priceRange'] == null
      ? null
      : PriceRangeModel.fromJson(json['priceRange'] as Map<String, dynamic>),
  properties: (json['properties'] as List<dynamic>?)
      ?.map((e) => FilterPropertyModel.fromJson(e as Map<String, dynamic>))
      .toList(),
  availableCategories: (json['availableCategories'] as List<dynamic>?)
      ?.map((e) => AvailableCategoryModel.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$FiltersResponseModelToJson(
  _FiltersResponseModel instance,
) => <String, dynamic>{
  'totalCount': instance.totalCount,
  'priceRange': instance.priceRange,
  'properties': instance.properties,
  'availableCategories': instance.availableCategories,
};

_PriceRangeModel _$PriceRangeModelFromJson(Map<String, dynamic> json) =>
    _PriceRangeModel(
      minPrice: (json['minPrice'] as num?)?.toInt(),
      maxPrice: (json['maxPrice'] as num?)?.toInt(),
    );

Map<String, dynamic> _$PriceRangeModelToJson(_PriceRangeModel instance) =>
    <String, dynamic>{
      'minPrice': instance.minPrice,
      'maxPrice': instance.maxPrice,
    };

_FilterPropertyModel _$FilterPropertyModelFromJson(Map<String, dynamic> json) =>
    _FilterPropertyModel(
      name: json['name'] as String?,
      type: json['type'] as String?,
      slug: json['slug'] as String?,
      items: (json['items'] as List<dynamic>?)
          ?.map((e) => FilterItemModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$FilterPropertyModelToJson(
  _FilterPropertyModel instance,
) => <String, dynamic>{
  'name': instance.name,
  'type': instance.type,
  'slug': instance.slug,
  'items': instance.items,
};

_FilterItemModel _$FilterItemModelFromJson(Map<String, dynamic> json) =>
    _FilterItemModel(
      value: json['value'] as String?,
      slug: json['slug'] as String?,
      count: (json['count'] as num?)?.toInt(),
    );

Map<String, dynamic> _$FilterItemModelToJson(_FilterItemModel instance) =>
    <String, dynamic>{
      'value': instance.value,
      'slug': instance.slug,
      'count': instance.count,
    };

_AvailableCategoryModel _$AvailableCategoryModelFromJson(
  Map<String, dynamic> json,
) => _AvailableCategoryModel(
  slug: json['slug'] as String?,
  name: json['name'] as String?,
  productsCount: (json['productsCount'] as num?)?.toInt(),
);

Map<String, dynamic> _$AvailableCategoryModelToJson(
  _AvailableCategoryModel instance,
) => <String, dynamic>{
  'slug': instance.slug,
  'name': instance.name,
  'productsCount': instance.productsCount,
};
