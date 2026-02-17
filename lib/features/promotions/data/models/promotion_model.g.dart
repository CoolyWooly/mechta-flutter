// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'promotion_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PromotionModel _$PromotionModelFromJson(Map<String, dynamic> json) =>
    _PromotionModel(
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
          : PromotionLinkModel.fromJson(json['link'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PromotionModelToJson(_PromotionModel instance) =>
    <String, dynamic>{
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
    };

_PromotionLinkModel _$PromotionLinkModelFromJson(Map<String, dynamic> json) =>
    _PromotionLinkModel(
      isExternal: json['is_external'] as bool?,
      value: json['value'] as String?,
    );

Map<String, dynamic> _$PromotionLinkModelToJson(_PromotionLinkModel instance) =>
    <String, dynamic>{
      'is_external': instance.isExternal,
      'value': instance.value,
    };
