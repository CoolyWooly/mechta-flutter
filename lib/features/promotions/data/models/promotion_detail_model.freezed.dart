// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'promotion_detail_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PromotionDetailModel {

 int? get id; String? get name; String? get code;@JsonKey(name: 'image_src') String? get imageSrc;@JsonKey(name: 'preview_text') String? get previewText;@JsonKey(name: 'active_from') String? get activeFrom;@JsonKey(name: 'active_to') String? get activeTo;@JsonKey(name: 'days_before_expiration') int? get daysBeforeExpiration;@JsonKey(name: 'brand_logo') String? get brandLogo; String? get entity; int? get sort; PromotionDetailLinkModel? get link; List<PromotionBannerModel>? get banners; PromotionTypeModel? get type; List<PromotionDescriptionModel>? get descriptions;
/// Create a copy of PromotionDetailModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PromotionDetailModelCopyWith<PromotionDetailModel> get copyWith => _$PromotionDetailModelCopyWithImpl<PromotionDetailModel>(this as PromotionDetailModel, _$identity);

  /// Serializes this PromotionDetailModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PromotionDetailModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.code, code) || other.code == code)&&(identical(other.imageSrc, imageSrc) || other.imageSrc == imageSrc)&&(identical(other.previewText, previewText) || other.previewText == previewText)&&(identical(other.activeFrom, activeFrom) || other.activeFrom == activeFrom)&&(identical(other.activeTo, activeTo) || other.activeTo == activeTo)&&(identical(other.daysBeforeExpiration, daysBeforeExpiration) || other.daysBeforeExpiration == daysBeforeExpiration)&&(identical(other.brandLogo, brandLogo) || other.brandLogo == brandLogo)&&(identical(other.entity, entity) || other.entity == entity)&&(identical(other.sort, sort) || other.sort == sort)&&(identical(other.link, link) || other.link == link)&&const DeepCollectionEquality().equals(other.banners, banners)&&(identical(other.type, type) || other.type == type)&&const DeepCollectionEquality().equals(other.descriptions, descriptions));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,code,imageSrc,previewText,activeFrom,activeTo,daysBeforeExpiration,brandLogo,entity,sort,link,const DeepCollectionEquality().hash(banners),type,const DeepCollectionEquality().hash(descriptions));

@override
String toString() {
  return 'PromotionDetailModel(id: $id, name: $name, code: $code, imageSrc: $imageSrc, previewText: $previewText, activeFrom: $activeFrom, activeTo: $activeTo, daysBeforeExpiration: $daysBeforeExpiration, brandLogo: $brandLogo, entity: $entity, sort: $sort, link: $link, banners: $banners, type: $type, descriptions: $descriptions)';
}


}

/// @nodoc
abstract mixin class $PromotionDetailModelCopyWith<$Res>  {
  factory $PromotionDetailModelCopyWith(PromotionDetailModel value, $Res Function(PromotionDetailModel) _then) = _$PromotionDetailModelCopyWithImpl;
@useResult
$Res call({
 int? id, String? name, String? code,@JsonKey(name: 'image_src') String? imageSrc,@JsonKey(name: 'preview_text') String? previewText,@JsonKey(name: 'active_from') String? activeFrom,@JsonKey(name: 'active_to') String? activeTo,@JsonKey(name: 'days_before_expiration') int? daysBeforeExpiration,@JsonKey(name: 'brand_logo') String? brandLogo, String? entity, int? sort, PromotionDetailLinkModel? link, List<PromotionBannerModel>? banners, PromotionTypeModel? type, List<PromotionDescriptionModel>? descriptions
});


$PromotionDetailLinkModelCopyWith<$Res>? get link;$PromotionTypeModelCopyWith<$Res>? get type;

}
/// @nodoc
class _$PromotionDetailModelCopyWithImpl<$Res>
    implements $PromotionDetailModelCopyWith<$Res> {
  _$PromotionDetailModelCopyWithImpl(this._self, this._then);

  final PromotionDetailModel _self;
  final $Res Function(PromotionDetailModel) _then;

/// Create a copy of PromotionDetailModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? name = freezed,Object? code = freezed,Object? imageSrc = freezed,Object? previewText = freezed,Object? activeFrom = freezed,Object? activeTo = freezed,Object? daysBeforeExpiration = freezed,Object? brandLogo = freezed,Object? entity = freezed,Object? sort = freezed,Object? link = freezed,Object? banners = freezed,Object? type = freezed,Object? descriptions = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,code: freezed == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String?,imageSrc: freezed == imageSrc ? _self.imageSrc : imageSrc // ignore: cast_nullable_to_non_nullable
as String?,previewText: freezed == previewText ? _self.previewText : previewText // ignore: cast_nullable_to_non_nullable
as String?,activeFrom: freezed == activeFrom ? _self.activeFrom : activeFrom // ignore: cast_nullable_to_non_nullable
as String?,activeTo: freezed == activeTo ? _self.activeTo : activeTo // ignore: cast_nullable_to_non_nullable
as String?,daysBeforeExpiration: freezed == daysBeforeExpiration ? _self.daysBeforeExpiration : daysBeforeExpiration // ignore: cast_nullable_to_non_nullable
as int?,brandLogo: freezed == brandLogo ? _self.brandLogo : brandLogo // ignore: cast_nullable_to_non_nullable
as String?,entity: freezed == entity ? _self.entity : entity // ignore: cast_nullable_to_non_nullable
as String?,sort: freezed == sort ? _self.sort : sort // ignore: cast_nullable_to_non_nullable
as int?,link: freezed == link ? _self.link : link // ignore: cast_nullable_to_non_nullable
as PromotionDetailLinkModel?,banners: freezed == banners ? _self.banners : banners // ignore: cast_nullable_to_non_nullable
as List<PromotionBannerModel>?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as PromotionTypeModel?,descriptions: freezed == descriptions ? _self.descriptions : descriptions // ignore: cast_nullable_to_non_nullable
as List<PromotionDescriptionModel>?,
  ));
}
/// Create a copy of PromotionDetailModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PromotionDetailLinkModelCopyWith<$Res>? get link {
    if (_self.link == null) {
    return null;
  }

  return $PromotionDetailLinkModelCopyWith<$Res>(_self.link!, (value) {
    return _then(_self.copyWith(link: value));
  });
}/// Create a copy of PromotionDetailModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PromotionTypeModelCopyWith<$Res>? get type {
    if (_self.type == null) {
    return null;
  }

  return $PromotionTypeModelCopyWith<$Res>(_self.type!, (value) {
    return _then(_self.copyWith(type: value));
  });
}
}


