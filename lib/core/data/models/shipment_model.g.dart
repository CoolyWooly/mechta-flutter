// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shipment_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ShipmentModel _$ShipmentModelFromJson(Map<String, dynamic> json) =>
    _ShipmentModel(
      todayDelivery: json['todayDelivery'] as bool?,
      expressDelivery: json['expressDelivery'] as bool?,
      pickupAvailable: json['pickupAvailable'] as bool?,
      subdivisions: (json['subdivisions'] as num?)?.toInt(),
    );

Map<String, dynamic> _$ShipmentModelToJson(_ShipmentModel instance) =>
    <String, dynamic>{
      'todayDelivery': instance.todayDelivery,
      'expressDelivery': instance.expressDelivery,
      'pickupAvailable': instance.pickupAvailable,
      'subdivisions': instance.subdivisions,
    };
