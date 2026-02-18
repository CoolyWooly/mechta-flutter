// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'legacy_product_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LegacyProductModel {

 int? get id; String? get name; String? get code; int? get price; List<String> get photos; List<String> get gallery; String? get availability; LegacyPricesModel? get prices;
/// Create a copy of LegacyProductModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LegacyProductModelCopyWith<LegacyProductModel> get copyWith => _$LegacyProductModelCopyWithImpl<LegacyProductModel>(this as LegacyProductModel, _$identity);

  /// Serializes this LegacyProductModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LegacyProductModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.code, code) || other.code == code)&&(identical(other.price, price) || other.price == price)&&const DeepCollectionEquality().equals(other.photos, photos)&&const DeepCollectionEquality().equals(other.gallery, gallery)&&(identical(other.availability, availability) || other.availability == availability)&&(identical(other.prices, prices) || other.prices == prices));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,code,price,const DeepCollectionEquality().hash(photos),const DeepCollectionEquality().hash(gallery),availability,prices);

@override
String toString() {
  return 'LegacyProductModel(id: $id, name: $name, code: $code, price: $price, photos: $photos, gallery: $gallery, availability: $availability, prices: $prices)';
}


}

/// @nodoc
abstract mixin class $LegacyProductModelCopyWith<$Res>  {
  factory $LegacyProductModelCopyWith(LegacyProductModel value, $Res Function(LegacyProductModel) _then) = _$LegacyProductModelCopyWithImpl;
@useResult
$Res call({
 int? id, String? name, String? code, int? price, List<String> photos, List<String> gallery, String? availability, LegacyPricesModel? prices
});


$LegacyPricesModelCopyWith<$Res>? get prices;

}
/// @nodoc
class _$LegacyProductModelCopyWithImpl<$Res>
    implements $LegacyProductModelCopyWith<$Res> {
  _$LegacyProductModelCopyWithImpl(this._self, this._then);

  final LegacyProductModel _self;
  final $Res Function(LegacyProductModel) _then;

/// Create a copy of LegacyProductModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? name = freezed,Object? code = freezed,Object? price = freezed,Object? photos = null,Object? gallery = null,Object? availability = freezed,Object? prices = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,code: freezed == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String?,price: freezed == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as int?,photos: null == photos ? _self.photos : photos // ignore: cast_nullable_to_non_nullable
as List<String>,gallery: null == gallery ? _self.gallery : gallery // ignore: cast_nullable_to_non_nullable
as List<String>,availability: freezed == availability ? _self.availability : availability // ignore: cast_nullable_to_non_nullable
as String?,prices: freezed == prices ? _self.prices : prices // ignore: cast_nullable_to_non_nullable
as LegacyPricesModel?,
  ));
}
/// Create a copy of LegacyProductModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LegacyPricesModelCopyWith<$Res>? get prices {
    if (_self.prices == null) {
    return null;
  }

  return $LegacyPricesModelCopyWith<$Res>(_self.prices!, (value) {
    return _then(_self.copyWith(prices: value));
  });
}
}


/// Adds pattern-matching-related methods to [LegacyProductModel].
extension LegacyProductModelPatterns on LegacyProductModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LegacyProductModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LegacyProductModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LegacyProductModel value)  $default,){
final _that = this;
switch (_that) {
case _LegacyProductModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LegacyProductModel value)?  $default,){
final _that = this;
switch (_that) {
case _LegacyProductModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  String? name,  String? code,  int? price,  List<String> photos,  List<String> gallery,  String? availability,  LegacyPricesModel? prices)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LegacyProductModel() when $default != null:
return $default(_that.id,_that.name,_that.code,_that.price,_that.photos,_that.gallery,_that.availability,_that.prices);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  String? name,  String? code,  int? price,  List<String> photos,  List<String> gallery,  String? availability,  LegacyPricesModel? prices)  $default,) {final _that = this;
switch (_that) {
case _LegacyProductModel():
return $default(_that.id,_that.name,_that.code,_that.price,_that.photos,_that.gallery,_that.availability,_that.prices);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  String? name,  String? code,  int? price,  List<String> photos,  List<String> gallery,  String? availability,  LegacyPricesModel? prices)?  $default,) {final _that = this;
switch (_that) {
case _LegacyProductModel() when $default != null:
return $default(_that.id,_that.name,_that.code,_that.price,_that.photos,_that.gallery,_that.availability,_that.prices);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LegacyProductModel extends LegacyProductModel {
  const _LegacyProductModel({this.id, this.name, this.code, this.price, final  List<String> photos = const [], final  List<String> gallery = const [], this.availability, this.prices}): _photos = photos,_gallery = gallery,super._();
  factory _LegacyProductModel.fromJson(Map<String, dynamic> json) => _$LegacyProductModelFromJson(json);

@override final  int? id;
@override final  String? name;
@override final  String? code;
@override final  int? price;
 final  List<String> _photos;
@override@JsonKey() List<String> get photos {
  if (_photos is EqualUnmodifiableListView) return _photos;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_photos);
}

 final  List<String> _gallery;
@override@JsonKey() List<String> get gallery {
  if (_gallery is EqualUnmodifiableListView) return _gallery;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_gallery);
}

@override final  String? availability;
@override final  LegacyPricesModel? prices;

/// Create a copy of LegacyProductModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LegacyProductModelCopyWith<_LegacyProductModel> get copyWith => __$LegacyProductModelCopyWithImpl<_LegacyProductModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LegacyProductModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LegacyProductModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.code, code) || other.code == code)&&(identical(other.price, price) || other.price == price)&&const DeepCollectionEquality().equals(other._photos, _photos)&&const DeepCollectionEquality().equals(other._gallery, _gallery)&&(identical(other.availability, availability) || other.availability == availability)&&(identical(other.prices, prices) || other.prices == prices));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,code,price,const DeepCollectionEquality().hash(_photos),const DeepCollectionEquality().hash(_gallery),availability,prices);

@override
String toString() {
  return 'LegacyProductModel(id: $id, name: $name, code: $code, price: $price, photos: $photos, gallery: $gallery, availability: $availability, prices: $prices)';
}


}

