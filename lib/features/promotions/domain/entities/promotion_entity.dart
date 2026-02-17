import 'package:equatable/equatable.dart';

class PromotionEntity extends Equatable {
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

  const PromotionEntity({
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
      ];
}
