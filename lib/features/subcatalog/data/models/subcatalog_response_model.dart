import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mechta_flutter/core/data/models/product_model.dart';

part 'subcatalog_response_model.freezed.dart';
part 'subcatalog_response_model.g.dart';

@freezed
abstract class SubcatalogResponseModel with _$SubcatalogResponseModel {
  const factory SubcatalogResponseModel({
    List<ProductModel>? products,
    SubcatalogMetaModel? meta,
  }) = _SubcatalogResponseModel;

  factory SubcatalogResponseModel.fromJson(Map<String, dynamic> json) =>
      _$SubcatalogResponseModelFromJson(json);
}

@freezed
abstract class SubcatalogMetaModel with _$SubcatalogMetaModel {
  const factory SubcatalogMetaModel({
    int? totalCount,
  }) = _SubcatalogMetaModel;

  factory SubcatalogMetaModel.fromJson(Map<String, dynamic> json) =>
      _$SubcatalogMetaModelFromJson(json);
}