/// Adds pattern-matching-related methods to [PromotionDetailModel].
extension PromotionDetailModelPatterns on PromotionDetailModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PromotionDetailModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PromotionDetailModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PromotionDetailModel value)  $default,){
final _that = this;
switch (_that) {
case _PromotionDetailModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PromotionDetailModel value)?  $default,){
final _that = this;
switch (_that) {
case _PromotionDetailModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  String? name,  String? code, @JsonKey(name: 'image_src')  String? imageSrc, @JsonKey(name: 'preview_text')  String? previewText, @JsonKey(name: 'active_from')  String? activeFrom, @JsonKey(name: 'active_to')  String? activeTo, @JsonKey(name: 'days_before_expiration')  int? daysBeforeExpiration, @JsonKey(name: 'brand_logo')  String? brandLogo,  String? entity,  int? sort,  PromotionDetailLinkModel? link,  List<PromotionBannerModel>? banners,  PromotionTypeModel? type,  List<PromotionDescriptionModel>? descriptions)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PromotionDetailModel() when $default != null:
return $default(_that.id,_that.name,_that.code,_that.imageSrc,_that.previewText,_that.activeFrom,_that.activeTo,_that.daysBeforeExpiration,_that.brandLogo,_that.entity,_that.sort,_that.link,_that.banners,_that.type,_that.descriptions);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  String? name,  String? code, @JsonKey(name: 'image_src')  String? imageSrc, @JsonKey(name: 'preview_text')  String? previewText, @JsonKey(name: 'active_from')  String? activeFrom, @JsonKey(name: 'active_to')  String? activeTo, @JsonKey(name: 'days_before_expiration')  int? daysBeforeExpiration, @JsonKey(name: 'brand_logo')  String? brandLogo,  String? entity,  int? sort,  PromotionDetailLinkModel? link,  List<PromotionBannerModel>? banners,  PromotionTypeModel? type,  List<PromotionDescriptionModel>? descriptions)  $default,) {final _that = this;
switch (_that) {
case _PromotionDetailModel():
return $default(_that.id,_that.name,_that.code,_that.imageSrc,_that.previewText,_that.activeFrom,_that.activeTo,_that.daysBeforeExpiration,_that.brandLogo,_that.entity,_that.sort,_that.link,_that.banners,_that.type,_that.descriptions);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  String? name,  String? code, @JsonKey(name: 'image_src')  String? imageSrc, @JsonKey(name: 'preview_text')  String? previewText, @JsonKey(name: 'active_from')  String? activeFrom, @JsonKey(name: 'active_to')  String? activeTo, @JsonKey(name: 'days_before_expiration')  int? daysBeforeExpiration, @JsonKey(name: 'brand_logo')  String? brandLogo,  String? entity,  int? sort,  PromotionDetailLinkModel? link,  List<PromotionBannerModel>? banners,  PromotionTypeModel? type,  List<PromotionDescriptionModel>? descriptions)?  $default,) {final _that = this;
switch (_that) {
case _PromotionDetailModel() when $default != null:
return $default(_that.id,_that.name,_that.code,_that.imageSrc,_that.previewText,_that.activeFrom,_that.activeTo,_that.daysBeforeExpiration,_that.brandLogo,_that.entity,_that.sort,_that.link,_that.banners,_that.type,_that.descriptions);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PromotionDetailModel extends PromotionDetailModel {
  const _PromotionDetailModel({this.id, this.name, this.code, @JsonKey(name: 'image_src') this.imageSrc, @JsonKey(name: 'preview_text') this.previewText, @JsonKey(name: 'active_from') this.activeFrom, @JsonKey(name: 'active_to') this.activeTo, @JsonKey(name: 'days_before_expiration') this.daysBeforeExpiration, @JsonKey(name: 'brand_logo') this.brandLogo, this.entity, this.sort, this.link, final  List<PromotionBannerModel>? banners, this.type, final  List<PromotionDescriptionModel>? descriptions}): _banners = banners,_descriptions = descriptions,super._();
  factory _PromotionDetailModel.fromJson(Map<String, dynamic> json) => _$PromotionDetailModelFromJson(json);

@override final  int? id;
@override final  String? name;
@override final  String? code;
@override@JsonKey(name: 'image_src') final  String? imageSrc;
@override@JsonKey(name: 'preview_text') final  String? previewText;
@override@JsonKey(name: 'active_from') final  String? activeFrom;
@override@JsonKey(name: 'active_to') final  String? activeTo;
@override@JsonKey(name: 'days_before_expiration') final  int? daysBeforeExpiration;
@override@JsonKey(name: 'brand_logo') final  String? brandLogo;
@override final  String? entity;
@override final  int? sort;
@override final  PromotionDetailLinkModel? link;
 final  List<PromotionBannerModel>? _banners;
@override List<PromotionBannerModel>? get banners {
  final value = _banners;
  if (value == null) return null;
  if (_banners is EqualUnmodifiableListView) return _banners;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  PromotionTypeModel? type;
 final  List<PromotionDescriptionModel>? _descriptions;
@override List<PromotionDescriptionModel>? get descriptions {
  final value = _descriptions;
  if (value == null) return null;
  if (_descriptions is EqualUnmodifiableListView) return _descriptions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of PromotionDetailModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PromotionDetailModelCopyWith<_PromotionDetailModel> get copyWith => __$PromotionDetailModelCopyWithImpl<_PromotionDetailModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PromotionDetailModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PromotionDetailModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.code, code) || other.code == code)&&(identical(other.imageSrc, imageSrc) || other.imageSrc == imageSrc)&&(identical(other.previewText, previewText) || other.previewText == previewText)&&(identical(other.activeFrom, activeFrom) || other.activeFrom == activeFrom)&&(identical(other.activeTo, activeTo) || other.activeTo == activeTo)&&(identical(other.daysBeforeExpiration, daysBeforeExpiration) || other.daysBeforeExpiration == daysBeforeExpiration)&&(identical(other.brandLogo, brandLogo) || other.brandLogo == brandLogo)&&(identical(other.entity, entity) || other.entity == entity)&&(identical(other.sort, sort) || other.sort == sort)&&(identical(other.link, link) || other.link == link)&&const DeepCollectionEquality().equals(other._banners, _banners)&&(identical(other.type, type) || other.type == type)&&const DeepCollectionEquality().equals(other._descriptions, _descriptions));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,code,imageSrc,previewText,activeFrom,activeTo,daysBeforeExpiration,brandLogo,entity,sort,link,const DeepCollectionEquality().hash(_banners),type,const DeepCollectionEquality().hash(_descriptions));

@override
String toString() {
  return 'PromotionDetailModel(id: $id, name: $name, code: $code, imageSrc: $imageSrc, previewText: $previewText, activeFrom: $activeFrom, activeTo: $activeTo, daysBeforeExpiration: $daysBeforeExpiration, brandLogo: $brandLogo, entity: $entity, sort: $sort, link: $link, banners: $banners, type: $type, descriptions: $descriptions)';
}


}

