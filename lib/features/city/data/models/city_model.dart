import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mechta_flutter/features/city/data/models/coordinates_model.dart';
import 'package:mechta_flutter/features/city/domain/entities/city_entity.dart';

part 'city_model.freezed.dart';
part 'city_model.g.dart';

@freezed
abstract class CityModel with _$CityModel {
  const CityModel._();

  const factory CityModel({
    @JsonKey(name: 'code') String? code,
    @JsonKey(name: 'kaspiCode') String? kaspiCode,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'phones') List<String>? phones,
    @JsonKey(name: 'coordinates') CoordinatesModel? coordinates,
  }) = _CityModel;

  factory CityModel.fromJson(Map<String, dynamic> json) =>
      _$CityModelFromJson(json);

  CityEntity toEntity() => CityEntity(
        code: code ?? '',
        name: name ?? '',
        kaspiCode: kaspiCode ?? '',
        phones: phones ?? [],
        lat: coordinates?.lat ?? 0,
        lon: coordinates?.lon ?? 0,
      );

  static CityModel fromEntity(CityEntity entity) => CityModel(
        code: entity.code,
        kaspiCode: entity.kaspiCode,
        name: entity.name,
        phones: entity.phones,
        coordinates: CoordinatesModel(lat: entity.lat, lon: entity.lon),
      );
}
