import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mechta_flutter/core/domain/entities/price_entity.dart';
import 'package:mechta_flutter/core/domain/entities/product_entity.dart';

part 'legacy_product_model.freezed.dart';
part 'legacy_product_model.g.dart';

@freezed
abstract class LegacyProductModel with _$LegacyProductModel {
  const LegacyProductModel._();

  const factory LegacyProductModel({
    int? id,
    String? name,
    String? code,
    int? price,
    @Default([]) List<String> photos,
    @Default([]) List<String> gallery,
    String? availability,
    LegacyPricesModel? prices,
  }) = _LegacyProductModel;

  factory LegacyProductModel.fromJson(Map<String, dynamic> json) =>
      _$LegacyProductModelFromJson(json);

  ProductEntity toEntity() {
    final images = gallery.isNotEmpty ? gallery : photos;
    final basePrice = prices?.basePrice ?? price;
    final finalPrice = prices?.hasDiscount == true
        ? prices?.discountedPrice
        : basePrice;

    return ProductEntity(
      id: id?.toString(),
      name: name,
      slug: code,
      code: code,
      numericId: id,
      images: images,
      availability: availability,
      prices: PriceEntity(
        basePrice: basePrice,
        finalPrice: finalPrice ?? basePrice,
      ),
    );
  }
}

@freezed
abstract class LegacyPricesModel with _$LegacyPricesModel {
  const factory LegacyPricesModel({
    @JsonKey(name: 'discounted_price') int? discountedPrice,
    @JsonKey(name: 'base_price') int? basePrice,
    @JsonKey(name: 'has_discount') bool? hasDiscount,
  }) = _LegacyPricesModel;

  factory LegacyPricesModel.fromJson(Map<String, dynamic> json) =>
      _$LegacyPricesModelFromJson(json);
}
