import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mechta_flutter/features/product/domain/entities/product_entity.dart';

part 'product_model.freezed.dart';
part 'product_model.g.dart';

@freezed
abstract class ProductModel with _$ProductModel {
  const ProductModel._();

  const factory ProductModel({
    required int id,
    required String title,
    String? description,
    required double price,
    @JsonKey(name: 'old_price') double? oldPrice,
    @JsonKey(name: 'image_url') String? imageUrl,
    @Default([]) List<String> images,
    @JsonKey(name: 'in_stock') @Default(true) bool inStock,
  }) = _ProductModel;

  factory ProductModel.fromJson(Map<String, dynamic> json) =>
      _$ProductModelFromJson(json);

  ProductEntity toEntity() => ProductEntity(
        id: id,
        title: title,
        description: description,
        price: price,
        oldPrice: oldPrice,
        imageUrl: imageUrl,
        images: images,
        inStock: inStock,
      );
}
