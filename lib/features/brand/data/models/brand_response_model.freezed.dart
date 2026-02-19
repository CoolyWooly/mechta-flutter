// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'brand_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BrandResponseModel {

@JsonKey(name: 'banners') List<BrandBannerModel>? get banners;@JsonKey(name: 'categories') List<BrandCategoryModel>? get categories;@JsonKey(name: 'actions') List<PromotionModel>? get promotions;@JsonKey(name: 'new_items') List<LegacyProductModel>? get newProducts;@JsonKey(name: 'recommended_items') List<LegacyProductModel>? get recommendedProducts;
/// Create a copy of BrandResponseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BrandResponseModelCopyWith<BrandResponseModel> get copyWith => _$BrandResponseModelCopyWithImpl<BrandResponseModel>(this as BrandResponseModel, _$identity);

  /// Serializes this BrandResponseModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BrandResponseModel&&const DeepCollectionEquality().equals(other.banners, banners)&&const DeepCollectionEquality().equals(other.categories, categories)&&const DeepCollectionEquality().equals(other.promotions, promotions)&&const DeepCollectionEquality().equals(other.newProducts, newProducts)&&const DeepCollectionEquality().equals(other.recommendedProducts, recommendedProducts));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(banners),const DeepCollectionEquality().hash(categories),const DeepCollectionEquality().hash(promotions),const DeepCollectionEquality().hash(newProducts),const DeepCollectionEquality().hash(recommendedProducts));

@override
String toString() {
  return 'BrandResponseModel(banners: $banners, categories: $categories, promotions: $promotions, newProducts: $newProducts, recommendedProducts: $recommendedProducts)';
}


}

/// @nodoc
abstract mixin class $BrandResponseModelCopyWith<$Res>  {
  factory $BrandResponseModelCopyWith(BrandResponseModel value, $Res Function(BrandResponseModel) _then) = _$BrandResponseModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'banners') List<BrandBannerModel>? banners,@JsonKey(name: 'categories') List<BrandCategoryModel>? categories,@JsonKey(name: 'actions') List<PromotionModel>? promotions,@JsonKey(name: 'new_items') List<LegacyProductModel>? newProducts,@JsonKey(name: 'recommended_items') List<LegacyProductModel>? recommendedProducts
});




}
/// @nodoc
class _$BrandResponseModelCopyWithImpl<$Res>
    implements $BrandResponseModelCopyWith<$Res> {
  _$BrandResponseModelCopyWithImpl(this._self, this._then);

  final BrandResponseModel _self;
  final $Res Function(BrandResponseModel) _then;

/// Create a copy of BrandResponseModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? banners = freezed,Object? categories = freezed,Object? promotions = freezed,Object? newProducts = freezed,Object? recommendedProducts = freezed,}) {
  return _then(_self.copyWith(
banners: freezed == banners ? _self.banners : banners // ignore: cast_nullable_to_non_nullable
as List<BrandBannerModel>?,categories: freezed == categories ? _self.categories : categories // ignore: cast_nullable_to_non_nullable
as List<BrandCategoryModel>?,promotions: freezed == promotions ? _self.promotions : promotions // ignore: cast_nullable_to_non_nullable
as List<PromotionModel>?,newProducts: freezed == newProducts ? _self.newProducts : newProducts // ignore: cast_nullable_to_non_nullable
as List<LegacyProductModel>?,recommendedProducts: freezed == recommendedProducts ? _self.recommendedProducts : recommendedProducts // ignore: cast_nullable_to_non_nullable
as List<LegacyProductModel>?,
  ));
}

}


