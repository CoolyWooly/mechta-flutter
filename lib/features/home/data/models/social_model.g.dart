// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'social_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SocialModel _$SocialModelFromJson(Map<String, dynamic> json) => _SocialModel(
  icon: json['icon'] == null
      ? null
      : ImageModel.fromJson(json['icon'] as Map<String, dynamic>),
  url: json['url'] as String?,
);

Map<String, dynamic> _$SocialModelToJson(_SocialModel instance) =>
    <String, dynamic>{'icon': instance.icon, 'url': instance.url};
