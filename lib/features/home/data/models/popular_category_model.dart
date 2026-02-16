import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mechta_flutter/features/home/domain/entities/popular_category_entity.dart';

part 'popular_category_model.freezed.dart';
part 'popular_category_model.g.dart';

@freezed
abstract class PopularCategoryModel with _$PopularCategoryModel {
  const PopularCategoryModel._();

  const factory PopularCategoryModel({
    @JsonKey(name: 'title') String? title,
    @JsonKey(name: 'url') String? url,
    @JsonKey(name: 'image') String? image,
  }) = _PopularCategoryModel;

  factory PopularCategoryModel.fromJson(Map<String, dynamic> json) =>
      _$PopularCategoryModelFromJson(json);

  PopularCategoryEntity toEntity() => PopularCategoryEntity(
        title: title ?? '',
        url: url ?? '',
        image: image ?? '',
      );
}