/// Adds pattern-matching-related methods to [BrandResponseModel].
extension BrandResponseModelPatterns on BrandResponseModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BrandResponseModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BrandResponseModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BrandResponseModel value)  $default,){
final _that = this;
switch (_that) {
case _BrandResponseModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BrandResponseModel value)?  $default,){
final _that = this;
switch (_that) {
case _BrandResponseModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'banners')  List<BrandBannerModel>? banners, @JsonKey(name: 'categories')  List<BrandCategoryModel>? categories, @JsonKey(name: 'actions')  List<PromotionModel>? promotions, @JsonKey(name: 'new_items')  List<LegacyProductModel>? newProducts, @JsonKey(name: 'recommended_items')  List<LegacyProductModel>? recommendedProducts)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BrandResponseModel() when $default != null:
return $default(_that.banners,_that.categories,_that.promotions,_that.newProducts,_that.recommendedProducts);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'banners')  List<BrandBannerModel>? banners, @JsonKey(name: 'categories')  List<BrandCategoryModel>? categories, @JsonKey(name: 'actions')  List<PromotionModel>? promotions, @JsonKey(name: 'new_items')  List<LegacyProductModel>? newProducts, @JsonKey(name: 'recommended_items')  List<LegacyProductModel>? recommendedProducts)  $default,) {final _that = this;
switch (_that) {
case _BrandResponseModel():
return $default(_that.banners,_that.categories,_that.promotions,_that.newProducts,_that.recommendedProducts);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'banners')  List<BrandBannerModel>? banners, @JsonKey(name: 'categories')  List<BrandCategoryModel>? categories, @JsonKey(name: 'actions')  List<PromotionModel>? promotions, @JsonKey(name: 'new_items')  List<LegacyProductModel>? newProducts, @JsonKey(name: 'recommended_items')  List<LegacyProductModel>? recommendedProducts)?  $default,) {final _that = this;
switch (_that) {
case _BrandResponseModel() when $default != null:
return $default(_that.banners,_that.categories,_that.promotions,_that.newProducts,_that.recommendedProducts);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BrandResponseModel extends BrandResponseModel {
  const _BrandResponseModel({@JsonKey(name: 'banners') final  List<BrandBannerModel>? banners, @JsonKey(name: 'categories') final  List<BrandCategoryModel>? categories, @JsonKey(name: 'actions') final  List<PromotionModel>? promotions, @JsonKey(name: 'new_items') final  List<LegacyProductModel>? newProducts, @JsonKey(name: 'recommended_items') final  List<LegacyProductModel>? recommendedProducts}): _banners = banners,_categories = categories,_promotions = promotions,_newProducts = newProducts,_recommendedProducts = recommendedProducts,super._();
  factory _BrandResponseModel.fromJson(Map<String, dynamic> json) => _$BrandResponseModelFromJson(json);

 final  List<BrandBannerModel>? _banners;
@override@JsonKey(name: 'banners') List<BrandBannerModel>? get banners {
  final value = _banners;
  if (value == null) return null;
  if (_banners is EqualUnmodifiableListView) return _banners;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<BrandCategoryModel>? _categories;
@override@JsonKey(name: 'categories') List<BrandCategoryModel>? get categories {
  final value = _categories;
  if (value == null) return null;
  if (_categories is EqualUnmodifiableListView) return _categories;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<PromotionModel>? _promotions;
@override@JsonKey(name: 'actions') List<PromotionModel>? get promotions {
  final value = _promotions;
  if (value == null) return null;
  if (_promotions is EqualUnmodifiableListView) return _promotions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<LegacyProductModel>? _newProducts;
@override@JsonKey(name: 'new_items') List<LegacyProductModel>? get newProducts {
  final value = _newProducts;
  if (value == null) return null;
  if (_newProducts is EqualUnmodifiableListView) return _newProducts;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<LegacyProductModel>? _recommendedProducts;
@override@JsonKey(name: 'recommended_items') List<LegacyProductModel>? get recommendedProducts {
  final value = _recommendedProducts;
  if (value == null) return null;
  if (_recommendedProducts is EqualUnmodifiableListView) return _recommendedProducts;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of BrandResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BrandResponseModelCopyWith<_BrandResponseModel> get copyWith => __$BrandResponseModelCopyWithImpl<_BrandResponseModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BrandResponseModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BrandResponseModel&&const DeepCollectionEquality().equals(other._banners, _banners)&&const DeepCollectionEquality().equals(other._categories, _categories)&&const DeepCollectionEquality().equals(other._promotions, _promotions)&&const DeepCollectionEquality().equals(other._newProducts, _newProducts)&&const DeepCollectionEquality().equals(other._recommendedProducts, _recommendedProducts));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_banners),const DeepCollectionEquality().hash(_categories),const DeepCollectionEquality().hash(_promotions),const DeepCollectionEquality().hash(_newProducts),const DeepCollectionEquality().hash(_recommendedProducts));

@override
String toString() {
  return 'BrandResponseModel(banners: $banners, categories: $categories, promotions: $promotions, newProducts: $newProducts, recommendedProducts: $recommendedProducts)';
}


}

/// @nodoc
abstract mixin class _$BrandResponseModelCopyWith<$Res> implements $BrandResponseModelCopyWith<$Res> {
  factory _$BrandResponseModelCopyWith(_BrandResponseModel value, $Res Function(_BrandResponseModel) _then) = __$BrandResponseModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'banners') List<BrandBannerModel>? banners,@JsonKey(name: 'categories') List<BrandCategoryModel>? categories,@JsonKey(name: 'actions') List<PromotionModel>? promotions,@JsonKey(name: 'new_items') List<LegacyProductModel>? newProducts,@JsonKey(name: 'recommended_items') List<LegacyProductModel>? recommendedProducts
});




}
/// @nodoc
class __$BrandResponseModelCopyWithImpl<$Res>
    implements _$BrandResponseModelCopyWith<$Res> {
  __$BrandResponseModelCopyWithImpl(this._self, this._then);

  final _BrandResponseModel _self;
  final $Res Function(_BrandResponseModel) _then;

/// Create a copy of BrandResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? banners = freezed,Object? categories = freezed,Object? promotions = freezed,Object? newProducts = freezed,Object? recommendedProducts = freezed,}) {
  return _then(_BrandResponseModel(
banners: freezed == banners ? _self._banners : banners // ignore: cast_nullable_to_non_nullable
as List<BrandBannerModel>?,categories: freezed == categories ? _self._categories : categories // ignore: cast_nullable_to_non_nullable
as List<BrandCategoryModel>?,promotions: freezed == promotions ? _self._promotions : promotions // ignore: cast_nullable_to_non_nullable
as List<PromotionModel>?,newProducts: freezed == newProducts ? _self._newProducts : newProducts // ignore: cast_nullable_to_non_nullable
as List<LegacyProductModel>?,recommendedProducts: freezed == recommendedProducts ? _self._recommendedProducts : recommendedProducts // ignore: cast_nullable_to_non_nullable
as List<LegacyProductModel>?,
  ));
}


}


