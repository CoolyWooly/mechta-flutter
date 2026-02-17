// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ProductModel {

@JsonKey(name: 'id') String? get id;@JsonKey(name: 'name') String? get name;@JsonKey(name: 'slug') String? get slug;@JsonKey(name: 'code') String? get code;@JsonKey(name: 'numericId') int? get numericId;@JsonKey(name: 'images') List<String> get images;@JsonKey(name: 'preview') String? get preview;@JsonKey(name: 'availability') String? get availability;@JsonKey(name: 'preorder') PreorderModel? get preorder;@JsonKey(name: 'prices') PriceModel? get prices;@JsonKey(name: 'stickers') List<StickerModel> get stickers;@JsonKey(name: 'mainProperties') List<PropertyModel> get mainProperties;@JsonKey(name: 'categories') List<ProductCategoryModel> get categories;@JsonKey(name: 'rating') RatingModel? get rating;@JsonKey(name: 'shipment') ShipmentModel? get shipment;@JsonKey(name: 'propertyGroups') List<PropertyGroupModel> get propertyGroups;@JsonKey(name: 'metrics') MetricsModel? get metrics;@JsonKey(name: 'onlyShopwindow') bool? get isShowcase;@JsonKey(name: 'videos') List<String> get videos;@JsonKey(name: 'tradeInAvailable') bool? get tradeInAvailable;@JsonKey(name: 'marketplaces') List<String> get marketplaces;
/// Create a copy of ProductModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductModelCopyWith<ProductModel> get copyWith => _$ProductModelCopyWithImpl<ProductModel>(this as ProductModel, _$identity);

  /// Serializes this ProductModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.code, code) || other.code == code)&&(identical(other.numericId, numericId) || other.numericId == numericId)&&const DeepCollectionEquality().equals(other.images, images)&&(identical(other.preview, preview) || other.preview == preview)&&(identical(other.availability, availability) || other.availability == availability)&&(identical(other.preorder, preorder) || other.preorder == preorder)&&(identical(other.prices, prices) || other.prices == prices)&&const DeepCollectionEquality().equals(other.stickers, stickers)&&const DeepCollectionEquality().equals(other.mainProperties, mainProperties)&&const DeepCollectionEquality().equals(other.categories, categories)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.shipment, shipment) || other.shipment == shipment)&&const DeepCollectionEquality().equals(other.propertyGroups, propertyGroups)&&(identical(other.metrics, metrics) || other.metrics == metrics)&&(identical(other.isShowcase, isShowcase) || other.isShowcase == isShowcase)&&const DeepCollectionEquality().equals(other.videos, videos)&&(identical(other.tradeInAvailable, tradeInAvailable) || other.tradeInAvailable == tradeInAvailable)&&const DeepCollectionEquality().equals(other.marketplaces, marketplaces));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,name,slug,code,numericId,const DeepCollectionEquality().hash(images),preview,availability,preorder,prices,const DeepCollectionEquality().hash(stickers),const DeepCollectionEquality().hash(mainProperties),const DeepCollectionEquality().hash(categories),rating,shipment,const DeepCollectionEquality().hash(propertyGroups),metrics,isShowcase,const DeepCollectionEquality().hash(videos),tradeInAvailable,const DeepCollectionEquality().hash(marketplaces)]);

@override
String toString() {
  return 'ProductModel(id: $id, name: $name, slug: $slug, code: $code, numericId: $numericId, images: $images, preview: $preview, availability: $availability, preorder: $preorder, prices: $prices, stickers: $stickers, mainProperties: $mainProperties, categories: $categories, rating: $rating, shipment: $shipment, propertyGroups: $propertyGroups, metrics: $metrics, isShowcase: $isShowcase, videos: $videos, tradeInAvailable: $tradeInAvailable, marketplaces: $marketplaces)';
}


}

