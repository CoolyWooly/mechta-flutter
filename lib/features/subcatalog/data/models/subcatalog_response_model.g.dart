// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subcatalog_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SubcatalogResponseModel _$SubcatalogResponseModelFromJson(
  Map<String, dynamic> json,
) => _SubcatalogResponseModel(
  products: (json['products'] as List<dynamic>?)
      ?.map((e) => ProductModel.fromJson(e as Map<String, dynamic>))
      .toList(),
  meta: json['meta'] == null
      ? null
      : MetaModel.fromJson(json['meta'] as Map<String, dynamic>),
);

Map<String, dynamic> _$SubcatalogResponseModelToJson(
  _SubcatalogResponseModel instance,
) => <String, dynamic>{'products': instance.products, 'meta': instance.meta};

_MetaModel _$MetaModelFromJson(Map<String, dynamic> json) =>
    _MetaModel(totalCount: (json['totalCount'] as num?)?.toInt());

Map<String, dynamic> _$MetaModelToJson(_MetaModel instance) =>
    <String, dynamic>{'totalCount': instance.totalCount};