/// @nodoc
mixin _$BrandBannerModel {

 String? get name; String? get url; int? get sort; BrandBannerImagesModel? get images;
/// Create a copy of BrandBannerModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BrandBannerModelCopyWith<BrandBannerModel> get copyWith => _$BrandBannerModelCopyWithImpl<BrandBannerModel>(this as BrandBannerModel, _$identity);

  /// Serializes this BrandBannerModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BrandBannerModel&&(identical(other.name, name) || other.name == name)&&(identical(other.url, url) || other.url == url)&&(identical(other.sort, sort) || other.sort == sort)&&(identical(other.images, images) || other.images == images));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,url,sort,images);

@override
String toString() {
  return 'BrandBannerModel(name: $name, url: $url, sort: $sort, images: $images)';
}


}

/// @nodoc
abstract mixin class $BrandBannerModelCopyWith<$Res>  {
  factory $BrandBannerModelCopyWith(BrandBannerModel value, $Res Function(BrandBannerModel) _then) = _$BrandBannerModelCopyWithImpl;
@useResult
$Res call({
 String? name, String? url, int? sort, BrandBannerImagesModel? images
});


$BrandBannerImagesModelCopyWith<$Res>? get images;

}
/// @nodoc
class _$BrandBannerModelCopyWithImpl<$Res>
    implements $BrandBannerModelCopyWith<$Res> {
  _$BrandBannerModelCopyWithImpl(this._self, this._then);

  final BrandBannerModel _self;
  final $Res Function(BrandBannerModel) _then;

/// Create a copy of BrandBannerModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = freezed,Object? url = freezed,Object? sort = freezed,Object? images = freezed,}) {
  return _then(_self.copyWith(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,url: freezed == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String?,sort: freezed == sort ? _self.sort : sort // ignore: cast_nullable_to_non_nullable
as int?,images: freezed == images ? _self.images : images // ignore: cast_nullable_to_non_nullable
as BrandBannerImagesModel?,
  ));
}
/// Create a copy of BrandBannerModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BrandBannerImagesModelCopyWith<$Res>? get images {
    if (_self.images == null) {
    return null;
  }

  return $BrandBannerImagesModelCopyWith<$Res>(_self.images!, (value) {
    return _then(_self.copyWith(images: value));
  });
}
}


