// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ProfileModel {

 String? get phone;@JsonKey(name: 'full_name') String? get fullName; String? get email;@JsonKey(name: 'cohort_registration_year_month') String? get registrationDate;@JsonKey(name: 'cohort_first_order_year_month') String? get firstOrderDate;@JsonKey(name: 'client_age_range') String? get ageRange;@JsonKey(name: 'client_gender') String? get gender;@JsonKey(name: 'email_subscription') bool? get isSubscribedEmail;
/// Create a copy of ProfileModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProfileModelCopyWith<ProfileModel> get copyWith => _$ProfileModelCopyWithImpl<ProfileModel>(this as ProfileModel, _$identity);

  /// Serializes this ProfileModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProfileModel&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.fullName, fullName) || other.fullName == fullName)&&(identical(other.email, email) || other.email == email)&&(identical(other.registrationDate, registrationDate) || other.registrationDate == registrationDate)&&(identical(other.firstOrderDate, firstOrderDate) || other.firstOrderDate == firstOrderDate)&&(identical(other.ageRange, ageRange) || other.ageRange == ageRange)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.isSubscribedEmail, isSubscribedEmail) || other.isSubscribedEmail == isSubscribedEmail));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,phone,fullName,email,registrationDate,firstOrderDate,ageRange,gender,isSubscribedEmail);

@override
String toString() {
  return 'ProfileModel(phone: $phone, fullName: $fullName, email: $email, registrationDate: $registrationDate, firstOrderDate: $firstOrderDate, ageRange: $ageRange, gender: $gender, isSubscribedEmail: $isSubscribedEmail)';
}


}

