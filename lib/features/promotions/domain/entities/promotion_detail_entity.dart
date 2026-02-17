import 'package:equatable/equatable.dart';

class PromotionDetailEntity extends Equatable {
  final int? id;
  final String? name;
  final String? code;
  final String? imageSrc;
  final String? previewText;
  final String? activeFrom;
  final String? activeTo;
  final int? daysBeforeExpiration;
  final String? brandLogo;
  final String? linkValue;
  final bool? linkIsExternal;
  final List<PromotionBannerEntity> banners;
  final PromotionTypeEntity? type;
  final List<PromotionDescriptionEntity> descriptions;

  const PromotionDetailEntity({
    this.id,
    this.name,
    this.code,
    this.imageSrc,
    this.previewText,
    this.activeFrom,
    this.activeTo,
    this.daysBeforeExpiration,
    this.brandLogo,
    this.linkValue,
    this.linkIsExternal,
    this.banners = const [],
    this.type,
    this.descriptions = const [],
  });

  @override
  List<Object?> get props => [
        id,
        name,
        code,
        imageSrc,
        previewText,
        activeFrom,
        activeTo,
        daysBeforeExpiration,
        brandLogo,
        linkValue,
        linkIsExternal,
        banners,
        type,
        descriptions,
      ];
}

class PromotionBannerEntity extends Equatable {
  final String? name;
  final String? url;
  final String? imageMobile;
  final String? imageDesktop;
  final int? sort;

  const PromotionBannerEntity({
    this.name,
    this.url,
    this.imageMobile,
    this.imageDesktop,
    this.sort,
  });

  @override
  List<Object?> get props => [name, url, imageMobile, imageDesktop, sort];
}

class PromotionTypeEntity extends Equatable {
  final String? code;
  final String? name;

  const PromotionTypeEntity({this.code, this.name});

  @override
  List<Object?> get props => [code, name];
}

class PromotionDescriptionEntity extends Equatable {
  final String? type;
  final String? description;

  const PromotionDescriptionEntity({this.type, this.description});

  @override
  List<Object?> get props => [type, description];
}