/// Adds pattern-matching-related methods to [BrandBannerModel].
extension BrandBannerModelPatterns on BrandBannerModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BrandBannerModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BrandBannerModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BrandBannerModel value)  $default,){
final _that = this;
switch (_that) {
case _BrandBannerModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BrandBannerModel value)?  $default,){
final _that = this;
switch (_that) {
case _BrandBannerModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? name,  String? url,  int? sort,  BrandBannerImagesModel? images)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BrandBannerModel() when $default != null:
return $default(_that.name,_that.url,_that.sort,_that.images);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? name,  String? url,  int? sort,  BrandBannerImagesModel? images)  $default,) {final _that = this;
switch (_that) {
case _BrandBannerModel():
return $default(_that.name,_that.url,_that.sort,_that.images);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? name,  String? url,  int? sort,  BrandBannerImagesModel? images)?  $default,) {final _that = this;
switch (_that) {
case _BrandBannerModel() when $default != null:
return $default(_that.name,_that.url,_that.sort,_that.images);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BrandBannerModel extends BrandBannerModel {
  const _BrandBannerModel({this.name, this.url, this.sort, this.images}): super._();
  factory _BrandBannerModel.fromJson(Map<String, dynamic> json) => _$BrandBannerModelFromJson(json);

@override final  String? name;
@override final  String? url;
@override final  int? sort;
@override final  BrandBannerImagesModel? images;

/// Create a copy of BrandBannerModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BrandBannerModelCopyWith<_BrandBannerModel> get copyWith => __$BrandBannerModelCopyWithImpl<_BrandBannerModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BrandBannerModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BrandBannerModel&&(identical(other.name, name) || other.name == name)&&(identical(other.url, url) || other.url == url)&&(identical(other.sort, sort) || other.sort == sort)&&(identical(other.images, images) || other.images == images));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,url,sort,images);

@override
String toString() {
  return 'BrandBannerModel(name: $name, url: $url, sort: $sort, images: $images)';
}


}

/// @nodoc
abstract mixin class _$BrandBannerModelCopyWith<$Res> implements $BrandBannerModelCopyWith<$Res> {
  factory _$BrandBannerModelCopyWith(_BrandBannerModel value, $Res Function(_BrandBannerModel) _then) = __$BrandBannerModelCopyWithImpl;
@override @useResult
$Res call({
 String? name, String? url, int? sort, BrandBannerImagesModel? images
});


@override $BrandBannerImagesModelCopyWith<$Res>? get images;

}
/// @nodoc
class __$BrandBannerModelCopyWithImpl<$Res>
    implements _$BrandBannerModelCopyWith<$Res> {
  __$BrandBannerModelCopyWithImpl(this._self, this._then);

  final _BrandBannerModel _self;
  final $Res Function(_BrandBannerModel) _then;

/// Create a copy of BrandBannerModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = freezed,Object? url = freezed,Object? sort = freezed,Object? images = freezed,}) {
  return _then(_BrandBannerModel(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,url: freezed == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String?,sort: freezed == sort ? _self.sort : sort // ignore: cast_nullable_to_non_nullable
as int?,images: freezed == images ? _self.images : images // ignore: cast_nullable_to_non_nullable
as BrandBannerImagesModel?,
  ));
}

/// Create a copy of BrandBannerModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BrandBannerImagesModelCopyWith<$Res>? get images {
    if (_self.images == null) {
    return null;
  }

  return $BrandBannerImagesModelCopyWith<$Res>(_self.images!, (value) {
    return _then(_self.copyWith(images: value));
  });
}
}


