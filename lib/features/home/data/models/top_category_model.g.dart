// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'top_category_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TopCategoryModel _$TopCategoryModelFromJson(
  Map<String, dynamic> json,
) => _TopCategoryModel(
  category: json['category'] == null
      ? null
      : ProductCategoryModel.fromJson(json['category'] as Map<String, dynamic>),
  products:
      (json['products'] as List<dynamic>?)
          ?.map((e) => ProductDetailModel.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
);

Map<String, dynamic> _$TopCategoryModelToJson(_TopCategoryModel instance) =>
    <String, dynamic>{
      'category': instance.category,
      'products': instance.products,
    };