/// @nodoc
abstract mixin class $ProductModelCopyWith<$Res>  {
  factory $ProductModelCopyWith(ProductModel value, $Res Function(ProductModel) _then) = _$ProductModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') String? id,@JsonKey(name: 'name') String? name,@JsonKey(name: 'slug') String? slug,@JsonKey(name: 'code') String? code,@JsonKey(name: 'numericId') int? numericId,@JsonKey(name: 'images') List<String> images,@JsonKey(name: 'preview') String? preview,@JsonKey(name: 'availability') String? availability,@JsonKey(name: 'preorder') PreorderModel? preorder,@JsonKey(name: 'prices') PriceModel? prices,@JsonKey(name: 'stickers') List<StickerModel> stickers,@JsonKey(name: 'mainProperties') List<PropertyModel> mainProperties,@JsonKey(name: 'categories') List<ProductCategoryModel> categories,@JsonKey(name: 'rating') RatingModel? rating,@JsonKey(name: 'shipment') ShipmentModel? shipment,@JsonKey(name: 'propertyGroups') List<PropertyGroupModel> propertyGroups,@JsonKey(name: 'metrics') MetricsModel? metrics,@JsonKey(name: 'onlyShopwindow') bool? isShowcase,@JsonKey(name: 'videos') List<String> videos,@JsonKey(name: 'tradeInAvailable') bool? tradeInAvailable,@JsonKey(name: 'marketplaces') List<String> marketplaces
});


$PreorderModelCopyWith<$Res>? get preorder;$PriceModelCopyWith<$Res>? get prices;$RatingModelCopyWith<$Res>? get rating;$ShipmentModelCopyWith<$Res>? get shipment;$MetricsModelCopyWith<$Res>? get metrics;

}
/// @nodoc
class _$ProductModelCopyWithImpl<$Res>
    implements $ProductModelCopyWith<$Res> {
  _$ProductModelCopyWithImpl(this._self, this._then);

  final ProductModel _self;
  final $Res Function(ProductModel) _then;

/// Create a copy of ProductModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? name = freezed,Object? slug = freezed,Object? code = freezed,Object? numericId = freezed,Object? images = null,Object? preview = freezed,Object? availability = freezed,Object? preorder = freezed,Object? prices = freezed,Object? stickers = null,Object? mainProperties = null,Object? categories = null,Object? rating = freezed,Object? shipment = freezed,Object? propertyGroups = null,Object? metrics = freezed,Object? isShowcase = freezed,Object? videos = null,Object? tradeInAvailable = freezed,Object? marketplaces = null,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,slug: freezed == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String?,code: freezed == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String?,numericId: freezed == numericId ? _self.numericId : numericId // ignore: cast_nullable_to_non_nullable
as int?,images: null == images ? _self.images : images // ignore: cast_nullable_to_non_nullable
as List<String>,preview: freezed == preview ? _self.preview : preview // ignore: cast_nullable_to_non_nullable
as String?,availability: freezed == availability ? _self.availability : availability // ignore: cast_nullable_to_non_nullable
as String?,preorder: freezed == preorder ? _self.preorder : preorder // ignore: cast_nullable_to_non_nullable
as PreorderModel?,prices: freezed == prices ? _self.prices : prices // ignore: cast_nullable_to_non_nullable
as PriceModel?,stickers: null == stickers ? _self.stickers : stickers // ignore: cast_nullable_to_non_nullable
as List<StickerModel>,mainProperties: null == mainProperties ? _self.mainProperties : mainProperties // ignore: cast_nullable_to_non_nullable
as List<PropertyModel>,categories: null == categories ? _self.categories : categories // ignore: cast_nullable_to_non_nullable
as List<ProductCategoryModel>,rating: freezed == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as RatingModel?,shipment: freezed == shipment ? _self.shipment : shipment // ignore: cast_nullable_to_non_nullable
as ShipmentModel?,propertyGroups: null == propertyGroups ? _self.propertyGroups : propertyGroups // ignore: cast_nullable_to_non_nullable
as List<PropertyGroupModel>,metrics: freezed == metrics ? _self.metrics : metrics // ignore: cast_nullable_to_non_nullable
as MetricsModel?,isShowcase: freezed == isShowcase ? _self.isShowcase : isShowcase // ignore: cast_nullable_to_non_nullable
as bool?,videos: null == videos ? _self.videos : videos // ignore: cast_nullable_to_non_nullable
as List<String>,tradeInAvailable: freezed == tradeInAvailable ? _self.tradeInAvailable : tradeInAvailable // ignore: cast_nullable_to_non_nullable
as bool?,marketplaces: null == marketplaces ? _self.marketplaces : marketplaces // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}
/// Create a copy of ProductModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PreorderModelCopyWith<$Res>? get preorder {
    if (_self.preorder == null) {
    return null;
  }

  return $PreorderModelCopyWith<$Res>(_self.preorder!, (value) {
    return _then(_self.copyWith(preorder: value));
  });
}/// Create a copy of ProductModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PriceModelCopyWith<$Res>? get prices {
    if (_self.prices == null) {
    return null;
  }

  return $PriceModelCopyWith<$Res>(_self.prices!, (value) {
    return _then(_self.copyWith(prices: value));
  });
}/// Create a copy of ProductModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RatingModelCopyWith<$Res>? get rating {
    if (_self.rating == null) {
    return null;
  }

  return $RatingModelCopyWith<$Res>(_self.rating!, (value) {
    return _then(_self.copyWith(rating: value));
  });
}/// Create a copy of ProductModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ShipmentModelCopyWith<$Res>? get shipment {
    if (_self.shipment == null) {
    return null;
  }

  return $ShipmentModelCopyWith<$Res>(_self.shipment!, (value) {
    return _then(_self.copyWith(shipment: value));
  });
}/// Create a copy of ProductModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MetricsModelCopyWith<$Res>? get metrics {
    if (_self.metrics == null) {
    return null;
  }

  return $MetricsModelCopyWith<$Res>(_self.metrics!, (value) {
    return _then(_self.copyWith(metrics: value));
  });
}
}