/// @nodoc
mixin _$BrandBannerImagesModel {

 String? get mobile; String? get tablet; String? get desktop;
/// Create a copy of BrandBannerImagesModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BrandBannerImagesModelCopyWith<BrandBannerImagesModel> get copyWith => _$BrandBannerImagesModelCopyWithImpl<BrandBannerImagesModel>(this as BrandBannerImagesModel, _$identity);

  /// Serializes this BrandBannerImagesModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BrandBannerImagesModel&&(identical(other.mobile, mobile) || other.mobile == mobile)&&(identical(other.tablet, tablet) || other.tablet == tablet)&&(identical(other.desktop, desktop) || other.desktop == desktop));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,mobile,tablet,desktop);

@override
String toString() {
  return 'BrandBannerImagesModel(mobile: $mobile, tablet: $tablet, desktop: $desktop)';
}


}

/// @nodoc
abstract mixin class $BrandBannerImagesModelCopyWith<$Res>  {
  factory $BrandBannerImagesModelCopyWith(BrandBannerImagesModel value, $Res Function(BrandBannerImagesModel) _then) = _$BrandBannerImagesModelCopyWithImpl;
@useResult
$Res call({
 String? mobile, String? tablet, String? desktop
});




}
/// @nodoc
class _$BrandBannerImagesModelCopyWithImpl<$Res>
    implements $BrandBannerImagesModelCopyWith<$Res> {
  _$BrandBannerImagesModelCopyWithImpl(this._self, this._then);

  final BrandBannerImagesModel _self;
  final $Res Function(BrandBannerImagesModel) _then;

/// Create a copy of BrandBannerImagesModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? mobile = freezed,Object? tablet = freezed,Object? desktop = freezed,}) {
  return _then(_self.copyWith(
mobile: freezed == mobile ? _self.mobile : mobile // ignore: cast_nullable_to_non_nullable
as String?,tablet: freezed == tablet ? _self.tablet : tablet // ignore: cast_nullable_to_non_nullable
as String?,desktop: freezed == desktop ? _self.desktop : desktop // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [BrandBannerImagesModel].
extension BrandBannerImagesModelPatterns on BrandBannerImagesModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BrandBannerImagesModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BrandBannerImagesModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BrandBannerImagesModel value)  $default,){
final _that = this;
switch (_that) {
case _BrandBannerImagesModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BrandBannerImagesModel value)?  $default,){
final _that = this;
switch (_that) {
case _BrandBannerImagesModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? mobile,  String? tablet,  String? desktop)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BrandBannerImagesModel() when $default != null:
return $default(_that.mobile,_that.tablet,_that.desktop);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? mobile,  String? tablet,  String? desktop)  $default,) {final _that = this;
switch (_that) {
case _BrandBannerImagesModel():
return $default(_that.mobile,_that.tablet,_that.desktop);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? mobile,  String? tablet,  String? desktop)?  $default,) {final _that = this;
switch (_that) {
case _BrandBannerImagesModel() when $default != null:
return $default(_that.mobile,_that.tablet,_that.desktop);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BrandBannerImagesModel implements BrandBannerImagesModel {
  const _BrandBannerImagesModel({this.mobile, this.tablet, this.desktop});
  factory _BrandBannerImagesModel.fromJson(Map<String, dynamic> json) => _$BrandBannerImagesModelFromJson(json);

@override final  String? mobile;
@override final  String? tablet;
@override final  String? desktop;

/// Create a copy of BrandBannerImagesModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BrandBannerImagesModelCopyWith<_BrandBannerImagesModel> get copyWith => __$BrandBannerImagesModelCopyWithImpl<_BrandBannerImagesModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BrandBannerImagesModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BrandBannerImagesModel&&(identical(other.mobile, mobile) || other.mobile == mobile)&&(identical(other.tablet, tablet) || other.tablet == tablet)&&(identical(other.desktop, desktop) || other.desktop == desktop));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,mobile,tablet,desktop);

@override
String toString() {
  return 'BrandBannerImagesModel(mobile: $mobile, tablet: $tablet, desktop: $desktop)';
}


}

/// @nodoc
abstract mixin class _$BrandBannerImagesModelCopyWith<$Res> implements $BrandBannerImagesModelCopyWith<$Res> {
  factory _$BrandBannerImagesModelCopyWith(_BrandBannerImagesModel value, $Res Function(_BrandBannerImagesModel) _then) = __$BrandBannerImagesModelCopyWithImpl;
@override @useResult
$Res call({
 String? mobile, String? tablet, String? desktop
});




}
/// @nodoc
class __$BrandBannerImagesModelCopyWithImpl<$Res>
    implements _$BrandBannerImagesModelCopyWith<$Res> {
  __$BrandBannerImagesModelCopyWithImpl(this._self, this._then);

  final _BrandBannerImagesModel _self;
  final $Res Function(_BrandBannerImagesModel) _then;

/// Create a copy of BrandBannerImagesModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? mobile = freezed,Object? tablet = freezed,Object? desktop = freezed,}) {
  return _then(_BrandBannerImagesModel(
mobile: freezed == mobile ? _self.mobile : mobile // ignore: cast_nullable_to_non_nullable
as String?,tablet: freezed == tablet ? _self.tablet : tablet // ignore: cast_nullable_to_non_nullable
as String?,desktop: freezed == desktop ? _self.desktop : desktop // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$BrandCategoryModel {

 String? get name; String? get url; BrandBannerImagesModel? get images; BrandCategoryLevelModel? get category;
/// Create a copy of BrandCategoryModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BrandCategoryModelCopyWith<BrandCategoryModel> get copyWith => _$BrandCategoryModelCopyWithImpl<BrandCategoryModel>(this as BrandCategoryModel, _$identity);

  /// Serializes this BrandCategoryModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BrandCategoryModel&&(identical(other.name, name) || other.name == name)&&(identical(other.url, url) || other.url == url)&&(identical(other.images, images) || other.images == images)&&(identical(other.category, category) || other.category == category));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,url,images,category);

@override
String toString() {
  return 'BrandCategoryModel(name: $name, url: $url, images: $images, category: $category)';
}


}

/// @nodoc
abstract mixin class $BrandCategoryModelCopyWith<$Res>  {
  factory $BrandCategoryModelCopyWith(BrandCategoryModel value, $Res Function(BrandCategoryModel) _then) = _$BrandCategoryModelCopyWithImpl;
@useResult
$Res call({
 String? name, String? url, BrandBannerImagesModel? images, BrandCategoryLevelModel? category
});


$BrandBannerImagesModelCopyWith<$Res>? get images;$BrandCategoryLevelModelCopyWith<$Res>? get category;

}
/// @nodoc
class _$BrandCategoryModelCopyWithImpl<$Res>
    implements $BrandCategoryModelCopyWith<$Res> {
  _$BrandCategoryModelCopyWithImpl(this._self, this._then);

  final BrandCategoryModel _self;
  final $Res Function(BrandCategoryModel) _then;

/// Create a copy of BrandCategoryModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = freezed,Object? url = freezed,Object? images = freezed,Object? category = freezed,}) {
  return _then(_self.copyWith(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,url: freezed == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String?,images: freezed == images ? _self.images : images // ignore: cast_nullable_to_non_nullable
as BrandBannerImagesModel?,category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as BrandCategoryLevelModel?,
  ));
}
/// Create a copy of BrandCategoryModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BrandBannerImagesModelCopyWith<$Res>? get images {
    if (_self.images == null) {
    return null;
  }

  return $BrandBannerImagesModelCopyWith<$Res>(_self.images!, (value) {
    return _then(_self.copyWith(images: value));
  });
}/// Create a copy of BrandCategoryModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BrandCategoryLevelModelCopyWith<$Res>? get category {
    if (_self.category == null) {
    return null;
  }

  return $BrandCategoryLevelModelCopyWith<$Res>(_self.category!, (value) {
    return _then(_self.copyWith(category: value));
  });
}
}


/// Adds pattern-matching-related methods to [BrandCategoryModel].
extension BrandCategoryModelPatterns on BrandCategoryModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BrandCategoryModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BrandCategoryModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BrandCategoryModel value)  $default,){
final _that = this;
switch (_that) {
case _BrandCategoryModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BrandCategoryModel value)?  $default,){
final _that = this;
switch (_that) {
case _BrandCategoryModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? name,  String? url,  BrandBannerImagesModel? images,  BrandCategoryLevelModel? category)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BrandCategoryModel() when $default != null:
return $default(_that.name,_that.url,_that.images,_that.category);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? name,  String? url,  BrandBannerImagesModel? images,  BrandCategoryLevelModel? category)  $default,) {final _that = this;
switch (_that) {
case _BrandCategoryModel():
return $default(_that.name,_that.url,_that.images,_that.category);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? name,  String? url,  BrandBannerImagesModel? images,  BrandCategoryLevelModel? category)?  $default,) {final _that = this;
switch (_that) {
case _BrandCategoryModel() when $default != null:
return $default(_that.name,_that.url,_that.images,_that.category);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BrandCategoryModel extends BrandCategoryModel {
  const _BrandCategoryModel({this.name, this.url, this.images, this.category}): super._();
  factory _BrandCategoryModel.fromJson(Map<String, dynamic> json) => _$BrandCategoryModelFromJson(json);

@override final  String? name;
@override final  String? url;
@override final  BrandBannerImagesModel? images;
@override final  BrandCategoryLevelModel? category;

/// Create a copy of BrandCategoryModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BrandCategoryModelCopyWith<_BrandCategoryModel> get copyWith => __$BrandCategoryModelCopyWithImpl<_BrandCategoryModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BrandCategoryModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BrandCategoryModel&&(identical(other.name, name) || other.name == name)&&(identical(other.url, url) || other.url == url)&&(identical(other.images, images) || other.images == images)&&(identical(other.category, category) || other.category == category));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,url,images,category);

@override
String toString() {
  return 'BrandCategoryModel(name: $name, url: $url, images: $images, category: $category)';
}


}

/// @nodoc
abstract mixin class _$BrandCategoryModelCopyWith<$Res> implements $BrandCategoryModelCopyWith<$Res> {
  factory _$BrandCategoryModelCopyWith(_BrandCategoryModel value, $Res Function(_BrandCategoryModel) _then) = __$BrandCategoryModelCopyWithImpl;
@override @useResult
$Res call({
 String? name, String? url, BrandBannerImagesModel? images, BrandCategoryLevelModel? category
});


@override $BrandBannerImagesModelCopyWith<$Res>? get images;@override $BrandCategoryLevelModelCopyWith<$Res>? get category;

}
/// @nodoc
class __$BrandCategoryModelCopyWithImpl<$Res>
    implements _$BrandCategoryModelCopyWith<$Res> {
  __$BrandCategoryModelCopyWithImpl(this._self, this._then);

  final _BrandCategoryModel _self;
  final $Res Function(_BrandCategoryModel) _then;

/// Create a copy of BrandCategoryModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = freezed,Object? url = freezed,Object? images = freezed,Object? category = freezed,}) {
  return _then(_BrandCategoryModel(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,url: freezed == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String?,images: freezed == images ? _self.images : images // ignore: cast_nullable_to_non_nullable
as BrandBannerImagesModel?,category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as BrandCategoryLevelModel?,
  ));
}

/// Create a copy of BrandCategoryModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BrandBannerImagesModelCopyWith<$Res>? get images {
    if (_self.images == null) {
    return null;
  }

  return $BrandBannerImagesModelCopyWith<$Res>(_self.images!, (value) {
    return _then(_self.copyWith(images: value));
  });
}/// Create a copy of BrandCategoryModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BrandCategoryLevelModelCopyWith<$Res>? get category {
    if (_self.category == null) {
    return null;
  }

  return $BrandCategoryLevelModelCopyWith<$Res>(_self.category!, (value) {
    return _then(_self.copyWith(category: value));
  });
}
}


