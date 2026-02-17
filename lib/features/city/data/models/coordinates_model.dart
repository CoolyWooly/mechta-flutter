import 'package:freezed_annotation/freezed_annotation.dart';

part 'coordinates_model.freezed.dart';
part 'coordinates_model.g.dart';

@freezed
abstract class CoordinatesModel with _$CoordinatesModel {
  const factory CoordinatesModel({
    @JsonKey(name: 'lat') double? lat,
    @JsonKey(name: 'lon') double? lon,
  }) = _CoordinatesModel;

  factory CoordinatesModel.fromJson(Map<String, dynamic> json) =>
      _$CoordinatesModelFromJson(json);
}
