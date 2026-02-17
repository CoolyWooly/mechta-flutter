// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_category_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ProductCategoryModel {

@JsonKey(name: 'name') String? get name;@JsonKey(name: 'slug') String? get slug;@JsonKey(name: 'level') int? get level;
/// Create a copy of ProductCategoryModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductCategoryModelCopyWith<ProductCategoryModel> get copyWith => _$ProductCategoryModelCopyWithImpl<ProductCategoryModel>(this as ProductCategoryModel, _$identity);

  /// Serializes this ProductCategoryModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductCategoryModel&&(identical(other.name, name) || other.name == name)&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.level, level) || other.level == level));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,slug,level);

@override
String toString() {
  return 'ProductCategoryModel(name: $name, slug: $slug, level: $level)';
}


}

/// @nodoc
abstract mixin class $ProductCategoryModelCopyWith<$Res>  {
  factory $ProductCategoryModelCopyWith(ProductCategoryModel value, $Res Function(ProductCategoryModel) _then) = _$ProductCategoryModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'name') String? name,@JsonKey(name: 'slug') String? slug,@JsonKey(name: 'level') int? level
});




}
/// @nodoc
class _$ProductCategoryModelCopyWithImpl<$Res>
    implements $ProductCategoryModelCopyWith<$Res> {
  _$ProductCategoryModelCopyWithImpl(this._self, this._then);

  final ProductCategoryModel _self;
  final $Res Function(ProductCategoryModel) _then;

/// Create a copy of ProductCategoryModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = freezed,Object? slug = freezed,Object? level = freezed,}) {
  return _then(_self.copyWith(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,slug: freezed == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String?,level: freezed == level ? _self.level : level // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [ProductCategoryModel].
extension ProductCategoryModelPatterns on ProductCategoryModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProductCategoryModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProductCategoryModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProductCategoryModel value)  $default,){
final _that = this;
switch (_that) {
case _ProductCategoryModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProductCategoryModel value)?  $default,){
final _that = this;
switch (_that) {
case _ProductCategoryModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'name')  String? name, @JsonKey(name: 'slug')  String? slug, @JsonKey(name: 'level')  int? level)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProductCategoryModel() when $default != null:
return $default(_that.name,_that.slug,_that.level);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'name')  String? name, @JsonKey(name: 'slug')  String? slug, @JsonKey(name: 'level')  int? level)  $default,) {final _that = this;
switch (_that) {
case _ProductCategoryModel():
return $default(_that.name,_that.slug,_that.level);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'name')  String? name, @JsonKey(name: 'slug')  String? slug, @JsonKey(name: 'level')  int? level)?  $default,) {final _that = this;
switch (_that) {
case _ProductCategoryModel() when $default != null:
return $default(_that.name,_that.slug,_that.level);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ProductCategoryModel extends ProductCategoryModel {
  const _ProductCategoryModel({@JsonKey(name: 'name') this.name, @JsonKey(name: 'slug') this.slug, @JsonKey(name: 'level') this.level}): super._();
  factory _ProductCategoryModel.fromJson(Map<String, dynamic> json) => _$ProductCategoryModelFromJson(json);

@override@JsonKey(name: 'name') final  String? name;
@override@JsonKey(name: 'slug') final  String? slug;
@override@JsonKey(name: 'level') final  int? level;

/// Create a copy of ProductCategoryModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductCategoryModelCopyWith<_ProductCategoryModel> get copyWith => __$ProductCategoryModelCopyWithImpl<_ProductCategoryModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProductCategoryModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductCategoryModel&&(identical(other.name, name) || other.name == name)&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.level, level) || other.level == level));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,slug,level);

@override
String toString() {
  return 'ProductCategoryModel(name: $name, slug: $slug, level: $level)';
}


}

/// @nodoc
abstract mixin class _$ProductCategoryModelCopyWith<$Res> implements $ProductCategoryModelCopyWith<$Res> {
  factory _$ProductCategoryModelCopyWith(_ProductCategoryModel value, $Res Function(_ProductCategoryModel) _then) = __$ProductCategoryModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'name') String? name,@JsonKey(name: 'slug') String? slug,@JsonKey(name: 'level') int? level
});




}
/// @nodoc
class __$ProductCategoryModelCopyWithImpl<$Res>
    implements _$ProductCategoryModelCopyWith<$Res> {
  __$ProductCategoryModelCopyWithImpl(this._self, this._then);

  final _ProductCategoryModel _self;
  final $Res Function(_ProductCategoryModel) _then;

/// Create a copy of ProductCategoryModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = freezed,Object? slug = freezed,Object? level = freezed,}) {
  return _then(_ProductCategoryModel(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,slug: freezed == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String?,level: freezed == level ? _self.level : level // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
