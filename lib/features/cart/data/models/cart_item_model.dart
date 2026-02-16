import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mechta_flutter/features/cart/domain/entities/cart_item_entity.dart';

part 'cart_item_model.freezed.dart';
part 'cart_item_model.g.dart';

@freezed
abstract class CartItemModel with _$CartItemModel {
  const CartItemModel._();

  const factory CartItemModel({
    @JsonKey(name: 'product_id') required int productId,
    required String title,
    required double price,
    required int quantity,
    @JsonKey(name: 'image_url') String? imageUrl,
  }) = _CartItemModel;

  factory CartItemModel.fromJson(Map<String, dynamic> json) =>
      _$CartItemModelFromJson(json);

  CartItemEntity toEntity() => CartItemEntity(
        productId: productId,
        title: title,
        price: price,
        quantity: quantity,
        imageUrl: imageUrl,
      );
}
