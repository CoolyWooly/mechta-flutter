// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'popular_category_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PopularCategoryModel {

@JsonKey(name: 'title') String? get title;@JsonKey(name: 'url') String? get url;@JsonKey(name: 'image') String? get image;
/// Create a copy of PopularCategoryModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PopularCategoryModelCopyWith<PopularCategoryModel> get copyWith => _$PopularCategoryModelCopyWithImpl<PopularCategoryModel>(this as PopularCategoryModel, _$identity);

  /// Serializes this PopularCategoryModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PopularCategoryModel&&(identical(other.title, title) || other.title == title)&&(identical(other.url, url) || other.url == url)&&(identical(other.image, image) || other.image == image));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,url,image);

@override
String toString() {
  return 'PopularCategoryModel(title: $title, url: $url, image: $image)';
}


}

/// @nodoc
abstract mixin class $PopularCategoryModelCopyWith<$Res>  {
  factory $PopularCategoryModelCopyWith(PopularCategoryModel value, $Res Function(PopularCategoryModel) _then) = _$PopularCategoryModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'title') String? title,@JsonKey(name: 'url') String? url,@JsonKey(name: 'image') String? image
});




}
/// @nodoc
class _$PopularCategoryModelCopyWithImpl<$Res>
    implements $PopularCategoryModelCopyWith<$Res> {
  _$PopularCategoryModelCopyWithImpl(this._self, this._then);

  final PopularCategoryModel _self;
  final $Res Function(PopularCategoryModel) _then;

/// Create a copy of PopularCategoryModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? title = freezed,Object? url = freezed,Object? image = freezed,}) {
  return _then(_self.copyWith(
title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,url: freezed == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String?,image: freezed == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [PopularCategoryModel].
extension PopularCategoryModelPatterns on PopularCategoryModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PopularCategoryModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PopularCategoryModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PopularCategoryModel value)  $default,){
final _that = this;
switch (_that) {
case _PopularCategoryModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PopularCategoryModel value)?  $default,){
final _that = this;
switch (_that) {
case _PopularCategoryModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'title')  String? title, @JsonKey(name: 'url')  String? url, @JsonKey(name: 'image')  String? image)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PopularCategoryModel() when $default != null:
return $default(_that.title,_that.url,_that.image);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'title')  String? title, @JsonKey(name: 'url')  String? url, @JsonKey(name: 'image')  String? image)  $default,) {final _that = this;
switch (_that) {
case _PopularCategoryModel():
return $default(_that.title,_that.url,_that.image);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'title')  String? title, @JsonKey(name: 'url')  String? url, @JsonKey(name: 'image')  String? image)?  $default,) {final _that = this;
switch (_that) {
case _PopularCategoryModel() when $default != null:
return $default(_that.title,_that.url,_that.image);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PopularCategoryModel extends PopularCategoryModel {
  const _PopularCategoryModel({@JsonKey(name: 'title') this.title, @JsonKey(name: 'url') this.url, @JsonKey(name: 'image') this.image}): super._();
  factory _PopularCategoryModel.fromJson(Map<String, dynamic> json) => _$PopularCategoryModelFromJson(json);

@override@JsonKey(name: 'title') final  String? title;
@override@JsonKey(name: 'url') final  String? url;
@override@JsonKey(name: 'image') final  String? image;

/// Create a copy of PopularCategoryModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PopularCategoryModelCopyWith<_PopularCategoryModel> get copyWith => __$PopularCategoryModelCopyWithImpl<_PopularCategoryModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PopularCategoryModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PopularCategoryModel&&(identical(other.title, title) || other.title == title)&&(identical(other.url, url) || other.url == url)&&(identical(other.image, image) || other.image == image));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,url,image);

@override
String toString() {
  return 'PopularCategoryModel(title: $title, url: $url, image: $image)';
}


}

/// @nodoc
abstract mixin class _$PopularCategoryModelCopyWith<$Res> implements $PopularCategoryModelCopyWith<$Res> {
  factory _$PopularCategoryModelCopyWith(_PopularCategoryModel value, $Res Function(_PopularCategoryModel) _then) = __$PopularCategoryModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'title') String? title,@JsonKey(name: 'url') String? url,@JsonKey(name: 'image') String? image
});




}
/// @nodoc
class __$PopularCategoryModelCopyWithImpl<$Res>
    implements _$PopularCategoryModelCopyWith<$Res> {
  __$PopularCategoryModelCopyWithImpl(this._self, this._then);

  final _PopularCategoryModel _self;
  final $Res Function(_PopularCategoryModel) _then;

/// Create a copy of PopularCategoryModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? title = freezed,Object? url = freezed,Object? image = freezed,}) {
  return _then(_PopularCategoryModel(
title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,url: freezed == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String?,image: freezed == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