/// @nodoc
abstract mixin class _$PromotionDetailModelCopyWith<$Res> implements $PromotionDetailModelCopyWith<$Res> {
  factory _$PromotionDetailModelCopyWith(_PromotionDetailModel value, $Res Function(_PromotionDetailModel) _then) = __$PromotionDetailModelCopyWithImpl;
@override @useResult
$Res call({
 int? id, String? name, String? code,@JsonKey(name: 'image_src') String? imageSrc,@JsonKey(name: 'preview_text') String? previewText,@JsonKey(name: 'active_from') String? activeFrom,@JsonKey(name: 'active_to') String? activeTo,@JsonKey(name: 'days_before_expiration') int? daysBeforeExpiration,@JsonKey(name: 'brand_logo') String? brandLogo, String? entity, int? sort, PromotionDetailLinkModel? link, List<PromotionBannerModel>? banners, PromotionTypeModel? type, List<PromotionDescriptionModel>? descriptions
});


@override $PromotionDetailLinkModelCopyWith<$Res>? get link;@override $PromotionTypeModelCopyWith<$Res>? get type;

}
/// @nodoc
class __$PromotionDetailModelCopyWithImpl<$Res>
    implements _$PromotionDetailModelCopyWith<$Res> {
  __$PromotionDetailModelCopyWithImpl(this._self, this._then);

  final _PromotionDetailModel _self;
  final $Res Function(_PromotionDetailModel) _then;

/// Create a copy of PromotionDetailModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? name = freezed,Object? code = freezed,Object? imageSrc = freezed,Object? previewText = freezed,Object? activeFrom = freezed,Object? activeTo = freezed,Object? daysBeforeExpiration = freezed,Object? brandLogo = freezed,Object? entity = freezed,Object? sort = freezed,Object? link = freezed,Object? banners = freezed,Object? type = freezed,Object? descriptions = freezed,}) {
  return _then(_PromotionDetailModel(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,code: freezed == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String?,imageSrc: freezed == imageSrc ? _self.imageSrc : imageSrc // ignore: cast_nullable_to_non_nullable
as String?,previewText: freezed == previewText ? _self.previewText : previewText // ignore: cast_nullable_to_non_nullable
as String?,activeFrom: freezed == activeFrom ? _self.activeFrom : activeFrom // ignore: cast_nullable_to_non_nullable
as String?,activeTo: freezed == activeTo ? _self.activeTo : activeTo // ignore: cast_nullable_to_non_nullable
as String?,daysBeforeExpiration: freezed == daysBeforeExpiration ? _self.daysBeforeExpiration : daysBeforeExpiration // ignore: cast_nullable_to_non_nullable
as int?,brandLogo: freezed == brandLogo ? _self.brandLogo : brandLogo // ignore: cast_nullable_to_non_nullable
as String?,entity: freezed == entity ? _self.entity : entity // ignore: cast_nullable_to_non_nullable
as String?,sort: freezed == sort ? _self.sort : sort // ignore: cast_nullable_to_non_nullable
as int?,link: freezed == link ? _self.link : link // ignore: cast_nullable_to_non_nullable
as PromotionDetailLinkModel?,banners: freezed == banners ? _self._banners : banners // ignore: cast_nullable_to_non_nullable
as List<PromotionBannerModel>?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as PromotionTypeModel?,descriptions: freezed == descriptions ? _self._descriptions : descriptions // ignore: cast_nullable_to_non_nullable
as List<PromotionDescriptionModel>?,
  ));
}

