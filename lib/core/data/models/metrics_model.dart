import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mechta_flutter/core/domain/entities/metrics_entity.dart';

part 'metrics_model.freezed.dart';
part 'metrics_model.g.dart';

@freezed
abstract class MetricsModel with _$MetricsModel {
  const MetricsModel._();

  const factory MetricsModel({
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'brand') String? brand,
    @JsonKey(name: 'category') String? category,
  }) = _MetricsModel;

  factory MetricsModel.fromJson(Map<String, dynamic> json) =>
      _$MetricsModelFromJson(json);

  MetricsEntity toEntity() => MetricsEntity(
        name: name,
        brand: brand,
        category: category,
      );
}