/// Adds pattern-matching-related methods to [ProductModel].
extension ProductModelPatterns on ProductModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProductModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProductModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProductModel value)  $default,){
final _that = this;
switch (_that) {
case _ProductModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProductModel value)?  $default,){
final _that = this;
switch (_that) {
case _ProductModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  String? id, @JsonKey(name: 'name')  String? name, @JsonKey(name: 'slug')  String? slug, @JsonKey(name: 'code')  String? code, @JsonKey(name: 'numericId')  int? numericId, @JsonKey(name: 'images')  List<String> images, @JsonKey(name: 'preview')  String? preview, @JsonKey(name: 'availability')  String? availability, @JsonKey(name: 'preorder')  PreorderModel? preorder, @JsonKey(name: 'prices')  PriceModel? prices, @JsonKey(name: 'stickers')  List<StickerModel> stickers, @JsonKey(name: 'mainProperties')  List<PropertyModel> mainProperties, @JsonKey(name: 'categories')  List<ProductCategoryModel> categories, @JsonKey(name: 'rating')  RatingModel? rating, @JsonKey(name: 'shipment')  ShipmentModel? shipment, @JsonKey(name: 'propertyGroups')  List<PropertyGroupModel> propertyGroups, @JsonKey(name: 'metrics')  MetricsModel? metrics, @JsonKey(name: 'onlyShopwindow')  bool? isShowcase, @JsonKey(name: 'videos')  List<String> videos, @JsonKey(name: 'tradeInAvailable')  bool? tradeInAvailable, @JsonKey(name: 'marketplaces')  List<String> marketplaces)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProductModel() when $default != null:
return $default(_that.id,_that.name,_that.slug,_that.code,_that.numericId,_that.images,_that.preview,_that.availability,_that.preorder,_that.prices,_that.stickers,_that.mainProperties,_that.categories,_that.rating,_that.shipment,_that.propertyGroups,_that.metrics,_that.isShowcase,_that.videos,_that.tradeInAvailable,_that.marketplaces);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  String? id, @JsonKey(name: 'name')  String? name, @JsonKey(name: 'slug')  String? slug, @JsonKey(name: 'code')  String? code, @JsonKey(name: 'numericId')  int? numericId, @JsonKey(name: 'images')  List<String> images, @JsonKey(name: 'preview')  String? preview, @JsonKey(name: 'availability')  String? availability, @JsonKey(name: 'preorder')  PreorderModel? preorder, @JsonKey(name: 'prices')  PriceModel? prices, @JsonKey(name: 'stickers')  List<StickerModel> stickers, @JsonKey(name: 'mainProperties')  List<PropertyModel> mainProperties, @JsonKey(name: 'categories')  List<ProductCategoryModel> categories, @JsonKey(name: 'rating')  RatingModel? rating, @JsonKey(name: 'shipment')  ShipmentModel? shipment, @JsonKey(name: 'propertyGroups')  List<PropertyGroupModel> propertyGroups, @JsonKey(name: 'metrics')  MetricsModel? metrics, @JsonKey(name: 'onlyShopwindow')  bool? isShowcase, @JsonKey(name: 'videos')  List<String> videos, @JsonKey(name: 'tradeInAvailable')  bool? tradeInAvailable, @JsonKey(name: 'marketplaces')  List<String> marketplaces)  $default,) {final _that = this;
switch (_that) {
case _ProductModel():
return $default(_that.id,_that.name,_that.slug,_that.code,_that.numericId,_that.images,_that.preview,_that.availability,_that.preorder,_that.prices,_that.stickers,_that.mainProperties,_that.categories,_that.rating,_that.shipment,_that.propertyGroups,_that.metrics,_that.isShowcase,_that.videos,_that.tradeInAvailable,_that.marketplaces);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id')  String? id, @JsonKey(name: 'name')  String? name, @JsonKey(name: 'slug')  String? slug, @JsonKey(name: 'code')  String? code, @JsonKey(name: 'numericId')  int? numericId, @JsonKey(name: 'images')  List<String> images, @JsonKey(name: 'preview')  String? preview, @JsonKey(name: 'availability')  String? availability, @JsonKey(name: 'preorder')  PreorderModel? preorder, @JsonKey(name: 'prices')  PriceModel? prices, @JsonKey(name: 'stickers')  List<StickerModel> stickers, @JsonKey(name: 'mainProperties')  List<PropertyModel> mainProperties, @JsonKey(name: 'categories')  List<ProductCategoryModel> categories, @JsonKey(name: 'rating')  RatingModel? rating, @JsonKey(name: 'shipment')  ShipmentModel? shipment, @JsonKey(name: 'propertyGroups')  List<PropertyGroupModel> propertyGroups, @JsonKey(name: 'metrics')  MetricsModel? metrics, @JsonKey(name: 'onlyShopwindow')  bool? isShowcase, @JsonKey(name: 'videos')  List<String> videos, @JsonKey(name: 'tradeInAvailable')  bool? tradeInAvailable, @JsonKey(name: 'marketplaces')  List<String> marketplaces)?  $default,) {final _that = this;
switch (_that) {
case _ProductModel() when $default != null:
return $default(_that.id,_that.name,_that.slug,_that.code,_that.numericId,_that.images,_that.preview,_that.availability,_that.preorder,_that.prices,_that.stickers,_that.mainProperties,_that.categories,_that.rating,_that.shipment,_that.propertyGroups,_that.metrics,_that.isShowcase,_that.videos,_that.tradeInAvailable,_that.marketplaces);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ProductModel extends ProductModel {
  const _ProductModel({@JsonKey(name: 'id') this.id, @JsonKey(name: 'name') this.name, @JsonKey(name: 'slug') this.slug, @JsonKey(name: 'code') this.code, @JsonKey(name: 'numericId') this.numericId, @JsonKey(name: 'images') final  List<String> images = const [], @JsonKey(name: 'preview') this.preview, @JsonKey(name: 'availability') this.availability, @JsonKey(name: 'preorder') this.preorder, @JsonKey(name: 'prices') this.prices, @JsonKey(name: 'stickers') final  List<StickerModel> stickers = const [], @JsonKey(name: 'mainProperties') final  List<PropertyModel> mainProperties = const [], @JsonKey(name: 'categories') final  List<ProductCategoryModel> categories = const [], @JsonKey(name: 'rating') this.rating, @JsonKey(name: 'shipment') this.shipment, @JsonKey(name: 'propertyGroups') final  List<PropertyGroupModel> propertyGroups = const [], @JsonKey(name: 'metrics') this.metrics, @JsonKey(name: 'onlyShopwindow') this.isShowcase, @JsonKey(name: 'videos') final  List<String> videos = const [], @JsonKey(name: 'tradeInAvailable') this.tradeInAvailable, @JsonKey(name: 'marketplaces') final  List<String> marketplaces = const []}): _images = images,_stickers = stickers,_mainProperties = mainProperties,_categories = categories,_propertyGroups = propertyGroups,_videos = videos,_marketplaces = marketplaces,super._();
  factory _ProductModel.fromJson(Map<String, dynamic> json) => _$ProductModelFromJson(json);

@override@JsonKey(name: 'id') final  String? id;
@override@JsonKey(name: 'name') final  String? name;
@override@JsonKey(name: 'slug') final  String? slug;
@override@JsonKey(name: 'code') final  String? code;
@override@JsonKey(name: 'numericId') final  int? numericId;
 final  List<String> _images;
@override@JsonKey(name: 'images') List<String> get images {
  if (_images is EqualUnmodifiableListView) return _images;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_images);
}

@override@JsonKey(name: 'preview') final  String? preview;
@override@JsonKey(name: 'availability') final  String? availability;
@override@JsonKey(name: 'preorder') final  PreorderModel? preorder;
@override@JsonKey(name: 'prices') final  PriceModel? prices;
 final  List<StickerModel> _stickers;
@override@JsonKey(name: 'stickers') List<StickerModel> get stickers {
  if (_stickers is EqualUnmodifiableListView) return _stickers;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_stickers);
}

 final  List<PropertyModel> _mainProperties;
@override@JsonKey(name: 'mainProperties') List<PropertyModel> get mainProperties {
  if (_mainProperties is EqualUnmodifiableListView) return _mainProperties;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_mainProperties);
}

 final  List<ProductCategoryModel> _categories;
@override@JsonKey(name: 'categories') List<ProductCategoryModel> get categories {
  if (_categories is EqualUnmodifiableListView) return _categories;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_categories);
}

