import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mechta_flutter/features/favorites/domain/entities/favorite_entity.dart';

part 'favorite_model.freezed.dart';
part 'favorite_model.g.dart';

@freezed
abstract class FavoriteModel with _$FavoriteModel {
  const FavoriteModel._();

  const factory FavoriteModel({
    @JsonKey(name: 'product_id') required int productId,
    required String title,
    required double price,
    @JsonKey(name: 'image_url') String? imageUrl,
  }) = _FavoriteModel;

  factory FavoriteModel.fromJson(Map<String, dynamic> json) =>
      _$FavoriteModelFromJson(json);

  FavoriteEntity toEntity() => FavoriteEntity(
        productId: productId,
        title: title,
        price: price,
        imageUrl: imageUrl,
      );
}
