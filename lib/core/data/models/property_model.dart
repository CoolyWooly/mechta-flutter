import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mechta_flutter/core/domain/entities/property_entity.dart';

part 'property_model.freezed.dart';
part 'property_model.g.dart';

@freezed
abstract class PropertyModel with _$PropertyModel {
  const PropertyModel._();

  const factory PropertyModel({
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'url') String? url,
    @JsonKey(name: 'value') String? value,
  }) = _PropertyModel;

  factory PropertyModel.fromJson(Map<String, dynamic> json) =>
      _$PropertyModelFromJson(json);

  PropertyEntity toEntity() => PropertyEntity(
        name: name,
        url: url,
        value: value,
      );
}
