// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'promotion_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PromotionModel {

 int? get id; String? get name; String? get code;@JsonKey(name: 'image_src') String? get imageSrc;@JsonKey(name: 'preview_text') String? get previewText;@JsonKey(name: 'active_from') String? get activeFrom;@JsonKey(name: 'active_to') String? get activeTo;@JsonKey(name: 'days_before_expiration') int? get daysBeforeExpiration;@JsonKey(name: 'brand_logo') String? get brandLogo; String? get entity; int? get sort; PromotionLinkModel? get link;
/// Create a copy of PromotionModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PromotionModelCopyWith<PromotionModel> get copyWith => _$PromotionModelCopyWithImpl<PromotionModel>(this as PromotionModel, _$identity);

  /// Serializes this PromotionModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PromotionModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.code, code) || other.code == code)&&(identical(other.imageSrc, imageSrc) || other.imageSrc == imageSrc)&&(identical(other.previewText, previewText) || other.previewText == previewText)&&(identical(other.activeFrom, activeFrom) || other.activeFrom == activeFrom)&&(identical(other.activeTo, activeTo) || other.activeTo == activeTo)&&(identical(other.daysBeforeExpiration, daysBeforeExpiration) || other.daysBeforeExpiration == daysBeforeExpiration)&&(identical(other.brandLogo, brandLogo) || other.brandLogo == brandLogo)&&(identical(other.entity, entity) || other.entity == entity)&&(identical(other.sort, sort) || other.sort == sort)&&(identical(other.link, link) || other.link == link));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,code,imageSrc,previewText,activeFrom,activeTo,daysBeforeExpiration,brandLogo,entity,sort,link);

@override
String toString() {
  return 'PromotionModel(id: $id, name: $name, code: $code, imageSrc: $imageSrc, previewText: $previewText, activeFrom: $activeFrom, activeTo: $activeTo, daysBeforeExpiration: $daysBeforeExpiration, brandLogo: $brandLogo, entity: $entity, sort: $sort, link: $link)';
}


}

/// @nodoc
abstract mixin class $PromotionModelCopyWith<$Res>  {
  factory $PromotionModelCopyWith(PromotionModel value, $Res Function(PromotionModel) _then) = _$PromotionModelCopyWithImpl;
@useResult
$Res call({
 int? id, String? name, String? code,@JsonKey(name: 'image_src') String? imageSrc,@JsonKey(name: 'preview_text') String? previewText,@JsonKey(name: 'active_from') String? activeFrom,@JsonKey(name: 'active_to') String? activeTo,@JsonKey(name: 'days_before_expiration') int? daysBeforeExpiration,@JsonKey(name: 'brand_logo') String? brandLogo, String? entity, int? sort, PromotionLinkModel? link
});


$PromotionLinkModelCopyWith<$Res>? get link;

}
/// @nodoc
class _$PromotionModelCopyWithImpl<$Res>
    implements $PromotionModelCopyWith<$Res> {
  _$PromotionModelCopyWithImpl(this._self, this._then);

  final PromotionModel _self;
  final $Res Function(PromotionModel) _then;

/// Create a copy of PromotionModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? name = freezed,Object? code = freezed,Object? imageSrc = freezed,Object? previewText = freezed,Object? activeFrom = freezed,Object? activeTo = freezed,Object? daysBeforeExpiration = freezed,Object? brandLogo = freezed,Object? entity = freezed,Object? sort = freezed,Object? link = freezed,}) {
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
as PromotionLinkModel?,
  ));
}
/// Create a copy of PromotionModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PromotionLinkModelCopyWith<$Res>? get link {
    if (_self.link == null) {
    return null;
  }

  return $PromotionLinkModelCopyWith<$Res>(_self.link!, (value) {
    return _then(_self.copyWith(link: value));
  });
}
}


