import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mechta_flutter/core/data/models/image_model.dart';
import 'package:mechta_flutter/features/catalog/domain/entities/brand_entity.dart';

part 'brand_model.freezed.dart';
part 'brand_model.g.dart';

@freezed
abstract class BrandModel with _$BrandModel {
  const BrandModel._();

  const factory BrandModel({
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'code') String? code,
    @JsonKey(name: 'image') ImageModel? image,
  }) = _BrandModel;

  factory BrandModel.fromJson(Map<String, dynamic> json) =>
      _$BrandModelFromJson(json);

  BrandEntity toEntity() => BrandEntity(
        name: name ?? '',
        code: code ?? '',
        image: image?.toEntity(),
      );
}
