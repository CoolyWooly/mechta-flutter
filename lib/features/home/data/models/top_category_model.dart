import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mechta_flutter/core/data/models/product_category_model.dart';
import 'package:mechta_flutter/core/data/models/product_model.dart';
import 'package:mechta_flutter/features/home/domain/entities/top_category_entity.dart';

part 'top_category_model.freezed.dart';
part 'top_category_model.g.dart';

@freezed
abstract class TopCategoryModel with _$TopCategoryModel {
  const TopCategoryModel._();

  const factory TopCategoryModel({
    @JsonKey(name: 'category') ProductCategoryModel? category,
    @JsonKey(name: 'products') @Default([]) List<ProductModel> products,
  }) = _TopCategoryModel;

  factory TopCategoryModel.fromJson(Map<String, dynamic> json) =>
      _$TopCategoryModelFromJson(json);

  TopCategoryEntity toEntity() => TopCategoryEntity(
        category: category?.toEntity(),
        products: products.map((e) => e.toEntity()).toList(),
      );
}
