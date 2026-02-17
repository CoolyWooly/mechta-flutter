// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'preorder_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PreorderModel _$PreorderModelFromJson(Map<String, dynamic> json) =>
    _PreorderModel(
      activeFrom: json['activeFrom'] as String?,
      activeTo: json['activeTo'] as String?,
      sellFrom: json['sellFrom'] as String?,
    );

Map<String, dynamic> _$PreorderModelToJson(_PreorderModel instance) =>
    <String, dynamic>{
      'activeFrom': instance.activeFrom,
      'activeTo': instance.activeTo,
      'sellFrom': instance.sellFrom,
    };
