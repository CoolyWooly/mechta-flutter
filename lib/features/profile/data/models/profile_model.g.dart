// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ProfileModel _$ProfileModelFromJson(Map<String, dynamic> json) =>
    _ProfileModel(
      phone: json['phone'] as String?,
      fullName: json['full_name'] as String?,
      email: json['email'] as String?,
      registrationDate: json['cohort_registration_year_month'] as String?,
      firstOrderDate: json['cohort_first_order_year_month'] as String?,
      ageRange: json['client_age_range'] as String?,
      gender: json['client_gender'] as String?,
      isSubscribedEmail: json['email_subscription'] as bool?,
    );

Map<String, dynamic> _$ProfileModelToJson(_ProfileModel instance) =>
    <String, dynamic>{
      'phone': instance.phone,
      'full_name': instance.fullName,
      'email': instance.email,
      'cohort_registration_year_month': instance.registrationDate,
      'cohort_first_order_year_month': instance.firstOrderDate,
      'client_age_range': instance.ageRange,
      'client_gender': instance.gender,
      'email_subscription': instance.isSubscribedEmail,
    };