/// Adds pattern-matching-related methods to [PromotionModel].
extension PromotionModelPatterns on PromotionModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PromotionModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PromotionModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PromotionModel value)  $default,){
final _that = this;
switch (_that) {
case _PromotionModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PromotionModel value)?  $default,){
final _that = this;
switch (_that) {
case _PromotionModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  String? name,  String? code, @JsonKey(name: 'image_src')  String? imageSrc, @JsonKey(name: 'preview_text')  String? previewText, @JsonKey(name: 'active_from')  String? activeFrom, @JsonKey(name: 'active_to')  String? activeTo, @JsonKey(name: 'days_before_expiration')  int? daysBeforeExpiration, @JsonKey(name: 'brand_logo')  String? brandLogo,  String? entity,  int? sort,  PromotionLinkModel? link)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PromotionModel() when $default != null:
return $default(_that.id,_that.name,_that.code,_that.imageSrc,_that.previewText,_that.activeFrom,_that.activeTo,_that.daysBeforeExpiration,_that.brandLogo,_that.entity,_that.sort,_that.link);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  String? name,  String? code, @JsonKey(name: 'image_src')  String? imageSrc, @JsonKey(name: 'preview_text')  String? previewText, @JsonKey(name: 'active_from')  String? activeFrom, @JsonKey(name: 'active_to')  String? activeTo, @JsonKey(name: 'days_before_expiration')  int? daysBeforeExpiration, @JsonKey(name: 'brand_logo')  String? brandLogo,  String? entity,  int? sort,  PromotionLinkModel? link)  $default,) {final _that = this;
switch (_that) {
case _PromotionModel():
return $default(_that.id,_that.name,_that.code,_that.imageSrc,_that.previewText,_that.activeFrom,_that.activeTo,_that.daysBeforeExpiration,_that.brandLogo,_that.entity,_that.sort,_that.link);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  String? name,  String? code, @JsonKey(name: 'image_src')  String? imageSrc, @JsonKey(name: 'preview_text')  String? previewText, @JsonKey(name: 'active_from')  String? activeFrom, @JsonKey(name: 'active_to')  String? activeTo, @JsonKey(name: 'days_before_expiration')  int? daysBeforeExpiration, @JsonKey(name: 'brand_logo')  String? brandLogo,  String? entity,  int? sort,  PromotionLinkModel? link)?  $default,) {final _that = this;
switch (_that) {
case _PromotionModel() when $default != null:
return $default(_that.id,_that.name,_that.code,_that.imageSrc,_that.previewText,_that.activeFrom,_that.activeTo,_that.daysBeforeExpiration,_that.brandLogo,_that.entity,_that.sort,_that.link);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PromotionModel extends PromotionModel {
  const _PromotionModel({this.id, this.name, this.code, @JsonKey(name: 'image_src') this.imageSrc, @JsonKey(name: 'preview_text') this.previewText, @JsonKey(name: 'active_from') this.activeFrom, @JsonKey(name: 'active_to') this.activeTo, @JsonKey(name: 'days_before_expiration') this.daysBeforeExpiration, @JsonKey(name: 'brand_logo') this.brandLogo, this.entity, this.sort, this.link}): super._();
  factory _PromotionModel.fromJson(Map<String, dynamic> json) => _$PromotionModelFromJson(json);

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
@override final  PromotionLinkModel? link;

/// Create a copy of PromotionModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PromotionModelCopyWith<_PromotionModel> get copyWith => __$PromotionModelCopyWithImpl<_PromotionModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PromotionModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PromotionModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.code, code) || other.code == code)&&(identical(other.imageSrc, imageSrc) || other.imageSrc == imageSrc)&&(identical(other.previewText, previewText) || other.previewText == previewText)&&(identical(other.activeFrom, activeFrom) || other.activeFrom == activeFrom)&&(identical(other.activeTo, activeTo) || other.activeTo == activeTo)&&(identical(other.daysBeforeExpiration, daysBeforeExpiration) || other.daysBeforeExpiration == daysBeforeExpiration)&&(identical(other.brandLogo, brandLogo) || other.brandLogo == brandLogo)&&(identical(other.entity, entity) || other.entity == entity)&&(identical(other.sort, sort) || other.sort == sort)&&(identical(other.link, link) || other.link == link));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,code,imageSrc,previewText,activeFrom,activeTo,daysBeforeExpiration,brandLogo,entity,sort,link);

@override
String toString() {
  return 'PromotionModel(id: $id, name: $name, code: $code, imageSrc: $imageSrc, previewText: $previewText, activeFrom: $activeFrom, activeTo: $activeTo, daysBeforeExpiration: $daysBeforeExpiration, brandLogo: $brandLogo, entity: $entity, sort: $sort, link: $link)';
}


}

/// @nodoc
abstract mixin class _$PromotionModelCopyWith<$Res> implements $PromotionModelCopyWith<$Res> {
  factory _$PromotionModelCopyWith(_PromotionModel value, $Res Function(_PromotionModel) _then) = __$PromotionModelCopyWithImpl;
@override @useResult
$Res call({
 int? id, String? name, String? code,@JsonKey(name: 'image_src') String? imageSrc,@JsonKey(name: 'preview_text') String? previewText,@JsonKey(name: 'active_from') String? activeFrom,@JsonKey(name: 'active_to') String? activeTo,@JsonKey(name: 'days_before_expiration') int? daysBeforeExpiration,@JsonKey(name: 'brand_logo') String? brandLogo, String? entity, int? sort, PromotionLinkModel? link
});


@override $PromotionLinkModelCopyWith<$Res>? get link;

}
/// @nodoc
class __$PromotionModelCopyWithImpl<$Res>
    implements _$PromotionModelCopyWith<$Res> {
  __$PromotionModelCopyWithImpl(this._self, this._then);

  final _PromotionModel _self;
  final $Res Function(_PromotionModel) _then;

/// Create a copy of PromotionModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? name = freezed,Object? code = freezed,Object? imageSrc = freezed,Object? previewText = freezed,Object? activeFrom = freezed,Object? activeTo = freezed,Object? daysBeforeExpiration = freezed,Object? brandLogo = freezed,Object? entity = freezed,Object? sort = freezed,Object? link = freezed,}) {
  return _then(_PromotionModel(
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
as PromotionLinkModel?,
  ));
}

/// Create a copy of PromotionModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PromotionLinkModelCopyWith<$Res>? get link {
    if (_self.link == null) {
    return null;
  }

  return $PromotionLinkModelCopyWith<$Res>(_self.link!, (value) {
    return _then(_self.copyWith(link: value));
  });
}
}


