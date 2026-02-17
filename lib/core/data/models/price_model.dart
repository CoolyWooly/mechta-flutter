import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mechta_flutter/core/domain/entities/price_entity.dart';

part 'price_model.freezed.dart';
part 'price_model.g.dart';

@freezed
abstract class PriceModel with _$PriceModel {
  const PriceModel._();

  const factory PriceModel({
    @JsonKey(name: 'basePrice') int? basePrice,
    @JsonKey(name: 'finalPrice') int? finalPrice,
  }) = _PriceModel;

  factory PriceModel.fromJson(Map<String, dynamic> json) =>
      _$PriceModelFromJson(json);

  PriceEntity toEntity() => PriceEntity(
        basePrice: basePrice,
        finalPrice: finalPrice,
      );
}
