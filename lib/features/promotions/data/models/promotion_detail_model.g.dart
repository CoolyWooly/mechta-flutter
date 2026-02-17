// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'promotion_detail_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PromotionDetailModel _$PromotionDetailModelFromJson(
  Map<String, dynamic> json,
) => _PromotionDetailModel(
  id: (json['id'] as num?)?.toInt(),
  name: json['name'] as String?,
  code: json['code'] as String?,
  imageSrc: json['image_src'] as String?,
  previewText: json['preview_text'] as String?,
  activeFrom: json['active_from'] as String?,
  activeTo: json['active_to'] as String?,
  daysBeforeExpiration: (json['days_before_expiration'] as num?)?.toInt(),
  brandLogo: json['brand_logo'] as String?,
  entity: json['entity'] as String?,
  sort: (json['sort'] as num?)?.toInt(),
  link: json['link'] == null
      ? null
      : PromotionDetailLinkModel.fromJson(json['link'] as Map<String, dynamic>),
  banners: (json['banners'] as List<dynamic>?)
      ?.map((e) => PromotionBannerModel.fromJson(e as Map<String, dynamic>))
      .toList(),
  type: json['type'] == null
      ? null
      : PromotionTypeModel.fromJson(json['type'] as Map<String, dynamic>),
  descriptions: (json['descriptions'] as List<dynamic>?)
      ?.map(
        (e) => PromotionDescriptionModel.fromJson(e as Map<String, dynamic>),
      )
      .toList(),
);

Map<String, dynamic> _$PromotionDetailModelToJson(
  _PromotionDetailModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'code': instance.code,
  'image_src': instance.imageSrc,
  'preview_text': instance.previewText,
  'active_from': instance.activeFrom,
  'active_to': instance.activeTo,
  'days_before_expiration': instance.daysBeforeExpiration,
  'brand_logo': instance.brandLogo,
  'entity': instance.entity,
  'sort': instance.sort,
  'link': instance.link,
  'banners': instance.banners,
  'type': instance.type,
  'descriptions': instance.descriptions,
};

_PromotionDetailLinkModel _$PromotionDetailLinkModelFromJson(
  Map<String, dynamic> json,
) => _PromotionDetailLinkModel(
  isExternal: json['is_external'] as bool?,
  value: json['value'] as String?,
);

Map<String, dynamic> _$PromotionDetailLinkModelToJson(
  _PromotionDetailLinkModel instance,
) => <String, dynamic>{
  'is_external': instance.isExternal,
  'value': instance.value,
};

_PromotionBannerModel _$PromotionBannerModelFromJson(
  Map<String, dynamic> json,
) => _PromotionBannerModel(
  name: json['name'] as String?,
  url: json['url'] as String?,
  images: json['images'] == null
      ? null
      : PromotionBannerImagesModel.fromJson(
          json['images'] as Map<String, dynamic>,
        ),
  sort: (json['sort'] as num?)?.toInt(),
);

Map<String, dynamic> _$PromotionBannerModelToJson(
  _PromotionBannerModel instance,
) => <String, dynamic>{
  'name': instance.name,
  'url': instance.url,
  'images': instance.images,
  'sort': instance.sort,
};

_PromotionBannerImagesModel _$PromotionBannerImagesModelFromJson(
  Map<String, dynamic> json,
) => _PromotionBannerImagesModel(
  mobile: json['mobile'] as String?,
  desktop: json['desktop'] as String?,
);

Map<String, dynamic> _$PromotionBannerImagesModelToJson(
  _PromotionBannerImagesModel instance,
) => <String, dynamic>{'mobile': instance.mobile, 'desktop': instance.desktop};

_PromotionTypeModel _$PromotionTypeModelFromJson(Map<String, dynamic> json) =>
    _PromotionTypeModel(
      code: json['code'] as String?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$PromotionTypeModelToJson(_PromotionTypeModel instance) =>
    <String, dynamic>{'code': instance.code, 'name': instance.name};

_PromotionDescriptionModel _$PromotionDescriptionModelFromJson(
  Map<String, dynamic> json,
) => _PromotionDescriptionModel(
  type: json['type'] as String?,
  description: json['description'] as String?,
);

Map<String, dynamic> _$PromotionDescriptionModelToJson(
  _PromotionDescriptionModel instance,
) => <String, dynamic>{
  'type': instance.type,
  'description': instance.description,
};
