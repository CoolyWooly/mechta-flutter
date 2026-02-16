import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mechta_flutter/core/domain/entities/image_entity.dart';

part 'image_model.freezed.dart';
part 'image_model.g.dart';

@freezed
abstract class ImageModel with _$ImageModel {
  const ImageModel._();

  const factory ImageModel({
    @JsonKey(name: 'dark') String? dark,
    @JsonKey(name: 'light') String? light,
  }) = _ImageModel;

  factory ImageModel.fromJson(Map<String, dynamic> json) =>
      _$ImageModelFromJson(json);

  ImageEntity toEntity() => ImageEntity(
        dark: dark,
        light: light,
      );
}
