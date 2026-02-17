// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'property_group_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PropertyGroupModel _$PropertyGroupModelFromJson(Map<String, dynamic> json) =>
    _PropertyGroupModel(
      name: json['name'] as String?,
      properties:
          (json['properties'] as List<dynamic>?)
              ?.map((e) => PropertyModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$PropertyGroupModelToJson(_PropertyGroupModel instance) =>
    <String, dynamic>{'name': instance.name, 'properties': instance.properties};