@override@JsonKey(name: 'rating') final  RatingModel? rating;
@override@JsonKey(name: 'shipment') final  ShipmentModel? shipment;
 final  List<PropertyGroupModel> _propertyGroups;
@override@JsonKey(name: 'propertyGroups') List<PropertyGroupModel> get propertyGroups {
  if (_propertyGroups is EqualUnmodifiableListView) return _propertyGroups;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_propertyGroups);
}

@override@JsonKey(name: 'metrics') final  MetricsModel? metrics;
@override@JsonKey(name: 'onlyShopwindow') final  bool? isShowcase;
 final  List<String> _videos;
@override@JsonKey(name: 'videos') List<String> get videos {
  if (_videos is EqualUnmodifiableListView) return _videos;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_videos);
}

@override@JsonKey(name: 'tradeInAvailable') final  bool? tradeInAvailable;
 final  List<String> _marketplaces;
@override@JsonKey(name: 'marketplaces') List<String> get marketplaces {
  if (_marketplaces is EqualUnmodifiableListView) return _marketplaces;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_marketplaces);
}


/// Create a copy of ProductModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductModelCopyWith<_ProductModel> get copyWith => __$ProductModelCopyWithImpl<_ProductModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProductModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.code, code) || other.code == code)&&(identical(other.numericId, numericId) || other.numericId == numericId)&&const DeepCollectionEquality().equals(other._images, _images)&&(identical(other.preview, preview) || other.preview == preview)&&(identical(other.availability, availability) || other.availability == availability)&&(identical(other.preorder, preorder) || other.preorder == preorder)&&(identical(other.prices, prices) || other.prices == prices)&&const DeepCollectionEquality().equals(other._stickers, _stickers)&&const DeepCollectionEquality().equals(other._mainProperties, _mainProperties)&&const DeepCollectionEquality().equals(other._categories, _categories)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.shipment, shipment) || other.shipment == shipment)&&const DeepCollectionEquality().equals(other._propertyGroups, _propertyGroups)&&(identical(other.metrics, metrics) || other.metrics == metrics)&&(identical(other.isShowcase, isShowcase) || other.isShowcase == isShowcase)&&const DeepCollectionEquality().equals(other._videos, _videos)&&(identical(other.tradeInAvailable, tradeInAvailable) || other.tradeInAvailable == tradeInAvailable)&&const DeepCollectionEquality().equals(other._marketplaces, _marketplaces));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,name,slug,code,numericId,const DeepCollectionEquality().hash(_images),preview,availability,preorder,prices,const DeepCollectionEquality().hash(_stickers),const DeepCollectionEquality().hash(_mainProperties),const DeepCollectionEquality().hash(_categories),rating,shipment,const DeepCollectionEquality().hash(_propertyGroups),metrics,isShowcase,const DeepCollectionEquality().hash(_videos),tradeInAvailable,const DeepCollectionEquality().hash(_marketplaces)]);

