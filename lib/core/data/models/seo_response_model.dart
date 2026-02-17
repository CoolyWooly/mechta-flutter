import 'package:freezed_annotation/freezed_annotation.dart';

part 'seo_response_model.freezed.dart';
part 'seo_response_model.g.dart';

@freezed
abstract class SeoResponseModel with _$SeoResponseModel {
  const factory SeoResponseModel({
    SeoRedirectModel? redirect,
    SeoMetaModel? meta,
  }) = _SeoResponseModel;

  factory SeoResponseModel.fromJson(Map<String, dynamic> json) =>
      _$SeoResponseModelFromJson(json);
}

@freezed
abstract class SeoRedirectModel with _$SeoRedirectModel {
  const factory SeoRedirectModel({
    String? url,
  }) = _SeoRedirectModel;

  factory SeoRedirectModel.fromJson(Map<String, dynamic> json) =>
      _$SeoRedirectModelFromJson(json);
}

@freezed
abstract class SeoMetaModel with _$SeoMetaModel {
  const factory SeoMetaModel({
    @JsonKey(name: 'app_decode') SeoAppDecodeModel? appDecode,
  }) = _SeoMetaModel;

  factory SeoMetaModel.fromJson(Map<String, dynamic> json) =>
      _$SeoMetaModelFromJson(json);
}

@freezed
abstract class SeoAppDecodeModel with _$SeoAppDecodeModel {
  const factory SeoAppDecodeModel({
    SeoCategoryModel? category,
  }) = _SeoAppDecodeModel;

  factory SeoAppDecodeModel.fromJson(Map<String, dynamic> json) =>
      _$SeoAppDecodeModelFromJson(json);
}

@freezed
abstract class SeoCategoryModel with _$SeoCategoryModel {
  const factory SeoCategoryModel({
    String? slug,
    Map<String, SeoPropertiesModel>? properties,
    @JsonKey(name: 'min_price') int? minPrice,
    @JsonKey(name: 'max_price') int? maxPrice,
  }) = _SeoCategoryModel;

  factory SeoCategoryModel.fromJson(Map<String, dynamic> json) =>
      _$SeoCategoryModelFromJson(json);
}

@freezed
abstract class SeoPropertiesModel with _$SeoPropertiesModel {
  const factory SeoPropertiesModel({
    List<String>? values,
  }) = _SeoPropertiesModel;

  factory SeoPropertiesModel.fromJson(Map<String, dynamic> json) =>
      _$SeoPropertiesModelFromJson(json);
}