/// @nodoc
abstract mixin class $ProfileModelCopyWith<$Res>  {
  factory $ProfileModelCopyWith(ProfileModel value, $Res Function(ProfileModel) _then) = _$ProfileModelCopyWithImpl;
@useResult
$Res call({
 String? phone,@JsonKey(name: 'full_name') String? fullName, String? email,@JsonKey(name: 'cohort_registration_year_month') String? registrationDate,@JsonKey(name: 'cohort_first_order_year_month') String? firstOrderDate,@JsonKey(name: 'client_age_range') String? ageRange,@JsonKey(name: 'client_gender') String? gender,@JsonKey(name: 'email_subscription') bool? isSubscribedEmail
});




}
/// @nodoc
class _$ProfileModelCopyWithImpl<$Res>
    implements $ProfileModelCopyWith<$Res> {
  _$ProfileModelCopyWithImpl(this._self, this._then);

  final ProfileModel _self;
  final $Res Function(ProfileModel) _then;

/// Create a copy of ProfileModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? phone = freezed,Object? fullName = freezed,Object? email = freezed,Object? registrationDate = freezed,Object? firstOrderDate = freezed,Object? ageRange = freezed,Object? gender = freezed,Object? isSubscribedEmail = freezed,}) {
  return _then(_self.copyWith(
phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,fullName: freezed == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,registrationDate: freezed == registrationDate ? _self.registrationDate : registrationDate // ignore: cast_nullable_to_non_nullable
as String?,firstOrderDate: freezed == firstOrderDate ? _self.firstOrderDate : firstOrderDate // ignore: cast_nullable_to_non_nullable
as String?,ageRange: freezed == ageRange ? _self.ageRange : ageRange // ignore: cast_nullable_to_non_nullable
as String?,gender: freezed == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String?,isSubscribedEmail: freezed == isSubscribedEmail ? _self.isSubscribedEmail : isSubscribedEmail // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

}


/// Adds pattern-matching-related methods to [ProfileModel].
extension ProfileModelPatterns on ProfileModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProfileModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProfileModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProfileModel value)  $default,){
final _that = this;
switch (_that) {
case _ProfileModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProfileModel value)?  $default,){
final _that = this;
switch (_that) {
case _ProfileModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? phone, @JsonKey(name: 'full_name')  String? fullName,  String? email, @JsonKey(name: 'cohort_registration_year_month')  String? registrationDate, @JsonKey(name: 'cohort_first_order_year_month')  String? firstOrderDate, @JsonKey(name: 'client_age_range')  String? ageRange, @JsonKey(name: 'client_gender')  String? gender, @JsonKey(name: 'email_subscription')  bool? isSubscribedEmail)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProfileModel() when $default != null:
return $default(_that.phone,_that.fullName,_that.email,_that.registrationDate,_that.firstOrderDate,_that.ageRange,_that.gender,_that.isSubscribedEmail);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? phone, @JsonKey(name: 'full_name')  String? fullName,  String? email, @JsonKey(name: 'cohort_registration_year_month')  String? registrationDate, @JsonKey(name: 'cohort_first_order_year_month')  String? firstOrderDate, @JsonKey(name: 'client_age_range')  String? ageRange, @JsonKey(name: 'client_gender')  String? gender, @JsonKey(name: 'email_subscription')  bool? isSubscribedEmail)  $default,) {final _that = this;
switch (_that) {
case _ProfileModel():
return $default(_that.phone,_that.fullName,_that.email,_that.registrationDate,_that.firstOrderDate,_that.ageRange,_that.gender,_that.isSubscribedEmail);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? phone, @JsonKey(name: 'full_name')  String? fullName,  String? email, @JsonKey(name: 'cohort_registration_year_month')  String? registrationDate, @JsonKey(name: 'cohort_first_order_year_month')  String? firstOrderDate, @JsonKey(name: 'client_age_range')  String? ageRange, @JsonKey(name: 'client_gender')  String? gender, @JsonKey(name: 'email_subscription')  bool? isSubscribedEmail)?  $default,) {final _that = this;
switch (_that) {
case _ProfileModel() when $default != null:
return $default(_that.phone,_that.fullName,_that.email,_that.registrationDate,_that.firstOrderDate,_that.ageRange,_that.gender,_that.isSubscribedEmail);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ProfileModel extends ProfileModel {
  const _ProfileModel({this.phone, @JsonKey(name: 'full_name') this.fullName, this.email, @JsonKey(name: 'cohort_registration_year_month') this.registrationDate, @JsonKey(name: 'cohort_first_order_year_month') this.firstOrderDate, @JsonKey(name: 'client_age_range') this.ageRange, @JsonKey(name: 'client_gender') this.gender, @JsonKey(name: 'email_subscription') this.isSubscribedEmail}): super._();
  factory _ProfileModel.fromJson(Map<String, dynamic> json) => _$ProfileModelFromJson(json);

@override final  String? phone;
@override@JsonKey(name: 'full_name') final  String? fullName;
@override final  String? email;
@override@JsonKey(name: 'cohort_registration_year_month') final  String? registrationDate;
@override@JsonKey(name: 'cohort_first_order_year_month') final  String? firstOrderDate;
@override@JsonKey(name: 'client_age_range') final  String? ageRange;
@override@JsonKey(name: 'client_gender') final  String? gender;
@override@JsonKey(name: 'email_subscription') final  bool? isSubscribedEmail;

/// Create a copy of ProfileModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProfileModelCopyWith<_ProfileModel> get copyWith => __$ProfileModelCopyWithImpl<_ProfileModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProfileModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProfileModel&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.fullName, fullName) || other.fullName == fullName)&&(identical(other.email, email) || other.email == email)&&(identical(other.registrationDate, registrationDate) || other.registrationDate == registrationDate)&&(identical(other.firstOrderDate, firstOrderDate) || other.firstOrderDate == firstOrderDate)&&(identical(other.ageRange, ageRange) || other.ageRange == ageRange)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.isSubscribedEmail, isSubscribedEmail) || other.isSubscribedEmail == isSubscribedEmail));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,phone,fullName,email,registrationDate,firstOrderDate,ageRange,gender,isSubscribedEmail);

@override
String toString() {
  return 'ProfileModel(phone: $phone, fullName: $fullName, email: $email, registrationDate: $registrationDate, firstOrderDate: $firstOrderDate, ageRange: $ageRange, gender: $gender, isSubscribedEmail: $isSubscribedEmail)';
}


}

/// @nodoc
abstract mixin class _$ProfileModelCopyWith<$Res> implements $ProfileModelCopyWith<$Res> {
  factory _$ProfileModelCopyWith(_ProfileModel value, $Res Function(_ProfileModel) _then) = __$ProfileModelCopyWithImpl;
@override @useResult
$Res call({
 String? phone,@JsonKey(name: 'full_name') String? fullName, String? email,@JsonKey(name: 'cohort_registration_year_month') String? registrationDate,@JsonKey(name: 'cohort_first_order_year_month') String? firstOrderDate,@JsonKey(name: 'client_age_range') String? ageRange,@JsonKey(name: 'client_gender') String? gender,@JsonKey(name: 'email_subscription') bool? isSubscribedEmail
});




}
/// @nodoc
class __$ProfileModelCopyWithImpl<$Res>
    implements _$ProfileModelCopyWith<$Res> {
  __$ProfileModelCopyWithImpl(this._self, this._then);

  final _ProfileModel _self;
  final $Res Function(_ProfileModel) _then;

/// Create a copy of ProfileModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? phone = freezed,Object? fullName = freezed,Object? email = freezed,Object? registrationDate = freezed,Object? firstOrderDate = freezed,Object? ageRange = freezed,Object? gender = freezed,Object? isSubscribedEmail = freezed,}) {
  return _then(_ProfileModel(
phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,fullName: freezed == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,registrationDate: freezed == registrationDate ? _self.registrationDate : registrationDate // ignore: cast_nullable_to_non_nullable
as String?,firstOrderDate: freezed == firstOrderDate ? _self.firstOrderDate : firstOrderDate // ignore: cast_nullable_to_non_nullable
as String?,ageRange: freezed == ageRange ? _self.ageRange : ageRange // ignore: cast_nullable_to_non_nullable
as String?,gender: freezed == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String?,isSubscribedEmail: freezed == isSubscribedEmail ? _self.isSubscribedEmail : isSubscribedEmail // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}

// dart format on
