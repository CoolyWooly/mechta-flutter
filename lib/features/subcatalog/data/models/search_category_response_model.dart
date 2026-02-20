import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_category_response_model.freezed.dart';
part 'search_category_response_model.g.dart';

@freezed
abstract class SearchCategoryResponseModel with _$SearchCategoryResponseModel {
  const factory SearchCategoryResponseModel({
    String? category,
    @Default([]) List<AvailableCategoryModel> availableCategories,
  }) = _SearchCategoryResponseModel;

  factory SearchCategoryResponseModel.fromJson(Map<String, dynamic> json) =>
      _$SearchCategoryResponseModelFromJson(json);
}

@freezed
abstract class AvailableCategoryModel with _$AvailableCategoryModel {
  const factory AvailableCategoryModel({
    String? slug,
    String? name,
    int? productsCount,
  }) = _AvailableCategoryModel;

  factory AvailableCategoryModel.fromJson(Map<String, dynamic> json) =>
      _$AvailableCategoryModelFromJson(json);
}
