// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CategoryResponseModel {

 CategoryModel? get category; String? get header; List<CategoryBannerModel>? get banners; List<CategoryModel>? get parents; String? get description; int? get productsCount; List<CategoryModel>? get children;
/// Create a copy of CategoryResponseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CategoryResponseModelCopyWith<CategoryResponseModel> get copyWith => _$CategoryResponseModelCopyWithImpl<CategoryResponseModel>(this as CategoryResponseModel, _$identity);

  /// Serializes this CategoryResponseModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CategoryResponseModel&&(identical(other.category, category) || other.category == category)&&(identical(other.header, header) || other.header == header)&&const DeepCollectionEquality().equals(other.banners, banners)&&const DeepCollectionEquality().equals(other.parents, parents)&&(identical(other.description, description) || other.description == description)&&(identical(other.productsCount, productsCount) || other.productsCount == productsCount)&&const DeepCollectionEquality().equals(other.children, children));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,category,header,const DeepCollectionEquality().hash(banners),const DeepCollectionEquality().hash(parents),description,productsCount,const DeepCollectionEquality().hash(children));

@override
String toString() {
  return 'CategoryResponseModel(category: $category, header: $header, banners: $banners, parents: $parents, description: $description, productsCount: $productsCount, children: $children)';
}


}

/// @nodoc
abstract mixin class $CategoryResponseModelCopyWith<$Res>  {
  factory $CategoryResponseModelCopyWith(CategoryResponseModel value, $Res Function(CategoryResponseModel) _then) = _$CategoryResponseModelCopyWithImpl;
@useResult
$Res call({
 CategoryModel? category, String? header, List<CategoryBannerModel>? banners, List<CategoryModel>? parents, String? description, int? productsCount, List<CategoryModel>? children
});


$CategoryModelCopyWith<$Res>? get category;

}
/// @nodoc
class _$CategoryResponseModelCopyWithImpl<$Res>
    implements $CategoryResponseModelCopyWith<$Res> {
  _$CategoryResponseModelCopyWithImpl(this._self, this._then);

  final CategoryResponseModel _self;
  final $Res Function(CategoryResponseModel) _then;

/// Create a copy of CategoryResponseModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? category = freezed,Object? header = freezed,Object? banners = freezed,Object? parents = freezed,Object? description = freezed,Object? productsCount = freezed,Object? children = freezed,}) {
  return _then(_self.copyWith(
category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as CategoryModel?,header: freezed == header ? _self.header : header // ignore: cast_nullable_to_non_nullable
as String?,banners: freezed == banners ? _self.banners : banners // ignore: cast_nullable_to_non_nullable
as List<CategoryBannerModel>?,parents: freezed == parents ? _self.parents : parents // ignore: cast_nullable_to_non_nullable
as List<CategoryModel>?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,productsCount: freezed == productsCount ? _self.productsCount : productsCount // ignore: cast_nullable_to_non_nullable
as int?,children: freezed == children ? _self.children : children // ignore: cast_nullable_to_non_nullable
as List<CategoryModel>?,
  ));
}
/// Create a copy of CategoryResponseModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CategoryModelCopyWith<$Res>? get category {
    if (_self.category == null) {
    return null;
  }

  return $CategoryModelCopyWith<$Res>(_self.category!, (value) {
    return _then(_self.copyWith(category: value));
  });
}
}


