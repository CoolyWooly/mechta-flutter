import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mechta_flutter/core/domain/entities/product_category_entity.dart';

part 'product_category_model.freezed.dart';
part 'product_category_model.g.dart';

@freezed
abstract class ProductCategoryModel with _$ProductCategoryModel {
  const ProductCategoryModel._();

  const factory ProductCategoryModel({
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'slug') String? slug,
    @JsonKey(name: 'level') int? level,
  }) = _ProductCategoryModel;

  factory ProductCategoryModel.fromJson(Map<String, dynamic> json) =>
      _$ProductCategoryModelFromJson(json);

  ProductCategoryEntity toEntity() => ProductCategoryEntity(
        name: name,
        slug: slug,
        level: level,
      );
}
