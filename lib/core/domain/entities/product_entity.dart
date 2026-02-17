import 'package:equatable/equatable.dart';
import 'package:mechta_flutter/core/domain/entities/metrics_entity.dart';
import 'package:mechta_flutter/core/domain/entities/preorder_entity.dart';
import 'package:mechta_flutter/core/domain/entities/price_entity.dart';
import 'package:mechta_flutter/core/domain/entities/product_category_entity.dart';
import 'package:mechta_flutter/core/domain/entities/property_entity.dart';
import 'package:mechta_flutter/core/domain/entities/property_group_entity.dart';
import 'package:mechta_flutter/core/domain/entities/rating_entity.dart';
import 'package:mechta_flutter/core/domain/entities/shipment_entity.dart';
import 'package:mechta_flutter/core/domain/entities/sticker_entity.dart';

class ProductEntity extends Equatable {
  final String? id;
  final String? name;
  final String? slug;
  final String? code;
  final int? numericId;
  final List<String> images;
  final String? preview;
  final String? availability;
  final PreorderEntity? preorder;
  final PriceEntity? prices;
  final List<StickerEntity> stickers;
  final List<PropertyEntity> mainProperties;
  final List<ProductCategoryEntity> categories;
  final RatingEntity? rating;
  final ShipmentEntity? shipment;
  final List<PropertyGroupEntity> propertyGroups;
  final MetricsEntity? metrics;
  final bool? isShowcase;

  const ProductEntity({
    this.id,
    this.name,
    this.slug,
    this.code,
    this.numericId,
    this.images = const [],
    this.preview,
    this.availability,
    this.preorder,
    this.prices,
    this.stickers = const [],
    this.mainProperties = const [],
    this.categories = const [],
    this.rating,
    this.shipment,
    this.propertyGroups = const [],
    this.metrics,
    this.isShowcase,
  });

  @override
  List<Object?> get props => [
        id,
        name,
        slug,
        code,
        numericId,
        images,
        preview,
        availability,
        preorder,
        prices,
        stickers,
        mainProperties,
        categories,
        rating,
        shipment,
        propertyGroups,
        metrics,
        isShowcase,
      ];
}