/// @nodoc
abstract mixin class _$LegacyProductModelCopyWith<$Res> implements $LegacyProductModelCopyWith<$Res> {
  factory _$LegacyProductModelCopyWith(_LegacyProductModel value, $Res Function(_LegacyProductModel) _then) = __$LegacyProductModelCopyWithImpl;
@override @useResult
$Res call({
 int? id, String? name, String? code, int? price, List<String> photos, List<String> gallery, String? availability, LegacyPricesModel? prices
});


@override $LegacyPricesModelCopyWith<$Res>? get prices;

}
/// @nodoc
class __$LegacyProductModelCopyWithImpl<$Res>
    implements _$LegacyProductModelCopyWith<$Res> {
  __$LegacyProductModelCopyWithImpl(this._self, this._then);

  final _LegacyProductModel _self;
  final $Res Function(_LegacyProductModel) _then;

/// Create a copy of LegacyProductModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? name = freezed,Object? code = freezed,Object? price = freezed,Object? photos = null,Object? gallery = null,Object? availability = freezed,Object? prices = freezed,}) {
  return _then(_LegacyProductModel(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,code: freezed == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String?,price: freezed == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as int?,photos: null == photos ? _self._photos : photos // ignore: cast_nullable_to_non_nullable
as List<String>,gallery: null == gallery ? _self._gallery : gallery // ignore: cast_nullable_to_non_nullable
as List<String>,availability: freezed == availability ? _self.availability : availability // ignore: cast_nullable_to_non_nullable
as String?,prices: freezed == prices ? _self.prices : prices // ignore: cast_nullable_to_non_nullable
as LegacyPricesModel?,
  ));
}

/// Create a copy of LegacyProductModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LegacyPricesModelCopyWith<$Res>? get prices {
    if (_self.prices == null) {
    return null;
  }

  return $LegacyPricesModelCopyWith<$Res>(_self.prices!, (value) {
    return _then(_self.copyWith(prices: value));
  });
}
}


/// @nodoc
mixin _$LegacyPricesModel {

@JsonKey(name: 'discounted_price') int? get discountedPrice;@JsonKey(name: 'base_price') int? get basePrice;@JsonKey(name: 'has_discount') bool? get hasDiscount;
/// Create a copy of LegacyPricesModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LegacyPricesModelCopyWith<LegacyPricesModel> get copyWith => _$LegacyPricesModelCopyWithImpl<LegacyPricesModel>(this as LegacyPricesModel, _$identity);

  /// Serializes this LegacyPricesModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LegacyPricesModel&&(identical(other.discountedPrice, discountedPrice) || other.discountedPrice == discountedPrice)&&(identical(other.basePrice, basePrice) || other.basePrice == basePrice)&&(identical(other.hasDiscount, hasDiscount) || other.hasDiscount == hasDiscount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,discountedPrice,basePrice,hasDiscount);

@override
String toString() {
  return 'LegacyPricesModel(discountedPrice: $discountedPrice, basePrice: $basePrice, hasDiscount: $hasDiscount)';
}


}

