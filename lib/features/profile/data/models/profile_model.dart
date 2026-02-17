import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mechta_flutter/features/profile/domain/entities/profile_entity.dart';

part 'profile_model.freezed.dart';
part 'profile_model.g.dart';

@freezed
abstract class ProfileModel with _$ProfileModel {
  const ProfileModel._();

  const factory ProfileModel({
    String? phone,
    @JsonKey(name: 'full_name') String? fullName,
    String? email,
    @JsonKey(name: 'cohort_registration_year_month') String? registrationDate,
    @JsonKey(name: 'cohort_first_order_year_month') String? firstOrderDate,
    @JsonKey(name: 'client_age_range') String? ageRange,
    @JsonKey(name: 'client_gender') String? gender,
    @JsonKey(name: 'email_subscription') bool? isSubscribedEmail,
  }) = _ProfileModel;

  factory ProfileModel.fromJson(Map<String, dynamic> json) =>
      _$ProfileModelFromJson(json);

  ProfileEntity toEntity() => ProfileEntity(
        phone: phone,
        fullName: fullName,
        email: email,
        registrationDate: registrationDate,
        firstOrderDate: firstOrderDate,
        ageRange: ageRange,
        gender: gender,
        isSubscribedEmail: isSubscribedEmail,
      );
}
