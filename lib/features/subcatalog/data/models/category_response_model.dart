import 'package:freezed_annotation/freezed_annotation.dart';

part 'category_response_model.freezed.dart';
part 'category_response_model.g.dart';

@freezed
abstract class CategoryResponseModel with _$CategoryResponseModel {
  const factory CategoryResponseModel({
    CategoryModel? category,
    String? header,
    List<CategoryBannerModel>? banners,
    List<CategoryModel>? parents,
    String? description,
    int? productsCount,
    List<CategoryModel>? children,
  }) = _CategoryResponseModel;

  factory CategoryResponseModel.fromJson(Map<String, dynamic> json) =>
      _$CategoryResponseModelFromJson(json);
}

@freezed
abstract class CategoryModel with _$CategoryModel {
  const factory CategoryModel({
    String? name,
    String? slug,
    int? level,
  }) = _CategoryModel;

  factory CategoryModel.fromJson(Map<String, dynamic> json) =>
      _$CategoryModelFromJson(json);
}

@freezed
abstract class CategoryBannerModel with _$CategoryBannerModel {
  const factory CategoryBannerModel({
    String? url,
    String? smallImage,
    String? mediumImage,
    String? largeImage,
    String? name,
  }) = _CategoryBannerModel;

  factory CategoryBannerModel.fromJson(Map<String, dynamic> json) =>
      _$CategoryBannerModelFromJson(json);
}
