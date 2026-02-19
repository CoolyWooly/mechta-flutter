import 'package:equatable/equatable.dart';

class CityShopsEntity extends Equatable {
  final int? id;
  final String? code;
  final String? name;
  final double? centerLatitude;
  final double? centerLongitude;
  final List<ShopEntity> shops;

  const CityShopsEntity({
    this.id,
    this.code,
    this.name,
    this.centerLatitude,
    this.centerLongitude,
    this.shops = const [],
  });

  @override
  List<Object?> get props => [id, code, name, centerLatitude, centerLongitude, shops];
}

class ShopEntity extends Equatable {
  final int? id;
  final String? address;
  final String? phone;
  final String? schedule;
  final double? latitude;
  final double? longitude;

  const ShopEntity({
    this.id,
    this.address,
    this.phone,
    this.schedule,
    this.latitude,
    this.longitude,
  });

  @override
  List<Object?> get props =>
      [id, address, phone, schedule, latitude, longitude];
}
