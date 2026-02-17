import 'package:equatable/equatable.dart';

class CityEntity extends Equatable {
  final String code;
  final String name;
  final String kaspiCode;
  final List<String> phones;
  final double lat;
  final double lon;

  const CityEntity({
    required this.code,
    required this.name,
    required this.kaspiCode,
    required this.phones,
    required this.lat,
    required this.lon,
  });

  @override
  List<Object?> get props => [code, name, kaspiCode, phones, lat, lon];
}
