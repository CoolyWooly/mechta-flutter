// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_category_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ProductCategoryModel _$ProductCategoryModelFromJson(
  Map<String, dynamic> json,
) => _ProductCategoryModel(
  name: json['name'] as String?,
  slug: json['slug'] as String?,
  level: (json['level'] as num?)?.toInt(),
);

Map<String, dynamic> _$ProductCategoryModelToJson(
  _ProductCategoryModel instance,
) => <String, dynamic>{
  'name': instance.name,
  'slug': instance.slug,
  'level': instance.level,
};