/// Adds pattern-matching-related methods to [CategoryResponseModel].
extension CategoryResponseModelPatterns on CategoryResponseModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CategoryResponseModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CategoryResponseModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CategoryResponseModel value)  $default,){
final _that = this;
switch (_that) {
case _CategoryResponseModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CategoryResponseModel value)?  $default,){
final _that = this;
switch (_that) {
case _CategoryResponseModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( CategoryModel? category,  String? header,  List<CategoryBannerModel>? banners,  List<CategoryModel>? parents,  String? description,  int? productsCount,  List<CategoryModel>? children)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CategoryResponseModel() when $default != null:
return $default(_that.category,_that.header,_that.banners,_that.parents,_that.description,_that.productsCount,_that.children);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( CategoryModel? category,  String? header,  List<CategoryBannerModel>? banners,  List<CategoryModel>? parents,  String? description,  int? productsCount,  List<CategoryModel>? children)  $default,) {final _that = this;
switch (_that) {
case _CategoryResponseModel():
return $default(_that.category,_that.header,_that.banners,_that.parents,_that.description,_that.productsCount,_that.children);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( CategoryModel? category,  String? header,  List<CategoryBannerModel>? banners,  List<CategoryModel>? parents,  String? description,  int? productsCount,  List<CategoryModel>? children)?  $default,) {final _that = this;
switch (_that) {
case _CategoryResponseModel() when $default != null:
return $default(_that.category,_that.header,_that.banners,_that.parents,_that.description,_that.productsCount,_that.children);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CategoryResponseModel implements CategoryResponseModel {
  const _CategoryResponseModel({this.category, this.header, final  List<CategoryBannerModel>? banners, final  List<CategoryModel>? parents, this.description, this.productsCount, final  List<CategoryModel>? children}): _banners = banners,_parents = parents,_children = children;
  factory _CategoryResponseModel.fromJson(Map<String, dynamic> json) => _$CategoryResponseModelFromJson(json);

@override final  CategoryModel? category;
@override final  String? header;
 final  List<CategoryBannerModel>? _banners;
@override List<CategoryBannerModel>? get banners {
  final value = _banners;
  if (value == null) return null;
  if (_banners is EqualUnmodifiableListView) return _banners;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<CategoryModel>? _parents;
@override List<CategoryModel>? get parents {
  final value = _parents;
  if (value == null) return null;
  if (_parents is EqualUnmodifiableListView) return _parents;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  String? description;
@override final  int? productsCount;
 final  List<CategoryModel>? _children;
@override List<CategoryModel>? get children {
  final value = _children;
  if (value == null) return null;
  if (_children is EqualUnmodifiableListView) return _children;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of CategoryResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CategoryResponseModelCopyWith<_CategoryResponseModel> get copyWith => __$CategoryResponseModelCopyWithImpl<_CategoryResponseModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CategoryResponseModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CategoryResponseModel&&(identical(other.category, category) || other.category == category)&&(identical(other.header, header) || other.header == header)&&const DeepCollectionEquality().equals(other._banners, _banners)&&const DeepCollectionEquality().equals(other._parents, _parents)&&(identical(other.description, description) || other.description == description)&&(identical(other.productsCount, productsCount) || other.productsCount == productsCount)&&const DeepCollectionEquality().equals(other._children, _children));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,category,header,const DeepCollectionEquality().hash(_banners),const DeepCollectionEquality().hash(_parents),description,productsCount,const DeepCollectionEquality().hash(_children));

@override
String toString() {
  return 'CategoryResponseModel(category: $category, header: $header, banners: $banners, parents: $parents, description: $description, productsCount: $productsCount, children: $children)';
}


}

/// @nodoc
abstract mixin class _$CategoryResponseModelCopyWith<$Res> implements $CategoryResponseModelCopyWith<$Res> {
  factory _$CategoryResponseModelCopyWith(_CategoryResponseModel value, $Res Function(_CategoryResponseModel) _then) = __$CategoryResponseModelCopyWithImpl;
@override @useResult
$Res call({
 CategoryModel? category, String? header, List<CategoryBannerModel>? banners, List<CategoryModel>? parents, String? description, int? productsCount, List<CategoryModel>? children
});


@override $CategoryModelCopyWith<$Res>? get category;

}
/// @nodoc
class __$CategoryResponseModelCopyWithImpl<$Res>
    implements _$CategoryResponseModelCopyWith<$Res> {
  __$CategoryResponseModelCopyWithImpl(this._self, this._then);

  final _CategoryResponseModel _self;
  final $Res Function(_CategoryResponseModel) _then;

/// Create a copy of CategoryResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? category = freezed,Object? header = freezed,Object? banners = freezed,Object? parents = freezed,Object? description = freezed,Object? productsCount = freezed,Object? children = freezed,}) {
  return _then(_CategoryResponseModel(
category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as CategoryModel?,header: freezed == header ? _self.header : header // ignore: cast_nullable_to_non_nullable
as String?,banners: freezed == banners ? _self._banners : banners // ignore: cast_nullable_to_non_nullable
as List<CategoryBannerModel>?,parents: freezed == parents ? _self._parents : parents // ignore: cast_nullable_to_non_nullable
as List<CategoryModel>?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,productsCount: freezed == productsCount ? _self.productsCount : productsCount // ignore: cast_nullable_to_non_nullable
as int?,children: freezed == children ? _self._children : children // ignore: cast_nullable_to_non_nullable
as List<CategoryModel>?,
  ));
}

/// Create a copy of CategoryResponseModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CategoryModelCopyWith<$Res>? get category {
    if (_self.category == null) {
    return null;
  }

  return $CategoryModelCopyWith<$Res>(_self.category!, (value) {
    return _then(_self.copyWith(category: value));
  });
}
}


/// @nodoc
mixin _$CategoryModel {

 String? get name; String? get slug; int? get level;
/// Create a copy of CategoryModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CategoryModelCopyWith<CategoryModel> get copyWith => _$CategoryModelCopyWithImpl<CategoryModel>(this as CategoryModel, _$identity);

  /// Serializes this CategoryModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CategoryModel&&(identical(other.name, name) || other.name == name)&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.level, level) || other.level == level));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,slug,level);

@override
String toString() {
  return 'CategoryModel(name: $name, slug: $slug, level: $level)';
}


}

/// @nodoc
abstract mixin class $CategoryModelCopyWith<$Res>  {
  factory $CategoryModelCopyWith(CategoryModel value, $Res Function(CategoryModel) _then) = _$CategoryModelCopyWithImpl;
@useResult
$Res call({
 String? name, String? slug, int? level
});




}
/// @nodoc
class _$CategoryModelCopyWithImpl<$Res>
    implements $CategoryModelCopyWith<$Res> {
  _$CategoryModelCopyWithImpl(this._self, this._then);

  final CategoryModel _self;
  final $Res Function(CategoryModel) _then;

/// Create a copy of CategoryModel
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


/// Adds pattern-matching-related methods to [CategoryModel].
extension CategoryModelPatterns on CategoryModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CategoryModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CategoryModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CategoryModel value)  $default,){
final _that = this;
switch (_that) {
case _CategoryModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CategoryModel value)?  $default,){
final _that = this;
switch (_that) {
case _CategoryModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? name,  String? slug,  int? level)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CategoryModel() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? name,  String? slug,  int? level)  $default,) {final _that = this;
switch (_that) {
case _CategoryModel():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? name,  String? slug,  int? level)?  $default,) {final _that = this;
switch (_that) {
case _CategoryModel() when $default != null:
return $default(_that.name,_that.slug,_that.level);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CategoryModel implements CategoryModel {
  const _CategoryModel({this.name, this.slug, this.level});
  factory _CategoryModel.fromJson(Map<String, dynamic> json) => _$CategoryModelFromJson(json);

@override final  String? name;
@override final  String? slug;
@override final  int? level;

/// Create a copy of CategoryModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CategoryModelCopyWith<_CategoryModel> get copyWith => __$CategoryModelCopyWithImpl<_CategoryModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CategoryModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CategoryModel&&(identical(other.name, name) || other.name == name)&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.level, level) || other.level == level));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,slug,level);

@override
String toString() {
  return 'CategoryModel(name: $name, slug: $slug, level: $level)';
}


}

/// @nodoc
abstract mixin class _$CategoryModelCopyWith<$Res> implements $CategoryModelCopyWith<$Res> {
  factory _$CategoryModelCopyWith(_CategoryModel value, $Res Function(_CategoryModel) _then) = __$CategoryModelCopyWithImpl;
@override @useResult
$Res call({
 String? name, String? slug, int? level
});




}
/// @nodoc
class __$CategoryModelCopyWithImpl<$Res>
    implements _$CategoryModelCopyWith<$Res> {
  __$CategoryModelCopyWithImpl(this._self, this._then);

  final _CategoryModel _self;
  final $Res Function(_CategoryModel) _then;

/// Create a copy of CategoryModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = freezed,Object? slug = freezed,Object? level = freezed,}) {
  return _then(_CategoryModel(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,slug: freezed == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String?,level: freezed == level ? _self.level : level // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}


/// @nodoc
mixin _$CategoryBannerModel {

 String? get url; String? get smallImage; String? get mediumImage; String? get largeImage; String? get name;
/// Create a copy of CategoryBannerModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CategoryBannerModelCopyWith<CategoryBannerModel> get copyWith => _$CategoryBannerModelCopyWithImpl<CategoryBannerModel>(this as CategoryBannerModel, _$identity);

  /// Serializes this CategoryBannerModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CategoryBannerModel&&(identical(other.url, url) || other.url == url)&&(identical(other.smallImage, smallImage) || other.smallImage == smallImage)&&(identical(other.mediumImage, mediumImage) || other.mediumImage == mediumImage)&&(identical(other.largeImage, largeImage) || other.largeImage == largeImage)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,url,smallImage,mediumImage,largeImage,name);

@override
String toString() {
  return 'CategoryBannerModel(url: $url, smallImage: $smallImage, mediumImage: $mediumImage, largeImage: $largeImage, name: $name)';
}


}

/// @nodoc
abstract mixin class $CategoryBannerModelCopyWith<$Res>  {
  factory $CategoryBannerModelCopyWith(CategoryBannerModel value, $Res Function(CategoryBannerModel) _then) = _$CategoryBannerModelCopyWithImpl;
@useResult
$Res call({
 String? url, String? smallImage, String? mediumImage, String? largeImage, String? name
});




}
/// @nodoc
class _$CategoryBannerModelCopyWithImpl<$Res>
    implements $CategoryBannerModelCopyWith<$Res> {
  _$CategoryBannerModelCopyWithImpl(this._self, this._then);

  final CategoryBannerModel _self;
  final $Res Function(CategoryBannerModel) _then;

/// Create a copy of CategoryBannerModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? url = freezed,Object? smallImage = freezed,Object? mediumImage = freezed,Object? largeImage = freezed,Object? name = freezed,}) {
  return _then(_self.copyWith(
url: freezed == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String?,smallImage: freezed == smallImage ? _self.smallImage : smallImage // ignore: cast_nullable_to_non_nullable
as String?,mediumImage: freezed == mediumImage ? _self.mediumImage : mediumImage // ignore: cast_nullable_to_non_nullable
as String?,largeImage: freezed == largeImage ? _self.largeImage : largeImage // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [CategoryBannerModel].
extension CategoryBannerModelPatterns on CategoryBannerModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CategoryBannerModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CategoryBannerModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CategoryBannerModel value)  $default,){
final _that = this;
switch (_that) {
case _CategoryBannerModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CategoryBannerModel value)?  $default,){
final _that = this;
switch (_that) {
case _CategoryBannerModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? url,  String? smallImage,  String? mediumImage,  String? largeImage,  String? name)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CategoryBannerModel() when $default != null:
return $default(_that.url,_that.smallImage,_that.mediumImage,_that.largeImage,_that.name);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? url,  String? smallImage,  String? mediumImage,  String? largeImage,  String? name)  $default,) {final _that = this;
switch (_that) {
case _CategoryBannerModel():
return $default(_that.url,_that.smallImage,_that.mediumImage,_that.largeImage,_that.name);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? url,  String? smallImage,  String? mediumImage,  String? largeImage,  String? name)?  $default,) {final _that = this;
switch (_that) {
case _CategoryBannerModel() when $default != null:
return $default(_that.url,_that.smallImage,_that.mediumImage,_that.largeImage,_that.name);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CategoryBannerModel implements CategoryBannerModel {
  const _CategoryBannerModel({this.url, this.smallImage, this.mediumImage, this.largeImage, this.name});
  factory _CategoryBannerModel.fromJson(Map<String, dynamic> json) => _$CategoryBannerModelFromJson(json);

@override final  String? url;
@override final  String? smallImage;
@override final  String? mediumImage;
@override final  String? largeImage;
@override final  String? name;

/// Create a copy of CategoryBannerModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CategoryBannerModelCopyWith<_CategoryBannerModel> get copyWith => __$CategoryBannerModelCopyWithImpl<_CategoryBannerModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CategoryBannerModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CategoryBannerModel&&(identical(other.url, url) || other.url == url)&&(identical(other.smallImage, smallImage) || other.smallImage == smallImage)&&(identical(other.mediumImage, mediumImage) || other.mediumImage == mediumImage)&&(identical(other.largeImage, largeImage) || other.largeImage == largeImage)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,url,smallImage,mediumImage,largeImage,name);

@override
String toString() {
  return 'CategoryBannerModel(url: $url, smallImage: $smallImage, mediumImage: $mediumImage, largeImage: $largeImage, name: $name)';
}


}

/// @nodoc
abstract mixin class _$CategoryBannerModelCopyWith<$Res> implements $CategoryBannerModelCopyWith<$Res> {
  factory _$CategoryBannerModelCopyWith(_CategoryBannerModel value, $Res Function(_CategoryBannerModel) _then) = __$CategoryBannerModelCopyWithImpl;
@override @useResult
$Res call({
 String? url, String? smallImage, String? mediumImage, String? largeImage, String? name
});




}
/// @nodoc
class __$CategoryBannerModelCopyWithImpl<$Res>
    implements _$CategoryBannerModelCopyWith<$Res> {
  __$CategoryBannerModelCopyWithImpl(this._self, this._then);

  final _CategoryBannerModel _self;
  final $Res Function(_CategoryBannerModel) _then;

/// Create a copy of CategoryBannerModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? url = freezed,Object? smallImage = freezed,Object? mediumImage = freezed,Object? largeImage = freezed,Object? name = freezed,}) {
  return _then(_CategoryBannerModel(
url: freezed == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String?,smallImage: freezed == smallImage ? _self.smallImage : smallImage // ignore: cast_nullable_to_non_nullable
as String?,mediumImage: freezed == mediumImage ? _self.mediumImage : mediumImage // ignore: cast_nullable_to_non_nullable
as String?,largeImage: freezed == largeImage ? _self.largeImage : largeImage // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
