import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mechta_flutter/features/promotions/domain/entities/promotion_entity.dart';

part 'promotion_model.freezed.dart';
part 'promotion_model.g.dart';

@freezed
abstract class PromotionModel with _$PromotionModel {
  const PromotionModel._();

  const factory PromotionModel({
    int? id,
    String? name,
    String? code,
    @JsonKey(name: 'image_src') String? imageSrc,
    @JsonKey(name: 'preview_text') String? previewText,
    @JsonKey(name: 'active_from') String? activeFrom,
    @JsonKey(name: 'active_to') String? activeTo,
    @JsonKey(name: 'days_before_expiration') int? daysBeforeExpiration,
    @JsonKey(name: 'brand_logo') String? brandLogo,
    String? entity,
    int? sort,
    PromotionLinkModel? link,
  }) = _PromotionModel;

  factory PromotionModel.fromJson(Map<String, dynamic> json) =>
      _$PromotionModelFromJson(json);

  PromotionEntity toEntity() => PromotionEntity(
        id: id,
        name: name,
        code: code,
        imageSrc: imageSrc,
        previewText: previewText,
        activeFrom: activeFrom,
        activeTo: activeTo,
        daysBeforeExpiration: daysBeforeExpiration,
        brandLogo: brandLogo,
        linkValue: link?.value,
        linkIsExternal: link?.isExternal,
      );
}

@freezed
abstract class PromotionLinkModel with _$PromotionLinkModel {
  const factory PromotionLinkModel({
    @JsonKey(name: 'is_external') bool? isExternal,
    String? value,
  }) = _PromotionLinkModel;

  factory PromotionLinkModel.fromJson(Map<String, dynamic> json) =>
      _$PromotionLinkModelFromJson(json);
}
