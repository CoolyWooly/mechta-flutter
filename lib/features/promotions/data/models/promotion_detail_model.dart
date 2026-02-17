import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mechta_flutter/features/promotions/domain/entities/promotion_detail_entity.dart';

part 'promotion_detail_model.freezed.dart';
part 'promotion_detail_model.g.dart';

@freezed
abstract class PromotionDetailModel with _$PromotionDetailModel {
  const PromotionDetailModel._();

  const factory PromotionDetailModel({
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
    PromotionDetailLinkModel? link,
    List<PromotionBannerModel>? banners,
    PromotionTypeModel? type,
    List<PromotionDescriptionModel>? descriptions,
  }) = _PromotionDetailModel;

  factory PromotionDetailModel.fromJson(Map<String, dynamic> json) =>
      _$PromotionDetailModelFromJson(json);

  PromotionDetailEntity toEntity() => PromotionDetailEntity(
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
        banners: banners?.map((b) => b.toEntity()).toList() ?? const [],
        type: type?.toEntity(),
        descriptions:
            descriptions?.map((d) => d.toEntity()).toList() ?? const [],
      );
}

@freezed
abstract class PromotionDetailLinkModel with _$PromotionDetailLinkModel {
  const factory PromotionDetailLinkModel({
    @JsonKey(name: 'is_external') bool? isExternal,
    String? value,
  }) = _PromotionDetailLinkModel;

  factory PromotionDetailLinkModel.fromJson(Map<String, dynamic> json) =>
      _$PromotionDetailLinkModelFromJson(json);
}

@freezed
abstract class PromotionBannerModel with _$PromotionBannerModel {
  const PromotionBannerModel._();

  const factory PromotionBannerModel({
    String? name,
    String? url,
    PromotionBannerImagesModel? images,
    int? sort,
  }) = _PromotionBannerModel;

  factory PromotionBannerModel.fromJson(Map<String, dynamic> json) =>
      _$PromotionBannerModelFromJson(json);

  PromotionBannerEntity toEntity() => PromotionBannerEntity(
        name: name,
        url: url,
        imageMobile: images?.mobile,
        imageDesktop: images?.desktop,
        sort: sort,
      );
}

@freezed
abstract class PromotionBannerImagesModel with _$PromotionBannerImagesModel {
  const factory PromotionBannerImagesModel({
    String? mobile,
    String? desktop,
  }) = _PromotionBannerImagesModel;

  factory PromotionBannerImagesModel.fromJson(Map<String, dynamic> json) =>
      _$PromotionBannerImagesModelFromJson(json);
}

@freezed
abstract class PromotionTypeModel with _$PromotionTypeModel {
  const PromotionTypeModel._();

  const factory PromotionTypeModel({
    String? code,
    String? name,
  }) = _PromotionTypeModel;

  factory PromotionTypeModel.fromJson(Map<String, dynamic> json) =>
      _$PromotionTypeModelFromJson(json);

  PromotionTypeEntity toEntity() => PromotionTypeEntity(
        code: code,
        name: name,
      );
}

@freezed
abstract class PromotionDescriptionModel with _$PromotionDescriptionModel {
  const PromotionDescriptionModel._();

  const factory PromotionDescriptionModel({
    String? type,
    String? description,
  }) = _PromotionDescriptionModel;

  factory PromotionDescriptionModel.fromJson(Map<String, dynamic> json) =>
      _$PromotionDescriptionModelFromJson(json);

  PromotionDescriptionEntity toEntity() => PromotionDescriptionEntity(
        type: type,
        description: description,
      );
}
