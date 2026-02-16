import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mechta_flutter/features/home/domain/entities/news_entity.dart';

part 'news_model.freezed.dart';
part 'news_model.g.dart';

@freezed
abstract class NewsModel with _$NewsModel {
  const NewsModel._();

  const factory NewsModel({
    @JsonKey(name: 'name') String? title,
    @JsonKey(name: 'image_src') String? image,
    @JsonKey(name: 'preview_text') String? previewText,
  }) = _NewsModel;

  factory NewsModel.fromJson(Map<String, dynamic> json) =>
      _$NewsModelFromJson(json);

  NewsEntity toEntity() => NewsEntity(
        title: title ?? '',
        image: image ?? '',
        previewText: previewText ?? '',
      );
}
