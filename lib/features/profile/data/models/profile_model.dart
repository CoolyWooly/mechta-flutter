import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mechta_flutter/features/profile/domain/entities/profile_entity.dart';

part 'profile_model.freezed.dart';
part 'profile_model.g.dart';

@freezed
abstract class ProfileModel with _$ProfileModel {
  const ProfileModel._();

  const factory ProfileModel({
    String? name,
    String? email,
    String? phone,
    @JsonKey(name: 'avatar_url') String? avatarUrl,
  }) = _ProfileModel;

  factory ProfileModel.fromJson(Map<String, dynamic> json) =>
      _$ProfileModelFromJson(json);

  ProfileEntity toEntity() => ProfileEntity(
        name: name,
        email: email,
        phone: phone,
        avatarUrl: avatarUrl,
      );
}
