import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_response_model.freezed.dart';
part 'search_response_model.g.dart';

@freezed
abstract class SearchResponseModel with _$SearchResponseModel {
  const factory SearchResponseModel({
    @Default('') String text,
    @Default('') String correction,
    @Default([]) List<SearchChipModel> taps,
    @Default([]) List<SearchVariantModel> variants,
    @Default([]) List<SearchProductModel> products,
    @Default([]) List<SearchCategoryModel> categories,
  }) = _SearchResponseModel;

  factory SearchResponseModel.fromJson(Map<String, dynamic> json) =>
      _$SearchResponseModelFromJson(json);
}

@freezed
abstract class SearchChipModel with _$SearchChipModel {
  const factory SearchChipModel({
    @Default('') String label,
    @Default('') @JsonKey(name: 'search_text') String searchText,
  }) = _SearchChipModel;

  factory SearchChipModel.fromJson(Map<String, dynamic> json) =>
      _$SearchChipModelFromJson(json);
}

@freezed
abstract class SearchVariantModel with _$SearchVariantModel {
  const factory SearchVariantModel({
    @Default('') String text,
  }) = _SearchVariantModel;

  factory SearchVariantModel.fromJson(Map<String, dynamic> json) =>
      _$SearchVariantModelFromJson(json);
}

@freezed
abstract class SearchProductModel with _$SearchProductModel {
  const factory SearchProductModel({
    @Default('') String id,
    @Default(false) bool available,
    @Default('') String name,
    @Default('') String brand,
    @Default('') String price,
    @Default('') @JsonKey(name: 'image_url') String imageUrl,
    @Default('') String link,
    String? code,
  }) = _SearchProductModel;

  factory SearchProductModel.fromJson(Map<String, dynamic> json) =>
      _$SearchProductModelFromJson(json);
}

@freezed
abstract class SearchCategoryModel with _$SearchCategoryModel {
  const factory SearchCategoryModel({
    @Default('') String id,
    @Default('') String name,
    @Default(false) bool direct,
    @Default('') String link,
  }) = _SearchCategoryModel;

  factory SearchCategoryModel.fromJson(Map<String, dynamic> json) =>
      _$SearchCategoryModelFromJson(json);
}