/// @nodoc
mixin _$PromotionLinkModel {

@JsonKey(name: 'is_external') bool? get isExternal; String? get value;
/// Create a copy of PromotionLinkModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PromotionLinkModelCopyWith<PromotionLinkModel> get copyWith => _$PromotionLinkModelCopyWithImpl<PromotionLinkModel>(this as PromotionLinkModel, _$identity);

  /// Serializes this PromotionLinkModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PromotionLinkModel&&(identical(other.isExternal, isExternal) || other.isExternal == isExternal)&&(identical(other.value, value) || other.value == value));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,isExternal,value);

@override
String toString() {
  return 'PromotionLinkModel(isExternal: $isExternal, value: $value)';
}


}

/// @nodoc
abstract mixin class $PromotionLinkModelCopyWith<$Res>  {
  factory $PromotionLinkModelCopyWith(PromotionLinkModel value, $Res Function(PromotionLinkModel) _then) = _$PromotionLinkModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'is_external') bool? isExternal, String? value
});




}
/// @nodoc
class _$PromotionLinkModelCopyWithImpl<$Res>
    implements $PromotionLinkModelCopyWith<$Res> {
  _$PromotionLinkModelCopyWithImpl(this._self, this._then);

  final PromotionLinkModel _self;
  final $Res Function(PromotionLinkModel) _then;

/// Create a copy of PromotionLinkModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isExternal = freezed,Object? value = freezed,}) {
  return _then(_self.copyWith(
isExternal: freezed == isExternal ? _self.isExternal : isExternal // ignore: cast_nullable_to_non_nullable
as bool?,value: freezed == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [PromotionLinkModel].
extension PromotionLinkModelPatterns on PromotionLinkModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PromotionLinkModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PromotionLinkModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PromotionLinkModel value)  $default,){
final _that = this;
switch (_that) {
case _PromotionLinkModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PromotionLinkModel value)?  $default,){
final _that = this;
switch (_that) {
case _PromotionLinkModel() when $default != null:
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
case _PromotionLinkModel() when $default != null:
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
case _PromotionLinkModel():
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
case _PromotionLinkModel() when $default != null:
return $default(_that.isExternal,_that.value);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PromotionLinkModel implements PromotionLinkModel {
  const _PromotionLinkModel({@JsonKey(name: 'is_external') this.isExternal, this.value});
  factory _PromotionLinkModel.fromJson(Map<String, dynamic> json) => _$PromotionLinkModelFromJson(json);

@override@JsonKey(name: 'is_external') final  bool? isExternal;
@override final  String? value;

/// Create a copy of PromotionLinkModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PromotionLinkModelCopyWith<_PromotionLinkModel> get copyWith => __$PromotionLinkModelCopyWithImpl<_PromotionLinkModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PromotionLinkModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PromotionLinkModel&&(identical(other.isExternal, isExternal) || other.isExternal == isExternal)&&(identical(other.value, value) || other.value == value));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,isExternal,value);

@override
String toString() {
  return 'PromotionLinkModel(isExternal: $isExternal, value: $value)';
}


}

/// @nodoc
abstract mixin class _$PromotionLinkModelCopyWith<$Res> implements $PromotionLinkModelCopyWith<$Res> {
  factory _$PromotionLinkModelCopyWith(_PromotionLinkModel value, $Res Function(_PromotionLinkModel) _then) = __$PromotionLinkModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'is_external') bool? isExternal, String? value
});




}
/// @nodoc
class __$PromotionLinkModelCopyWithImpl<$Res>
    implements _$PromotionLinkModelCopyWith<$Res> {
  __$PromotionLinkModelCopyWithImpl(this._self, this._then);

  final _PromotionLinkModel _self;
  final $Res Function(_PromotionLinkModel) _then;

/// Create a copy of PromotionLinkModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isExternal = freezed,Object? value = freezed,}) {
  return _then(_PromotionLinkModel(
isExternal: freezed == isExternal ? _self.isExternal : isExternal // ignore: cast_nullable_to_non_nullable
as bool?,value: freezed == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
