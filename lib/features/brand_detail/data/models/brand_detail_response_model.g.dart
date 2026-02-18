// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'brand_detail_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BrandDetailResponseModel _$BrandDetailResponseModelFromJson(
  Map<String, dynamic> json,
) => _BrandDetailResponseModel(
  banners: (json['banners'] as List<dynamic>?)
      ?.map((e) => BrandBannerModel.fromJson(e as Map<String, dynamic>))
      .toList(),
  categories: (json['categories'] as List<dynamic>?)
      ?.map((e) => BrandCategoryModel.fromJson(e as Map<String, dynamic>))
      .toList(),
  promotions: (json['actions'] as List<dynamic>?)
      ?.map((e) => PromotionModel.fromJson(e as Map<String, dynamic>))
      .toList(),
  newProducts: (json['new_items'] as List<dynamic>?)
      ?.map((e) => LegacyProductModel.fromJson(e as Map<String, dynamic>))
      .toList(),
  recommendedProducts: (json['recommended_items'] as List<dynamic>?)
      ?.map((e) => LegacyProductModel.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$BrandDetailResponseModelToJson(
  _BrandDetailResponseModel instance,
) => <String, dynamic>{
  'banners': instance.banners,
  'categories': instance.categories,
  'actions': instance.promotions,
  'new_items': instance.newProducts,
  'recommended_items': instance.recommendedProducts,
};

_BrandBannerModel _$BrandBannerModelFromJson(Map<String, dynamic> json) =>
    _BrandBannerModel(
      name: json['name'] as String?,
      url: json['url'] as String?,
      sort: (json['sort'] as num?)?.toInt(),
      images: json['images'] == null
          ? null
          : BrandBannerImagesModel.fromJson(
              json['images'] as Map<String, dynamic>,
            ),
    );

Map<String, dynamic> _$BrandBannerModelToJson(_BrandBannerModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'url': instance.url,
      'sort': instance.sort,
      'images': instance.images,
    };

_BrandBannerImagesModel _$BrandBannerImagesModelFromJson(
  Map<String, dynamic> json,
) => _BrandBannerImagesModel(
  mobile: json['mobile'] as String?,
  tablet: json['tablet'] as String?,
  desktop: json['desktop'] as String?,
);

Map<String, dynamic> _$BrandBannerImagesModelToJson(
  _BrandBannerImagesModel instance,
) => <String, dynamic>{
  'mobile': instance.mobile,
  'tablet': instance.tablet,
  'desktop': instance.desktop,
};

_BrandCategoryModel _$BrandCategoryModelFromJson(Map<String, dynamic> json) =>
    _BrandCategoryModel(
      name: json['name'] as String?,
      url: json['url'] as String?,
      images: json['images'] == null
          ? null
          : BrandBannerImagesModel.fromJson(
              json['images'] as Map<String, dynamic>,
            ),
      category: json['category'] == null
          ? null
          : BrandCategoryLevelModel.fromJson(
              json['category'] as Map<String, dynamic>,
            ),
    );

Map<String, dynamic> _$BrandCategoryModelToJson(_BrandCategoryModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'url': instance.url,
      'images': instance.images,
      'category': instance.category,
    };

_BrandCategoryLevelModel _$BrandCategoryLevelModelFromJson(
  Map<String, dynamic> json,
) => _BrandCategoryLevelModel(
  name: json['name'] as String?,
  slug: json['slug'] as String?,
  level: (json['level'] as num?)?.toInt(),
);

Map<String, dynamic> _$BrandCategoryLevelModelToJson(
  _BrandCategoryLevelModel instance,
) => <String, dynamic>{
  'name': instance.name,
  'slug': instance.slug,
  'level': instance.level,
};
