import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mechta_flutter/core/data/models/legacy_product_model.dart';
import 'package:mechta_flutter/features/brand/domain/entities/brand_entity.dart';
import 'package:mechta_flutter/features/promotions/data/models/promotion_model.dart';

part 'brand_response_model.freezed.dart';
part 'brand_response_model.g.dart';

@freezed
abstract class BrandResponseModel with _$BrandResponseModel {
  const BrandResponseModel._();

  const factory BrandResponseModel({
    @JsonKey(name: 'banners') List<BrandBannerModel>? banners,
    @JsonKey(name: 'categories') List<BrandCategoryModel>? categories,
    @JsonKey(name: 'actions') List<PromotionModel>? promotions,
    @JsonKey(name: 'new_items') List<LegacyProductModel>? newProducts,
    @JsonKey(name: 'recommended_items') List<LegacyProductModel>? recommendedProducts,
  }) = _BrandResponseModel;

  factory BrandResponseModel.fromJson(Map<String, dynamic> json) =>
      _$BrandResponseModelFromJson(json);

  BrandEntity toEntity() => BrandEntity(
        banners: banners?.map((b) => b.toEntity()).toList() ?? const [],
        categories: categories?.map((c) => c.toEntity()).toList() ?? const [],
        promotions: promotions?.map((p) => p.toEntity()).toList() ?? const [],
        newProducts: newProducts?.map((p) => p.toEntity()).toList() ?? const [],
        recommendedProducts: recommendedProducts?.map((p) => p.toEntity()).toList() ?? const [],
      );
}

@freezed
abstract class BrandBannerModel with _$BrandBannerModel {
  const BrandBannerModel._();

  const factory BrandBannerModel({
    String? name,
    String? url,
    int? sort,
    BrandBannerImagesModel? images,
  }) = _BrandBannerModel;

  factory BrandBannerModel.fromJson(Map<String, dynamic> json) =>
      _$BrandBannerModelFromJson(json);

  BrandBannerEntity toEntity() => BrandBannerEntity(
        name: name,
        url: url,
        sort: sort,
        imageMobile: images?.mobile,
        imageTablet: images?.tablet,
        imageDesktop: images?.desktop,
      );
}

@freezed
abstract class BrandBannerImagesModel with _$BrandBannerImagesModel {
  const factory BrandBannerImagesModel({
    String? mobile,
    String? tablet,
    String? desktop,
  }) = _BrandBannerImagesModel;

  factory BrandBannerImagesModel.fromJson(Map<String, dynamic> json) =>
      _$BrandBannerImagesModelFromJson(json);
}

@freezed
abstract class BrandCategoryModel with _$BrandCategoryModel {
  const BrandCategoryModel._();

  const factory BrandCategoryModel({
    String? name,
    String? url,
    BrandBannerImagesModel? images,
    BrandCategoryLevelModel? category,
  }) = _BrandCategoryModel;

  factory BrandCategoryModel.fromJson(Map<String, dynamic> json) =>
      _$BrandCategoryModelFromJson(json);

  BrandCategoryEntity toEntity() => BrandCategoryEntity(
        name: name,
        url: url,
        imageMobile: images?.mobile,
        imageTablet: images?.tablet,
        imageDesktop: images?.desktop,
        categoryName: category?.name,
        categorySlug: category?.slug,
        categoryLevel: category?.level,
      );
}

@freezed
abstract class BrandCategoryLevelModel with _$BrandCategoryLevelModel {
  const factory BrandCategoryLevelModel({
    String? name,
    String? slug,
    int? level,
  }) = _BrandCategoryLevelModel;

  factory BrandCategoryLevelModel.fromJson(Map<String, dynamic> json) =>
      _$BrandCategoryLevelModelFromJson(json);
}