/// @nodoc
mixin _$BrandCategoryLevelModel {

 String? get name; String? get slug; int? get level;
/// Create a copy of BrandCategoryLevelModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BrandCategoryLevelModelCopyWith<BrandCategoryLevelModel> get copyWith => _$BrandCategoryLevelModelCopyWithImpl<BrandCategoryLevelModel>(this as BrandCategoryLevelModel, _$identity);

  /// Serializes this BrandCategoryLevelModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BrandCategoryLevelModel&&(identical(other.name, name) || other.name == name)&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.level, level) || other.level == level));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,slug,level);

@override
String toString() {
  return 'BrandCategoryLevelModel(name: $name, slug: $slug, level: $level)';
}


}

/// @nodoc
abstract mixin class $BrandCategoryLevelModelCopyWith<$Res>  {
  factory $BrandCategoryLevelModelCopyWith(BrandCategoryLevelModel value, $Res Function(BrandCategoryLevelModel) _then) = _$BrandCategoryLevelModelCopyWithImpl;
@useResult
$Res call({
 String? name, String? slug, int? level
});




}
/// @nodoc
class _$BrandCategoryLevelModelCopyWithImpl<$Res>
    implements $BrandCategoryLevelModelCopyWith<$Res> {
  _$BrandCategoryLevelModelCopyWithImpl(this._self, this._then);

  final BrandCategoryLevelModel _self;
  final $Res Function(BrandCategoryLevelModel) _then;

/// Create a copy of BrandCategoryLevelModel
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


/// Adds pattern-matching-related methods to [BrandCategoryLevelModel].
extension BrandCategoryLevelModelPatterns on BrandCategoryLevelModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BrandCategoryLevelModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BrandCategoryLevelModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BrandCategoryLevelModel value)  $default,){
final _that = this;
switch (_that) {
case _BrandCategoryLevelModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BrandCategoryLevelModel value)?  $default,){
final _that = this;
switch (_that) {
case _BrandCategoryLevelModel() when $default != null:
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
case _BrandCategoryLevelModel() when $default != null:
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
case _BrandCategoryLevelModel():
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
case _BrandCategoryLevelModel() when $default != null:
return $default(_that.name,_that.slug,_that.level);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BrandCategoryLevelModel implements BrandCategoryLevelModel {
  const _BrandCategoryLevelModel({this.name, this.slug, this.level});
  factory _BrandCategoryLevelModel.fromJson(Map<String, dynamic> json) => _$BrandCategoryLevelModelFromJson(json);

@override final  String? name;
@override final  String? slug;
@override final  int? level;

/// Create a copy of BrandCategoryLevelModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BrandCategoryLevelModelCopyWith<_BrandCategoryLevelModel> get copyWith => __$BrandCategoryLevelModelCopyWithImpl<_BrandCategoryLevelModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BrandCategoryLevelModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BrandCategoryLevelModel&&(identical(other.name, name) || other.name == name)&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.level, level) || other.level == level));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,slug,level);

@override
String toString() {
  return 'BrandCategoryLevelModel(name: $name, slug: $slug, level: $level)';
}


}

/// @nodoc
abstract mixin class _$BrandCategoryLevelModelCopyWith<$Res> implements $BrandCategoryLevelModelCopyWith<$Res> {
  factory _$BrandCategoryLevelModelCopyWith(_BrandCategoryLevelModel value, $Res Function(_BrandCategoryLevelModel) _then) = __$BrandCategoryLevelModelCopyWithImpl;
@override @useResult
$Res call({
 String? name, String? slug, int? level
});




}
/// @nodoc
class __$BrandCategoryLevelModelCopyWithImpl<$Res>
    implements _$BrandCategoryLevelModelCopyWith<$Res> {
  __$BrandCategoryLevelModelCopyWithImpl(this._self, this._then);

  final _BrandCategoryLevelModel _self;
  final $Res Function(_BrandCategoryLevelModel) _then;

/// Create a copy of BrandCategoryLevelModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = freezed,Object? slug = freezed,Object? level = freezed,}) {
  return _then(_BrandCategoryLevelModel(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,slug: freezed == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String?,level: freezed == level ? _self.level : level // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
