import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mechta_flutter/features/home/domain/entities/banner_entity.dart';

part 'banner_model.freezed.dart';
part 'banner_model.g.dart';

@freezed
abstract class BannerModel with _$BannerModel {
  const BannerModel._();

  const factory BannerModel({
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'mobile') String? mobile,
    @JsonKey(name: 'url') String? url,
  }) = _BannerModel;

  factory BannerModel.fromJson(Map<String, dynamic> json) =>
      _$BannerModelFromJson(json);

  BannerEntity toEntity() => BannerEntity(
        name: name ?? '',
        mobile: mobile ?? '',
        url: url ?? '',
      );
}
