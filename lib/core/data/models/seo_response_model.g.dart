// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'seo_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SeoResponseModel _$SeoResponseModelFromJson(Map<String, dynamic> json) =>
    _SeoResponseModel(
      redirect: json['redirect'] == null
          ? null
          : SeoRedirectModel.fromJson(json['redirect'] as Map<String, dynamic>),
      meta: json['meta'] == null
          ? null
          : SeoMetaModel.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SeoResponseModelToJson(_SeoResponseModel instance) =>
    <String, dynamic>{'redirect': instance.redirect, 'meta': instance.meta};

_SeoRedirectModel _$SeoRedirectModelFromJson(Map<String, dynamic> json) =>
    _SeoRedirectModel(url: json['url'] as String?);

Map<String, dynamic> _$SeoRedirectModelToJson(_SeoRedirectModel instance) =>
    <String, dynamic>{'url': instance.url};

_SeoMetaModel _$SeoMetaModelFromJson(Map<String, dynamic> json) =>
    _SeoMetaModel(
      appDecode: json['app_decode'] == null
          ? null
          : SeoAppDecodeModel.fromJson(
              json['app_decode'] as Map<String, dynamic>,
            ),
    );

Map<String, dynamic> _$SeoMetaModelToJson(_SeoMetaModel instance) =>
    <String, dynamic>{'app_decode': instance.appDecode};

_SeoAppDecodeModel _$SeoAppDecodeModelFromJson(Map<String, dynamic> json) =>
    _SeoAppDecodeModel(
      category: json['category'] == null
          ? null
          : SeoCategoryModel.fromJson(json['category'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SeoAppDecodeModelToJson(_SeoAppDecodeModel instance) =>
    <String, dynamic>{'category': instance.category};

_SeoCategoryModel _$SeoCategoryModelFromJson(Map<String, dynamic> json) =>
    _SeoCategoryModel(
      slug: json['slug'] as String?,
      properties: (json['properties'] as Map<String, dynamic>?)?.map(
        (k, e) =>
            MapEntry(k, SeoPropertiesModel.fromJson(e as Map<String, dynamic>)),
      ),
      minPrice: (json['min_price'] as num?)?.toInt(),
      maxPrice: (json['max_price'] as num?)?.toInt(),
    );

Map<String, dynamic> _$SeoCategoryModelToJson(_SeoCategoryModel instance) =>
    <String, dynamic>{
      'slug': instance.slug,
      'properties': instance.properties,
      'min_price': instance.minPrice,
      'max_price': instance.maxPrice,
    };

_SeoPropertiesModel _$SeoPropertiesModelFromJson(Map<String, dynamic> json) =>
    _SeoPropertiesModel(
      values: (json['values'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$SeoPropertiesModelToJson(_SeoPropertiesModel instance) =>
    <String, dynamic>{'values': instance.values};
