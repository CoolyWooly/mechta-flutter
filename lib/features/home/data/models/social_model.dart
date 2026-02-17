import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mechta_flutter/core/data/models/image_model.dart';
import 'package:mechta_flutter/features/home/domain/entities/social_entity.dart';

part 'social_model.freezed.dart';
part 'social_model.g.dart';

@freezed
abstract class SocialModel with _$SocialModel {
  const SocialModel._();

  const factory SocialModel({
    @JsonKey(name: 'icon') ImageModel? icon,
    @JsonKey(name: 'url') String? url,
  }) = _SocialModel;

  factory SocialModel.fromJson(Map<String, dynamic> json) =>
      _$SocialModelFromJson(json);

  SocialEntity toEntity() => SocialEntity(
        icon: icon?.toEntity(),
        url: url ?? '',
      );
}
