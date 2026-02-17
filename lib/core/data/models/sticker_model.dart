import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mechta_flutter/core/domain/entities/sticker_entity.dart';

part 'sticker_model.freezed.dart';
part 'sticker_model.g.dart';

@freezed
abstract class StickerModel with _$StickerModel {
  const StickerModel._();

  const factory StickerModel({
    @JsonKey(name: 'code') String? code,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'link') String? link,
    @JsonKey(name: 'color') String? color,
    @JsonKey(name: 'isSuperAction') bool? isSuperAction,
    @JsonKey(name: 'description') String? description,
  }) = _StickerModel;

  factory StickerModel.fromJson(Map<String, dynamic> json) =>
      _$StickerModelFromJson(json);

  StickerEntity toEntity() => StickerEntity(
        code: code,
        name: name,
        link: link,
        color: color,
        isSuperAction: isSuperAction,
        description: description,
      );
}