/// Create a copy of PromotionDetailModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PromotionDetailLinkModelCopyWith<$Res>? get link {
    if (_self.link == null) {
    return null;
  }

  return $PromotionDetailLinkModelCopyWith<$Res>(_self.link!, (value) {
    return _then(_self.copyWith(link: value));
  });
}/// Create a copy of PromotionDetailModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PromotionTypeModelCopyWith<$Res>? get type {
    if (_self.type == null) {
    return null;
  }

  return $PromotionTypeModelCopyWith<$Res>(_self.type!, (value) {
    return _then(_self.copyWith(type: value));
  });
}
}


/// @nodoc
mixin _$PromotionDetailLinkModel {

@JsonKey(name: 'is_external') bool? get isExternal; String? get value;
/// Create a copy of PromotionDetailLinkModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PromotionDetailLinkModelCopyWith<PromotionDetailLinkModel> get copyWith => _$PromotionDetailLinkModelCopyWithImpl<PromotionDetailLinkModel>(this as PromotionDetailLinkModel, _$identity);

  /// Serializes this PromotionDetailLinkModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PromotionDetailLinkModel&&(identical(other.isExternal, isExternal) || other.isExternal == isExternal)&&(identical(other.value, value) || other.value == value));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,isExternal,value);

@override
String toString() {
  return 'PromotionDetailLinkModel(isExternal: $isExternal, value: $value)';
}


}

