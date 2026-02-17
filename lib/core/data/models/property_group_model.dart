import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mechta_flutter/core/data/models/property_model.dart';
import 'package:mechta_flutter/core/domain/entities/property_group_entity.dart';

part 'property_group_model.freezed.dart';
part 'property_group_model.g.dart';

@freezed
abstract class PropertyGroupModel with _$PropertyGroupModel {
  const PropertyGroupModel._();

  const factory PropertyGroupModel({
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'properties') @Default([]) List<PropertyModel> properties,
  }) = _PropertyGroupModel;

  factory PropertyGroupModel.fromJson(Map<String, dynamic> json) =>
      _$PropertyGroupModelFromJson(json);

  PropertyGroupEntity toEntity() => PropertyGroupEntity(
        name: name,
        properties: properties.map((e) => e.toEntity()).toList(),
      );
}
