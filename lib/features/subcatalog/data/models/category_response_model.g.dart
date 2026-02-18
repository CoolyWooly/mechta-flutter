// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CategoryResponseModel _$CategoryResponseModelFromJson(
  Map<String, dynamic> json,
) => _CategoryResponseModel(
  category: json['category'] == null
      ? null
      : CategoryModel.fromJson(json['category'] as Map<String, dynamic>),
  header: json['header'] as String?,
  banners: (json['banners'] as List<dynamic>?)
      ?.map((e) => CategoryBannerModel.fromJson(e as Map<String, dynamic>))
      .toList(),
  parents: (json['parents'] as List<dynamic>?)
      ?.map((e) => CategoryModel.fromJson(e as Map<String, dynamic>))
      .toList(),
  description: json['description'] as String?,
  productsCount: (json['productsCount'] as num?)?.toInt(),
  children: (json['children'] as List<dynamic>?)
      ?.map((e) => CategoryModel.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$CategoryResponseModelToJson(
  _CategoryResponseModel instance,
) => <String, dynamic>{
  'category': instance.category,
  'header': instance.header,
  'banners': instance.banners,
  'parents': instance.parents,
  'description': instance.description,
  'productsCount': instance.productsCount,
  'children': instance.children,
};

_CategoryModel _$CategoryModelFromJson(Map<String, dynamic> json) =>
    _CategoryModel(
      name: json['name'] as String?,
      slug: json['slug'] as String?,
      level: (json['level'] as num?)?.toInt(),
    );

Map<String, dynamic> _$CategoryModelToJson(_CategoryModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'slug': instance.slug,
      'level': instance.level,
    };

_CategoryBannerModel _$CategoryBannerModelFromJson(Map<String, dynamic> json) =>
    _CategoryBannerModel(
      url: json['url'] as String?,
      smallImage: json['smallImage'] as String?,
      mediumImage: json['mediumImage'] as String?,
      largeImage: json['largeImage'] as String?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$CategoryBannerModelToJson(
  _CategoryBannerModel instance,
) => <String, dynamic>{
  'url': instance.url,
  'smallImage': instance.smallImage,
  'mediumImage': instance.mediumImage,
  'largeImage': instance.largeImage,
  'name': instance.name,
};