/// @nodoc
abstract mixin class $PromotionDetailLinkModelCopyWith<$Res>  {
  factory $PromotionDetailLinkModelCopyWith(PromotionDetailLinkModel value, $Res Function(PromotionDetailLinkModel) _then) = _$PromotionDetailLinkModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'is_external') bool? isExternal, String? value
});




}
/// @nodoc
class _$PromotionDetailLinkModelCopyWithImpl<$Res>
    implements $PromotionDetailLinkModelCopyWith<$Res> {
  _$PromotionDetailLinkModelCopyWithImpl(this._self, this._then);

  final PromotionDetailLinkModel _self;
  final $Res Function(PromotionDetailLinkModel) _then;

/// Create a copy of PromotionDetailLinkModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isExternal = freezed,Object? value = freezed,}) {
  return _then(_self.copyWith(
isExternal: freezed == isExternal ? _self.isExternal : isExternal // ignore: cast_nullable_to_non_nullable
as bool?,value: freezed == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [PromotionDetailLinkModel].
extension PromotionDetailLinkModelPatterns on PromotionDetailLinkModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PromotionDetailLinkModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PromotionDetailLinkModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PromotionDetailLinkModel value)  $default,){
final _that = this;
switch (_that) {
case _PromotionDetailLinkModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PromotionDetailLinkModel value)?  $default,){
final _that = this;
switch (_that) {
case _PromotionDetailLinkModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'is_external')  bool? isExternal,  String? value)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PromotionDetailLinkModel() when $default != null:
return $default(_that.isExternal,_that.value);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'is_external')  bool? isExternal,  String? value)  $default,) {final _that = this;
switch (_that) {
case _PromotionDetailLinkModel():
return $default(_that.isExternal,_that.value);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'is_external')  bool? isExternal,  String? value)?  $default,) {final _that = this;
switch (_that) {
case _PromotionDetailLinkModel() when $default != null:
return $default(_that.isExternal,_that.value);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PromotionDetailLinkModel implements PromotionDetailLinkModel {
  const _PromotionDetailLinkModel({@JsonKey(name: 'is_external') this.isExternal, this.value});
  factory _PromotionDetailLinkModel.fromJson(Map<String, dynamic> json) => _$PromotionDetailLinkModelFromJson(json);

@override@JsonKey(name: 'is_external') final  bool? isExternal;
@override final  String? value;

/// Create a copy of PromotionDetailLinkModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PromotionDetailLinkModelCopyWith<_PromotionDetailLinkModel> get copyWith => __$PromotionDetailLinkModelCopyWithImpl<_PromotionDetailLinkModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PromotionDetailLinkModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PromotionDetailLinkModel&&(identical(other.isExternal, isExternal) || other.isExternal == isExternal)&&(identical(other.value, value) || other.value == value));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,isExternal,value);

@override
String toString() {
  return 'PromotionDetailLinkModel(isExternal: $isExternal, value: $value)';
}


}

/// @nodoc
abstract mixin class _$PromotionDetailLinkModelCopyWith<$Res> implements $PromotionDetailLinkModelCopyWith<$Res> {
  factory _$PromotionDetailLinkModelCopyWith(_PromotionDetailLinkModel value, $Res Function(_PromotionDetailLinkModel) _then) = __$PromotionDetailLinkModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'is_external') bool? isExternal, String? value
});




}
/// @nodoc
class __$PromotionDetailLinkModelCopyWithImpl<$Res>
    implements _$PromotionDetailLinkModelCopyWith<$Res> {
  __$PromotionDetailLinkModelCopyWithImpl(this._self, this._then);

  final _PromotionDetailLinkModel _self;
  final $Res Function(_PromotionDetailLinkModel) _then;

/// Create a copy of PromotionDetailLinkModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isExternal = freezed,Object? value = freezed,}) {
  return _then(_PromotionDetailLinkModel(
isExternal: freezed == isExternal ? _self.isExternal : isExternal // ignore: cast_nullable_to_non_nullable
as bool?,value: freezed == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$PromotionBannerModel {

 String? get name; String? get url; PromotionBannerImagesModel? get images; int? get sort;
/// Create a copy of PromotionBannerModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PromotionBannerModelCopyWith<PromotionBannerModel> get copyWith => _$PromotionBannerModelCopyWithImpl<PromotionBannerModel>(this as PromotionBannerModel, _$identity);

  /// Serializes this PromotionBannerModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PromotionBannerModel&&(identical(other.name, name) || other.name == name)&&(identical(other.url, url) || other.url == url)&&(identical(other.images, images) || other.images == images)&&(identical(other.sort, sort) || other.sort == sort));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,url,images,sort);

@override
String toString() {
  return 'PromotionBannerModel(name: $name, url: $url, images: $images, sort: $sort)';
}


}

/// @nodoc
abstract mixin class $PromotionBannerModelCopyWith<$Res>  {
  factory $PromotionBannerModelCopyWith(PromotionBannerModel value, $Res Function(PromotionBannerModel) _then) = _$PromotionBannerModelCopyWithImpl;
@useResult
$Res call({
 String? name, String? url, PromotionBannerImagesModel? images, int? sort
});


$PromotionBannerImagesModelCopyWith<$Res>? get images;

}
/// @nodoc
class _$PromotionBannerModelCopyWithImpl<$Res>
    implements $PromotionBannerModelCopyWith<$Res> {
  _$PromotionBannerModelCopyWithImpl(this._self, this._then);

  final PromotionBannerModel _self;
  final $Res Function(PromotionBannerModel) _then;

/// Create a copy of PromotionBannerModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = freezed,Object? url = freezed,Object? images = freezed,Object? sort = freezed,}) {
  return _then(_self.copyWith(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,url: freezed == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String?,images: freezed == images ? _self.images : images // ignore: cast_nullable_to_non_nullable
as PromotionBannerImagesModel?,sort: freezed == sort ? _self.sort : sort // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}
/// Create a copy of PromotionBannerModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PromotionBannerImagesModelCopyWith<$Res>? get images {
    if (_self.images == null) {
    return null;
  }

  return $PromotionBannerImagesModelCopyWith<$Res>(_self.images!, (value) {
    return _then(_self.copyWith(images: value));
  });
}
}


/// Adds pattern-matching-related methods to [PromotionBannerModel].
extension PromotionBannerModelPatterns on PromotionBannerModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PromotionBannerModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PromotionBannerModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PromotionBannerModel value)  $default,){
final _that = this;
switch (_that) {
case _PromotionBannerModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PromotionBannerModel value)?  $default,){
final _that = this;
switch (_that) {
case _PromotionBannerModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? name,  String? url,  PromotionBannerImagesModel? images,  int? sort)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PromotionBannerModel() when $default != null:
return $default(_that.name,_that.url,_that.images,_that.sort);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? name,  String? url,  PromotionBannerImagesModel? images,  int? sort)  $default,) {final _that = this;
switch (_that) {
case _PromotionBannerModel():
return $default(_that.name,_that.url,_that.images,_that.sort);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? name,  String? url,  PromotionBannerImagesModel? images,  int? sort)?  $default,) {final _that = this;
switch (_that) {
case _PromotionBannerModel() when $default != null:
return $default(_that.name,_that.url,_that.images,_that.sort);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PromotionBannerModel extends PromotionBannerModel {
  const _PromotionBannerModel({this.name, this.url, this.images, this.sort}): super._();
  factory _PromotionBannerModel.fromJson(Map<String, dynamic> json) => _$PromotionBannerModelFromJson(json);

@override final  String? name;
@override final  String? url;
@override final  PromotionBannerImagesModel? images;
@override final  int? sort;

/// Create a copy of PromotionBannerModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PromotionBannerModelCopyWith<_PromotionBannerModel> get copyWith => __$PromotionBannerModelCopyWithImpl<_PromotionBannerModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PromotionBannerModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PromotionBannerModel&&(identical(other.name, name) || other.name == name)&&(identical(other.url, url) || other.url == url)&&(identical(other.images, images) || other.images == images)&&(identical(other.sort, sort) || other.sort == sort));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,url,images,sort);

@override
String toString() {
  return 'PromotionBannerModel(name: $name, url: $url, images: $images, sort: $sort)';
}


}

/// @nodoc
abstract mixin class _$PromotionBannerModelCopyWith<$Res> implements $PromotionBannerModelCopyWith<$Res> {
  factory _$PromotionBannerModelCopyWith(_PromotionBannerModel value, $Res Function(_PromotionBannerModel) _then) = __$PromotionBannerModelCopyWithImpl;
@override @useResult
$Res call({
 String? name, String? url, PromotionBannerImagesModel? images, int? sort
});


@override $PromotionBannerImagesModelCopyWith<$Res>? get images;

}
/// @nodoc
class __$PromotionBannerModelCopyWithImpl<$Res>
    implements _$PromotionBannerModelCopyWith<$Res> {
  __$PromotionBannerModelCopyWithImpl(this._self, this._then);

  final _PromotionBannerModel _self;
  final $Res Function(_PromotionBannerModel) _then;

/// Create a copy of PromotionBannerModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = freezed,Object? url = freezed,Object? images = freezed,Object? sort = freezed,}) {
  return _then(_PromotionBannerModel(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,url: freezed == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String?,images: freezed == images ? _self.images : images // ignore: cast_nullable_to_non_nullable
as PromotionBannerImagesModel?,sort: freezed == sort ? _self.sort : sort // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

/// Create a copy of PromotionBannerModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PromotionBannerImagesModelCopyWith<$Res>? get images {
    if (_self.images == null) {
    return null;
  }

  return $PromotionBannerImagesModelCopyWith<$Res>(_self.images!, (value) {
    return _then(_self.copyWith(images: value));
  });
}
}


/// @nodoc
mixin _$PromotionBannerImagesModel {

 String? get mobile; String? get desktop;
/// Create a copy of PromotionBannerImagesModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PromotionBannerImagesModelCopyWith<PromotionBannerImagesModel> get copyWith => _$PromotionBannerImagesModelCopyWithImpl<PromotionBannerImagesModel>(this as PromotionBannerImagesModel, _$identity);

  /// Serializes this PromotionBannerImagesModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PromotionBannerImagesModel&&(identical(other.mobile, mobile) || other.mobile == mobile)&&(identical(other.desktop, desktop) || other.desktop == desktop));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,mobile,desktop);

@override
String toString() {
  return 'PromotionBannerImagesModel(mobile: $mobile, desktop: $desktop)';
}


}

/// @nodoc
abstract mixin class $PromotionBannerImagesModelCopyWith<$Res>  {
  factory $PromotionBannerImagesModelCopyWith(PromotionBannerImagesModel value, $Res Function(PromotionBannerImagesModel) _then) = _$PromotionBannerImagesModelCopyWithImpl;
@useResult
$Res call({
 String? mobile, String? desktop
});




}
/// @nodoc
class _$PromotionBannerImagesModelCopyWithImpl<$Res>
    implements $PromotionBannerImagesModelCopyWith<$Res> {
  _$PromotionBannerImagesModelCopyWithImpl(this._self, this._then);

  final PromotionBannerImagesModel _self;
  final $Res Function(PromotionBannerImagesModel) _then;

/// Create a copy of PromotionBannerImagesModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? mobile = freezed,Object? desktop = freezed,}) {
  return _then(_self.copyWith(
mobile: freezed == mobile ? _self.mobile : mobile // ignore: cast_nullable_to_non_nullable
as String?,desktop: freezed == desktop ? _self.desktop : desktop // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [PromotionBannerImagesModel].
extension PromotionBannerImagesModelPatterns on PromotionBannerImagesModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PromotionBannerImagesModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PromotionBannerImagesModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PromotionBannerImagesModel value)  $default,){
final _that = this;
switch (_that) {
case _PromotionBannerImagesModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PromotionBannerImagesModel value)?  $default,){
final _that = this;
switch (_that) {
case _PromotionBannerImagesModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? mobile,  String? desktop)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PromotionBannerImagesModel() when $default != null:
return $default(_that.mobile,_that.desktop);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? mobile,  String? desktop)  $default,) {final _that = this;
switch (_that) {
case _PromotionBannerImagesModel():
return $default(_that.mobile,_that.desktop);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? mobile,  String? desktop)?  $default,) {final _that = this;
switch (_that) {
case _PromotionBannerImagesModel() when $default != null:
return $default(_that.mobile,_that.desktop);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PromotionBannerImagesModel implements PromotionBannerImagesModel {
  const _PromotionBannerImagesModel({this.mobile, this.desktop});
  factory _PromotionBannerImagesModel.fromJson(Map<String, dynamic> json) => _$PromotionBannerImagesModelFromJson(json);

@override final  String? mobile;
@override final  String? desktop;

/// Create a copy of PromotionBannerImagesModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PromotionBannerImagesModelCopyWith<_PromotionBannerImagesModel> get copyWith => __$PromotionBannerImagesModelCopyWithImpl<_PromotionBannerImagesModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PromotionBannerImagesModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PromotionBannerImagesModel&&(identical(other.mobile, mobile) || other.mobile == mobile)&&(identical(other.desktop, desktop) || other.desktop == desktop));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,mobile,desktop);

@override
String toString() {
  return 'PromotionBannerImagesModel(mobile: $mobile, desktop: $desktop)';
}


}

/// @nodoc
abstract mixin class _$PromotionBannerImagesModelCopyWith<$Res> implements $PromotionBannerImagesModelCopyWith<$Res> {
  factory _$PromotionBannerImagesModelCopyWith(_PromotionBannerImagesModel value, $Res Function(_PromotionBannerImagesModel) _then) = __$PromotionBannerImagesModelCopyWithImpl;
@override @useResult
$Res call({
 String? mobile, String? desktop
});




}
/// @nodoc
class __$PromotionBannerImagesModelCopyWithImpl<$Res>
    implements _$PromotionBannerImagesModelCopyWith<$Res> {
  __$PromotionBannerImagesModelCopyWithImpl(this._self, this._then);

  final _PromotionBannerImagesModel _self;
  final $Res Function(_PromotionBannerImagesModel) _then;

/// Create a copy of PromotionBannerImagesModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? mobile = freezed,Object? desktop = freezed,}) {
  return _then(_PromotionBannerImagesModel(
mobile: freezed == mobile ? _self.mobile : mobile // ignore: cast_nullable_to_non_nullable
as String?,desktop: freezed == desktop ? _self.desktop : desktop // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$PromotionTypeModel {

 String? get code; String? get name;
/// Create a copy of PromotionTypeModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PromotionTypeModelCopyWith<PromotionTypeModel> get copyWith => _$PromotionTypeModelCopyWithImpl<PromotionTypeModel>(this as PromotionTypeModel, _$identity);

  /// Serializes this PromotionTypeModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PromotionTypeModel&&(identical(other.code, code) || other.code == code)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,code,name);

@override
String toString() {
  return 'PromotionTypeModel(code: $code, name: $name)';
}


}

/// @nodoc
abstract mixin class $PromotionTypeModelCopyWith<$Res>  {
  factory $PromotionTypeModelCopyWith(PromotionTypeModel value, $Res Function(PromotionTypeModel) _then) = _$PromotionTypeModelCopyWithImpl;
@useResult
$Res call({
 String? code, String? name
});




}
/// @nodoc
class _$PromotionTypeModelCopyWithImpl<$Res>
    implements $PromotionTypeModelCopyWith<$Res> {
  _$PromotionTypeModelCopyWithImpl(this._self, this._then);

  final PromotionTypeModel _self;
  final $Res Function(PromotionTypeModel) _then;

/// Create a copy of PromotionTypeModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? code = freezed,Object? name = freezed,}) {
  return _then(_self.copyWith(
code: freezed == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [PromotionTypeModel].
extension PromotionTypeModelPatterns on PromotionTypeModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PromotionTypeModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PromotionTypeModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PromotionTypeModel value)  $default,){
final _that = this;
switch (_that) {
case _PromotionTypeModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PromotionTypeModel value)?  $default,){
final _that = this;
switch (_that) {
case _PromotionTypeModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? code,  String? name)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PromotionTypeModel() when $default != null:
return $default(_that.code,_that.name);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? code,  String? name)  $default,) {final _that = this;
switch (_that) {
case _PromotionTypeModel():
return $default(_that.code,_that.name);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? code,  String? name)?  $default,) {final _that = this;
switch (_that) {
case _PromotionTypeModel() when $default != null:
return $default(_that.code,_that.name);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PromotionTypeModel extends PromotionTypeModel {
  const _PromotionTypeModel({this.code, this.name}): super._();
  factory _PromotionTypeModel.fromJson(Map<String, dynamic> json) => _$PromotionTypeModelFromJson(json);

@override final  String? code;
@override final  String? name;

/// Create a copy of PromotionTypeModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PromotionTypeModelCopyWith<_PromotionTypeModel> get copyWith => __$PromotionTypeModelCopyWithImpl<_PromotionTypeModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PromotionTypeModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PromotionTypeModel&&(identical(other.code, code) || other.code == code)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,code,name);

@override
String toString() {
  return 'PromotionTypeModel(code: $code, name: $name)';
}


}

/// @nodoc
abstract mixin class _$PromotionTypeModelCopyWith<$Res> implements $PromotionTypeModelCopyWith<$Res> {
  factory _$PromotionTypeModelCopyWith(_PromotionTypeModel value, $Res Function(_PromotionTypeModel) _then) = __$PromotionTypeModelCopyWithImpl;
@override @useResult
$Res call({
 String? code, String? name
});




}
/// @nodoc
class __$PromotionTypeModelCopyWithImpl<$Res>
    implements _$PromotionTypeModelCopyWith<$Res> {
  __$PromotionTypeModelCopyWithImpl(this._self, this._then);

  final _PromotionTypeModel _self;
  final $Res Function(_PromotionTypeModel) _then;

/// Create a copy of PromotionTypeModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? code = freezed,Object? name = freezed,}) {
  return _then(_PromotionTypeModel(
code: freezed == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$PromotionDescriptionModel {

 String? get type; String? get description;
/// Create a copy of PromotionDescriptionModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PromotionDescriptionModelCopyWith<PromotionDescriptionModel> get copyWith => _$PromotionDescriptionModelCopyWithImpl<PromotionDescriptionModel>(this as PromotionDescriptionModel, _$identity);

  /// Serializes this PromotionDescriptionModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PromotionDescriptionModel&&(identical(other.type, type) || other.type == type)&&(identical(other.description, description) || other.description == description));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type,description);

@override
String toString() {
  return 'PromotionDescriptionModel(type: $type, description: $description)';
}


}

/// @nodoc
abstract mixin class $PromotionDescriptionModelCopyWith<$Res>  {
  factory $PromotionDescriptionModelCopyWith(PromotionDescriptionModel value, $Res Function(PromotionDescriptionModel) _then) = _$PromotionDescriptionModelCopyWithImpl;
@useResult
$Res call({
 String? type, String? description
});




}
/// @nodoc
class _$PromotionDescriptionModelCopyWithImpl<$Res>
    implements $PromotionDescriptionModelCopyWith<$Res> {
  _$PromotionDescriptionModelCopyWithImpl(this._self, this._then);

  final PromotionDescriptionModel _self;
  final $Res Function(PromotionDescriptionModel) _then;

/// Create a copy of PromotionDescriptionModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? type = freezed,Object? description = freezed,}) {
  return _then(_self.copyWith(
type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [PromotionDescriptionModel].
extension PromotionDescriptionModelPatterns on PromotionDescriptionModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PromotionDescriptionModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PromotionDescriptionModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PromotionDescriptionModel value)  $default,){
final _that = this;
switch (_that) {
case _PromotionDescriptionModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PromotionDescriptionModel value)?  $default,){
final _that = this;
switch (_that) {
case _PromotionDescriptionModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? type,  String? description)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PromotionDescriptionModel() when $default != null:
return $default(_that.type,_that.description);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? type,  String? description)  $default,) {final _that = this;
switch (_that) {
case _PromotionDescriptionModel():
return $default(_that.type,_that.description);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? type,  String? description)?  $default,) {final _that = this;
switch (_that) {
case _PromotionDescriptionModel() when $default != null:
return $default(_that.type,_that.description);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PromotionDescriptionModel extends PromotionDescriptionModel {
  const _PromotionDescriptionModel({this.type, this.description}): super._();
  factory _PromotionDescriptionModel.fromJson(Map<String, dynamic> json) => _$PromotionDescriptionModelFromJson(json);

@override final  String? type;
@override final  String? description;

/// Create a copy of PromotionDescriptionModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PromotionDescriptionModelCopyWith<_PromotionDescriptionModel> get copyWith => __$PromotionDescriptionModelCopyWithImpl<_PromotionDescriptionModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PromotionDescriptionModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PromotionDescriptionModel&&(identical(other.type, type) || other.type == type)&&(identical(other.description, description) || other.description == description));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type,description);

@override
String toString() {
  return 'PromotionDescriptionModel(type: $type, description: $description)';
}


}

/// @nodoc
abstract mixin class _$PromotionDescriptionModelCopyWith<$Res> implements $PromotionDescriptionModelCopyWith<$Res> {
  factory _$PromotionDescriptionModelCopyWith(_PromotionDescriptionModel value, $Res Function(_PromotionDescriptionModel) _then) = __$PromotionDescriptionModelCopyWithImpl;
@override @useResult
$Res call({
 String? type, String? description
});




}
/// @nodoc
class __$PromotionDescriptionModelCopyWithImpl<$Res>
    implements _$PromotionDescriptionModelCopyWith<$Res> {
  __$PromotionDescriptionModelCopyWithImpl(this._self, this._then);

  final _PromotionDescriptionModel _self;
  final $Res Function(_PromotionDescriptionModel) _then;

/// Create a copy of PromotionDescriptionModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? type = freezed,Object? description = freezed,}) {
  return _then(_PromotionDescriptionModel(
type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
