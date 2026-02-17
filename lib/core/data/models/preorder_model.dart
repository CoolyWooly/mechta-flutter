import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mechta_flutter/core/domain/entities/preorder_entity.dart';

part 'preorder_model.freezed.dart';
part 'preorder_model.g.dart';

@freezed
abstract class PreorderModel with _$PreorderModel {
  const PreorderModel._();

  const factory PreorderModel({
    @JsonKey(name: 'activeFrom') String? activeFrom,
    @JsonKey(name: 'activeTo') String? activeTo,
    @JsonKey(name: 'sellFrom') String? sellFrom,
  }) = _PreorderModel;

  factory PreorderModel.fromJson(Map<String, dynamic> json) =>
      _$PreorderModelFromJson(json);

  PreorderEntity toEntity() => PreorderEntity(
        activeFrom: activeFrom,
        activeTo: activeTo,
        sellFrom: sellFrom,
      );
}
