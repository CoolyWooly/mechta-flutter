import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mechta_flutter/core/domain/entities/shipment_entity.dart';

part 'shipment_model.freezed.dart';
part 'shipment_model.g.dart';

@freezed
abstract class ShipmentModel with _$ShipmentModel {
  const ShipmentModel._();

  const factory ShipmentModel({
    @JsonKey(name: 'todayDelivery') bool? todayDelivery,
    @JsonKey(name: 'expressDelivery') bool? expressDelivery,
    @JsonKey(name: 'pickupAvailable') bool? pickupAvailable,
    @JsonKey(name: 'subdivisions') int? subdivisions,
  }) = _ShipmentModel;

  factory ShipmentModel.fromJson(Map<String, dynamic> json) =>
      _$ShipmentModelFromJson(json);

  ShipmentEntity toEntity() => ShipmentEntity(
        todayDelivery: todayDelivery,
        expressDelivery: expressDelivery,
        pickupAvailable: pickupAvailable,
        subdivisions: subdivisions,
      );
}