@override
String toString() {
  return 'ProductModel(id: $id, name: $name, slug: $slug, code: $code, numericId: $numericId, images: $images, preview: $preview, availability: $availability, preorder: $preorder, prices: $prices, stickers: $stickers, mainProperties: $mainProperties, categories: $categories, rating: $rating, shipment: $shipment, propertyGroups: $propertyGroups, metrics: $metrics, isShowcase: $isShowcase, videos: $videos, tradeInAvailable: $tradeInAvailable, marketplaces: $marketplaces)';
}


}

/// @nodoc
abstract mixin class _$ProductModelCopyWith<$Res> implements $ProductModelCopyWith<$Res> {
  factory _$ProductModelCopyWith(_ProductModel value, $Res Function(_ProductModel) _then) = __$ProductModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') String? id,@JsonKey(name: 'name') String? name,@JsonKey(name: 'slug') String? slug,@JsonKey(name: 'code') String? code,@JsonKey(name: 'numericId') int? numericId,@JsonKey(name: 'images') List<String> images,@JsonKey(name: 'preview') String? preview,@JsonKey(name: 'availability') String? availability,@JsonKey(name: 'preorder') PreorderModel? preorder,@JsonKey(name: 'prices') PriceModel? prices,@JsonKey(name: 'stickers') List<StickerModel> stickers,@JsonKey(name: 'mainProperties') List<PropertyModel> mainProperties,@JsonKey(name: 'categories') List<ProductCategoryModel> categories,@JsonKey(name: 'rating') RatingModel? rating,@JsonKey(name: 'shipment') ShipmentModel? shipment,@JsonKey(name: 'propertyGroups') List<PropertyGroupModel> propertyGroups,@JsonKey(name: 'metrics') MetricsModel? metrics,@JsonKey(name: 'onlyShopwindow') bool? isShowcase,@JsonKey(name: 'videos') List<String> videos,@JsonKey(name: 'tradeInAvailable') bool? tradeInAvailable,@JsonKey(name: 'marketplaces') List<String> marketplaces
});


