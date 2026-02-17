import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mechta_flutter/core/data/models/metrics_model.dart';
import 'package:mechta_flutter/core/data/models/preorder_model.dart';
import 'package:mechta_flutter/core/data/models/price_model.dart';
import 'package:mechta_flutter/core/data/models/product_category_model.dart';
import 'package:mechta_flutter/core/data/models/property_group_model.dart';
import 'package:mechta_flutter/core/data/models/property_model.dart';
import 'package:mechta_flutter/core/data/models/rating_model.dart';
import 'package:mechta_flutter/core/data/models/shipment_model.dart';
import 'package:mechta_flutter/core/data/models/sticker_model.dart';
import 'package:mechta_flutter/core/domain/entities/product_detail_entity.dart';

part 'product_detail_model.freezed.dart';
part 'product_detail_model.g.dart';

@freezed
abstract class ProductDetailModel with _$ProductDetailModel {
  const ProductDetailModel._();

  const factory ProductDetailModel({
    @JsonKey(name: 'id') String? id,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'slug') String? slug,
    @JsonKey(name: 'code') String? code,
    @JsonKey(name: 'numericId') int? numericId,
    @JsonKey(name: 'images') @Default([]) List<String> images,
    @JsonKey(name: 'preview') String? preview,
    @JsonKey(name: 'availability') String? availability,
    @JsonKey(name: 'preorder') PreorderModel? preorder,
    @JsonKey(name: 'prices') PriceModel? prices,
    @JsonKey(name: 'stickers') @Default([]) List<StickerModel> stickers,
    @JsonKey(name: 'mainProperties') @Default([]) List<PropertyModel> mainProperties,
    @JsonKey(name: 'categories') @Default([]) List<ProductCategoryModel> categories,
    @JsonKey(name: 'rating') RatingModel? rating,
    @JsonKey(name: 'shipment') ShipmentModel? shipment,
    @JsonKey(name: 'propertyGroups') @Default([]) List<PropertyGroupModel> propertyGroups,
    @JsonKey(name: 'metrics') MetricsModel? metrics,
    @JsonKey(name: 'onlyShopwindow') bool? isShowcase,
  }) = _ProductDetailModel;

  factory ProductDetailModel.fromJson(Map<String, dynamic> json) =>
      _$ProductDetailModelFromJson(json);

  ProductDetailEntity toEntity() => ProductDetailEntity(
        id: id,
        name: name,
        slug: slug,
        code: code,
        numericId: numericId,
        images: images,
        preview: preview,
        availability: availability,
        preorder: preorder?.toEntity(),
        prices: prices?.toEntity(),
        stickers: stickers.map((e) => e.toEntity()).toList(),
        mainProperties: mainProperties.map((e) => e.toEntity()).toList(),
        categories: categories.map((e) => e.toEntity()).toList(),
        rating: rating?.toEntity(),
        shipment: shipment?.toEntity(),
        propertyGroups: propertyGroups.map((e) => e.toEntity()).toList(),
        metrics: metrics?.toEntity(),
        isShowcase: isShowcase,
      );
}