/// @nodoc
abstract mixin class $LegacyPricesModelCopyWith<$Res>  {
  factory $LegacyPricesModelCopyWith(LegacyPricesModel value, $Res Function(LegacyPricesModel) _then) = _$LegacyPricesModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'discounted_price') int? discountedPrice,@JsonKey(name: 'base_price') int? basePrice,@JsonKey(name: 'has_discount') bool? hasDiscount
});




}
/// @nodoc
class _$LegacyPricesModelCopyWithImpl<$Res>
    implements $LegacyPricesModelCopyWith<$Res> {
  _$LegacyPricesModelCopyWithImpl(this._self, this._then);

  final LegacyPricesModel _self;
  final $Res Function(LegacyPricesModel) _then;

/// Create a copy of LegacyPricesModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? discountedPrice = freezed,Object? basePrice = freezed,Object? hasDiscount = freezed,}) {
  return _then(_self.copyWith(
discountedPrice: freezed == discountedPrice ? _self.discountedPrice : discountedPrice // ignore: cast_nullable_to_non_nullable
as int?,basePrice: freezed == basePrice ? _self.basePrice : basePrice // ignore: cast_nullable_to_non_nullable
as int?,hasDiscount: freezed == hasDiscount ? _self.hasDiscount : hasDiscount // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

}


/// Adds pattern-matching-related methods to [LegacyPricesModel].
extension LegacyPricesModelPatterns on LegacyPricesModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LegacyPricesModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LegacyPricesModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LegacyPricesModel value)  $default,){
final _that = this;
switch (_that) {
case _LegacyPricesModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LegacyPricesModel value)?  $default,){
final _that = this;
switch (_that) {
case _LegacyPricesModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'discounted_price')  int? discountedPrice, @JsonKey(name: 'base_price')  int? basePrice, @JsonKey(name: 'has_discount')  bool? hasDiscount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LegacyPricesModel() when $default != null:
return $default(_that.discountedPrice,_that.basePrice,_that.hasDiscount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'discounted_price')  int? discountedPrice, @JsonKey(name: 'base_price')  int? basePrice, @JsonKey(name: 'has_discount')  bool? hasDiscount)  $default,) {final _that = this;
switch (_that) {
case _LegacyPricesModel():
return $default(_that.discountedPrice,_that.basePrice,_that.hasDiscount);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'discounted_price')  int? discountedPrice, @JsonKey(name: 'base_price')  int? basePrice, @JsonKey(name: 'has_discount')  bool? hasDiscount)?  $default,) {final _that = this;
switch (_that) {
case _LegacyPricesModel() when $default != null:
return $default(_that.discountedPrice,_that.basePrice,_that.hasDiscount);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LegacyPricesModel implements LegacyPricesModel {
  const _LegacyPricesModel({@JsonKey(name: 'discounted_price') this.discountedPrice, @JsonKey(name: 'base_price') this.basePrice, @JsonKey(name: 'has_discount') this.hasDiscount});
  factory _LegacyPricesModel.fromJson(Map<String, dynamic> json) => _$LegacyPricesModelFromJson(json);

@override@JsonKey(name: 'discounted_price') final  int? discountedPrice;
@override@JsonKey(name: 'base_price') final  int? basePrice;
@override@JsonKey(name: 'has_discount') final  bool? hasDiscount;

/// Create a copy of LegacyPricesModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LegacyPricesModelCopyWith<_LegacyPricesModel> get copyWith => __$LegacyPricesModelCopyWithImpl<_LegacyPricesModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LegacyPricesModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LegacyPricesModel&&(identical(other.discountedPrice, discountedPrice) || other.discountedPrice == discountedPrice)&&(identical(other.basePrice, basePrice) || other.basePrice == basePrice)&&(identical(other.hasDiscount, hasDiscount) || other.hasDiscount == hasDiscount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,discountedPrice,basePrice,hasDiscount);

@override
String toString() {
  return 'LegacyPricesModel(discountedPrice: $discountedPrice, basePrice: $basePrice, hasDiscount: $hasDiscount)';
}


}

/// @nodoc
abstract mixin class _$LegacyPricesModelCopyWith<$Res> implements $LegacyPricesModelCopyWith<$Res> {
  factory _$LegacyPricesModelCopyWith(_LegacyPricesModel value, $Res Function(_LegacyPricesModel) _then) = __$LegacyPricesModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'discounted_price') int? discountedPrice,@JsonKey(name: 'base_price') int? basePrice,@JsonKey(name: 'has_discount') bool? hasDiscount
});




}
/// @nodoc
class __$LegacyPricesModelCopyWithImpl<$Res>
    implements _$LegacyPricesModelCopyWith<$Res> {
  __$LegacyPricesModelCopyWithImpl(this._self, this._then);

  final _LegacyPricesModel _self;
  final $Res Function(_LegacyPricesModel) _then;

/// Create a copy of LegacyPricesModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? discountedPrice = freezed,Object? basePrice = freezed,Object? hasDiscount = freezed,}) {
  return _then(_LegacyPricesModel(
discountedPrice: freezed == discountedPrice ? _self.discountedPrice : discountedPrice // ignore: cast_nullable_to_non_nullable
as int?,basePrice: freezed == basePrice ? _self.basePrice : basePrice // ignore: cast_nullable_to_non_nullable
as int?,hasDiscount: freezed == hasDiscount ? _self.hasDiscount : hasDiscount // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}

// dart format on
