import 'package:freezed_annotation/freezed_annotation.dart';

part 'filter_response_model.freezed.dart';
part 'filter_response_model.g.dart';

@freezed
abstract class FiltersResponseModel with _$FiltersResponseModel {
  const factory FiltersResponseModel({
    @JsonKey(name: 'totalCount') int? totalCount,
    @JsonKey(name: 'priceRange') PriceRangeModel? priceRange,
    @JsonKey(name: 'properties') List<FilterPropertyModel>? properties,
    @JsonKey(name: 'availableCategories') List<AvailableCategoryModel>? availableCategories,
  }) = _FiltersResponseModel;

  factory FiltersResponseModel.fromJson(Map<String, dynamic> json) =>
      _$FiltersResponseModelFromJson(json);
}

@freezed
abstract class PriceRangeModel with _$PriceRangeModel {
  const factory PriceRangeModel({
    @JsonKey(name: 'minPrice') int? minPrice,
    @JsonKey(name: 'maxPrice') int? maxPrice,
  }) = _PriceRangeModel;

  factory PriceRangeModel.fromJson(Map<String, dynamic> json) =>
      _$PriceRangeModelFromJson(json);
}

@freezed
abstract class FilterPropertyModel with _$FilterPropertyModel {
  const factory FilterPropertyModel({
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'type') String? type,
    @JsonKey(name: 'slug') String? slug,
    @JsonKey(name: 'items') List<FilterItemModel>? items,
  }) = _FilterPropertyModel;

  factory FilterPropertyModel.fromJson(Map<String, dynamic> json) =>
      _$FilterPropertyModelFromJson(json);
}

@freezed
abstract class FilterItemModel with _$FilterItemModel {
  const factory FilterItemModel({
    @JsonKey(name: 'value') String? value,
    @JsonKey(name: 'slug') String? slug,
    @JsonKey(name: 'count') int? count,
  }) = _FilterItemModel;

  factory FilterItemModel.fromJson(Map<String, dynamic> json) =>
      _$FilterItemModelFromJson(json);
}

@freezed
abstract class AvailableCategoryModel with _$AvailableCategoryModel {
  const factory AvailableCategoryModel({
    @JsonKey(name: 'slug') String? slug,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'productsCount') int? productsCount,
  }) = _AvailableCategoryModel;

  factory AvailableCategoryModel.fromJson(Map<String, dynamic> json) =>
      _$AvailableCategoryModelFromJson(json);
}
