import 'package:mechta_flutter/features/shops/domain/entities/shops_entity.dart';

class ShopsResponseModel {
  final List<CityShopsModel>? cities;

  const ShopsResponseModel({this.cities});

  factory ShopsResponseModel.fromJson(Map<String, dynamic> json) =>
      ShopsResponseModel(
        cities: (json['cities'] as List<dynamic>?)
            ?.whereType<Map<String, dynamic>>()
            .map(CityShopsModel.fromJson)
            .toList(),
      );

  List<CityShopsEntity> toEntity() =>
      cities?.map((c) => c.toEntity()).toList() ?? const [];
}

class CityShopsModel {
  final int? id;
  final String? code;
  final String? name;
  final CoordinatesModel? coordinates;
  final List<ShopModel>? shops;

  const CityShopsModel({
    this.id,
    this.code,
    this.name,
    this.coordinates,
    this.shops,
  });

  factory CityShopsModel.fromJson(Map<String, dynamic> json) => CityShopsModel(
        id: json['id'] as int?,
        code: json['code'] as String?,
        name: json['name'] as String?,
        coordinates: json['coordinates'] != null
            ? CoordinatesModel.fromJson(
                json['coordinates'] as Map<String, dynamic>)
            : null,
        shops: (json['shops'] as List<dynamic>?)
            ?.whereType<Map<String, dynamic>>()
            .map(ShopModel.fromJson)
            .toList(),
      );

  CityShopsEntity toEntity() => CityShopsEntity(
        id: id,
        code: code,
        name: name,
        centerLatitude: coordinates?.center?.latitude,
        centerLongitude: coordinates?.center?.longitude,
        shops: shops?.map((s) => s.toEntity()).toList() ?? const [],
      );
}

// Used for city coordinates — has a `center` wrapper object
class CoordinatesModel {
  final CenterModel? center;

  const CoordinatesModel({this.center});

  factory CoordinatesModel.fromJson(Map<String, dynamic> json) =>
      CoordinatesModel(
        center: json['center'] != null
            ? CenterModel.fromJson(json['center'] as Map<String, dynamic>)
            : null,
      );
}

class CenterModel {
  // Note: JSON keys are swapped in the API DTO
  // JSON "longitude" key → actual latitude value, JSON "latitude" key → actual longitude value
  final double? latitude;
  final double? longitude;

  const CenterModel({this.latitude, this.longitude});

  factory CenterModel.fromJson(Map<String, dynamic> json) => CenterModel(
        latitude: (json['longitude'] as num?)?.toDouble(),
        longitude: (json['latitude'] as num?)?.toDouble(),
      );
}

// Used for shop coordinates — flat {latitude, longitude}, no `center` wrapper
class ShopCoordinatesModel {
  final double? latitude;
  final double? longitude;

  const ShopCoordinatesModel({this.latitude, this.longitude});

  // Same key swap as city: JSON "longitude" → actual latitude, JSON "latitude" → actual longitude
  factory ShopCoordinatesModel.fromJson(Map<String, dynamic> json) =>
      ShopCoordinatesModel(
        latitude: (json['longitude'] as num?)?.toDouble(),
        longitude: (json['latitude'] as num?)?.toDouble(),
      );
}

class ShopModel {
  final int? id;
  final String? address;
  final String? phone;
  final String? schedule;
  final ShopCoordinatesModel? coordinates;

  const ShopModel({
    this.id,
    this.address,
    this.phone,
    this.schedule,
    this.coordinates,
  });

  factory ShopModel.fromJson(Map<String, dynamic> json) => ShopModel(
        id: json['id'] as int?,
        address: json['address'] as String?,
        phone: (json['phones'] as List<dynamic>?)
            ?.whereType<String>()
            .firstOrNull,
        schedule: json['schedule'] as String?,
        coordinates: json['coordinates'] != null
            ? ShopCoordinatesModel.fromJson(
                json['coordinates'] as Map<String, dynamic>)
            : null,
      );

  ShopEntity toEntity() => ShopEntity(
        id: id,
        address: address,
        phone: phone,
        schedule: schedule,
        latitude: coordinates?.latitude,
        longitude: coordinates?.longitude,
      );
}
