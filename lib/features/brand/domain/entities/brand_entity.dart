import 'package:equatable/equatable.dart';
import 'package:mechta_flutter/core/domain/entities/product_entity.dart';
import 'package:mechta_flutter/features/promotions/domain/entities/promotion_entity.dart';

class BrandEntity extends Equatable {
  final List<BrandBannerEntity> banners;
  final List<BrandCategoryEntity> categories;
  final List<PromotionEntity> promotions;
  final List<ProductEntity> newProducts;
  final List<ProductEntity> recommendedProducts;

  const BrandEntity({
    this.banners = const [],
    this.categories = const [],
    this.promotions = const [],
    this.newProducts = const [],
    this.recommendedProducts = const [],
  });

  @override
  List<Object?> get props => [
        banners,
        categories,
        promotions,
        newProducts,
        recommendedProducts,
      ];
}

class BrandBannerEntity extends Equatable {
  final String? name;
  final String? url;
  final int? sort;
  final String? imageMobile;
  final String? imageTablet;
  final String? imageDesktop;

  const BrandBannerEntity({
    this.name,
    this.url,
    this.sort,
    this.imageMobile,
    this.imageTablet,
    this.imageDesktop,
  });

  @override
  List<Object?> get props => [name, url, sort, imageMobile, imageTablet, imageDesktop];
}

class BrandCategoryEntity extends Equatable {
  final String? name;
  final String? url;
  final String? imageMobile;
  final String? imageTablet;
  final String? imageDesktop;
  final String? categoryName;
  final String? categorySlug;
  final int? categoryLevel;

  const BrandCategoryEntity({
    this.name,
    this.url,
    this.imageMobile,
    this.imageTablet,
    this.imageDesktop,
    this.categoryName,
    this.categorySlug,
    this.categoryLevel,
  });

  @override
  List<Object?> get props => [
        name,
        url,
        imageMobile,
        imageTablet,
        imageDesktop,
        categoryName,
        categorySlug,
        categoryLevel,
      ];
}
