// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_NewsModel _$NewsModelFromJson(Map<String, dynamic> json) => _NewsModel(
  title: json['name'] as String?,
  image: json['image_src'] as String?,
  previewText: json['preview_text'] as String?,
);

Map<String, dynamic> _$NewsModelToJson(_NewsModel instance) =>
    <String, dynamic>{
      'name': instance.title,
      'image_src': instance.image,
      'preview_text': instance.previewText,
    };