@override $PreorderModelCopyWith<$Res>? get preorder;@override $PriceModelCopyWith<$Res>? get prices;@override $RatingModelCopyWith<$Res>? get rating;@override $ShipmentModelCopyWith<$Res>? get shipment;@override $MetricsModelCopyWith<$Res>? get metrics;

}
/// @nodoc
class __$ProductModelCopyWithImpl<$Res>
    implements _$ProductModelCopyWith<$Res> {
  __$ProductModelCopyWithImpl(this._self, this._then);

  final _ProductModel _self;
  final $Res Function(_ProductModel) _then;

/// Create a copy of ProductModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? name = freezed,Object? slug = freezed,Object? code = freezed,Object? numericId = freezed,Object? images = null,Object? preview = freezed,Object? availability = freezed,Object? preorder = freezed,Object? prices = freezed,Object? stickers = null,Object? mainProperties = null,Object? categories = null,Object? rating = freezed,Object? shipment = freezed,Object? propertyGroups = null,Object? metrics = freezed,Object? isShowcase = freezed,Object? videos = null,Object? tradeInAvailable = freezed,Object? marketplaces = null,}) {
  return _then(_ProductModel(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,slug: freezed == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String?,code: freezed == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String?,numericId: freezed == numericId ? _self.numericId : numericId // ignore: cast_nullable_to_non_nullable
as int?,images: null == images ? _self._images : images // ignore: cast_nullable_to_non_nullable
as List<String>,preview: freezed == preview ? _self.preview : preview // ignore: cast_nullable_to_non_nullable
as String?,availability: freezed == availability ? _self.availability : availability // ignore: cast_nullable_to_non_nullable
as String?,preorder: freezed == preorder ? _self.preorder : preorder // ignore: cast_nullable_to_non_nullable
as PreorderModel?,prices: freezed == prices ? _self.prices : prices // ignore: cast_nullable_to_non_nullable
as PriceModel?,stickers: null == stickers ? _self._stickers : stickers // ignore: cast_nullable_to_non_nullable
as List<StickerModel>,mainProperties: null == mainProperties ? _self._mainProperties : mainProperties // ignore: cast_nullable_to_non_nullable
as List<PropertyModel>,categories: null == categories ? _self._categories : categories // ignore: cast_nullable_to_non_nullable
as List<ProductCategoryModel>,rating: freezed == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as RatingModel?,shipment: freezed == shipment ? _self.shipment : shipment // ignore: cast_nullable_to_non_nullable
as ShipmentModel?,propertyGroups: null == propertyGroups ? _self._propertyGroups : propertyGroups // ignore: cast_nullable_to_non_nullable
as List<PropertyGroupModel>,metrics: freezed == metrics ? _self.metrics : metrics // ignore: cast_nullable_to_non_nullable
as MetricsModel?,isShowcase: freezed == isShowcase ? _self.isShowcase : isShowcase // ignore: cast_nullable_to_non_nullable
as bool?,videos: null == videos ? _self._videos : videos // ignore: cast_nullable_to_non_nullable
as List<String>,tradeInAvailable: freezed == tradeInAvailable ? _self.tradeInAvailable : tradeInAvailable // ignore: cast_nullable_to_non_nullable
as bool?,marketplaces: null == marketplaces ? _self._marketplaces : marketplaces // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

/// Create a copy of ProductModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PreorderModelCopyWith<$Res>? get preorder {
    if (_self.preorder == null) {
    return null;
  }

  return $PreorderModelCopyWith<$Res>(_self.preorder!, (value) {
    return _then(_self.copyWith(preorder: value));
  });
}/// Create a copy of ProductModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PriceModelCopyWith<$Res>? get prices {
    if (_self.prices == null) {
    return null;
  }

  return $PriceModelCopyWith<$Res>(_self.prices!, (value) {
    return _then(_self.copyWith(prices: value));
  });
}/// Create a copy of ProductModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RatingModelCopyWith<$Res>? get rating {
    if (_self.rating == null) {
    return null;
  }

  return $RatingModelCopyWith<$Res>(_self.rating!, (value) {
    return _then(_self.copyWith(rating: value));
  });
}/// Create a copy of ProductModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ShipmentModelCopyWith<$Res>? get shipment {
    if (_self.shipment == null) {
    return null;
  }

  return $ShipmentModelCopyWith<$Res>(_self.shipment!, (value) {
    return _then(_self.copyWith(shipment: value));
  });
}/// Create a copy of ProductModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MetricsModelCopyWith<$Res>? get metrics {
    if (_self.metrics == null) {
    return null;
  }

  return $MetricsModelCopyWith<$Res>(_self.metrics!, (value) {
    return _then(_self.copyWith(metrics: value));
  });
}
}

// dart format on
