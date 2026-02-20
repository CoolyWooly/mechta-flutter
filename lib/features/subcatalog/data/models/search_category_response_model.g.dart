// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_category_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SearchCategoryResponseModel _$SearchCategoryResponseModelFromJson(
  Map<String, dynamic> json,
) => _SearchCategoryResponseModel(
  category: json['category'] as String?,
  availableCategories:
      (json['availableCategories'] as List<dynamic>?)
          ?.map(
            (e) => AvailableCategoryModel.fromJson(e as Map<String, dynamic>),
          )
          .toList() ??
      const [],
);

Map<String, dynamic> _$SearchCategoryResponseModelToJson(
  _SearchCategoryResponseModel instance,
) => <String, dynamic>{
  'category': instance.category,
  'availableCategories': instance.availableCategories,
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
