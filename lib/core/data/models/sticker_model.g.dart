// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sticker_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_StickerModel _$StickerModelFromJson(Map<String, dynamic> json) =>
    _StickerModel(
      code: json['code'] as String?,
      name: json['name'] as String?,
      link: json['link'] as String?,
      color: json['color'] as String?,
      isSuperAction: json['isSuperAction'] as bool?,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$StickerModelToJson(_StickerModel instance) =>
    <String, dynamic>{
      'code': instance.code,
      'name': instance.name,
      'link': instance.link,
      'color': instance.color,
      'isSuperAction': instance.isSuperAction,
      'description': instance.description,
    };
