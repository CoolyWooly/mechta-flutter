// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'filter_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$FiltersResponseModel {

@JsonKey(name: 'totalCount') int? get totalCount;@JsonKey(name: 'priceRange') PriceRangeModel? get priceRange;@JsonKey(name: 'properties') List<FilterPropertyModel>? get properties;@JsonKey(name: 'availableCategories') List<AvailableCategoryModel>? get availableCategories;
/// Create a copy of FiltersResponseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FiltersResponseModelCopyWith<FiltersResponseModel> get copyWith => _$FiltersResponseModelCopyWithImpl<FiltersResponseModel>(this as FiltersResponseModel, _$identity);

  /// Serializes this FiltersResponseModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FiltersResponseModel&&(identical(other.totalCount, totalCount) || other.totalCount == totalCount)&&(identical(other.priceRange, priceRange) || other.priceRange == priceRange)&&const DeepCollectionEquality().equals(other.properties, properties)&&const DeepCollectionEquality().equals(other.availableCategories, availableCategories));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,totalCount,priceRange,const DeepCollectionEquality().hash(properties),const DeepCollectionEquality().hash(availableCategories));

@override
String toString() {
  return 'FiltersResponseModel(totalCount: $totalCount, priceRange: $priceRange, properties: $properties, availableCategories: $availableCategories)';
}


}

/// @nodoc
abstract mixin class $FiltersResponseModelCopyWith<$Res>  {
  factory $FiltersResponseModelCopyWith(FiltersResponseModel value, $Res Function(FiltersResponseModel) _then) = _$FiltersResponseModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'totalCount') int? totalCount,@JsonKey(name: 'priceRange') PriceRangeModel? priceRange,@JsonKey(name: 'properties') List<FilterPropertyModel>? properties,@JsonKey(name: 'availableCategories') List<AvailableCategoryModel>? availableCategories
});


$PriceRangeModelCopyWith<$Res>? get priceRange;

}
/// @nodoc
class _$FiltersResponseModelCopyWithImpl<$Res>
    implements $FiltersResponseModelCopyWith<$Res> {
  _$FiltersResponseModelCopyWithImpl(this._self, this._then);

  final FiltersResponseModel _self;
  final $Res Function(FiltersResponseModel) _then;

/// Create a copy of FiltersResponseModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? totalCount = freezed,Object? priceRange = freezed,Object? properties = freezed,Object? availableCategories = freezed,}) {
  return _then(_self.copyWith(
totalCount: freezed == totalCount ? _self.totalCount : totalCount // ignore: cast_nullable_to_non_nullable
as int?,priceRange: freezed == priceRange ? _self.priceRange : priceRange // ignore: cast_nullable_to_non_nullable
as PriceRangeModel?,properties: freezed == properties ? _self.properties : properties // ignore: cast_nullable_to_non_nullable
as List<FilterPropertyModel>?,availableCategories: freezed == availableCategories ? _self.availableCategories : availableCategories // ignore: cast_nullable_to_non_nullable
as List<AvailableCategoryModel>?,
  ));
}
/// Create a copy of FiltersResponseModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PriceRangeModelCopyWith<$Res>? get priceRange {
    if (_self.priceRange == null) {
    return null;
  }

  return $PriceRangeModelCopyWith<$Res>(_self.priceRange!, (value) {
    return _then(_self.copyWith(priceRange: value));
  });
}
}


/// Adds pattern-matching-related methods to [FiltersResponseModel].
extension FiltersResponseModelPatterns on FiltersResponseModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FiltersResponseModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FiltersResponseModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FiltersResponseModel value)  $default,){
final _that = this;
switch (_that) {
case _FiltersResponseModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FiltersResponseModel value)?  $default,){
final _that = this;
switch (_that) {
case _FiltersResponseModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'totalCount')  int? totalCount, @JsonKey(name: 'priceRange')  PriceRangeModel? priceRange, @JsonKey(name: 'properties')  List<FilterPropertyModel>? properties, @JsonKey(name: 'availableCategories')  List<AvailableCategoryModel>? availableCategories)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FiltersResponseModel() when $default != null:
return $default(_that.totalCount,_that.priceRange,_that.properties,_that.availableCategories);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'totalCount')  int? totalCount, @JsonKey(name: 'priceRange')  PriceRangeModel? priceRange, @JsonKey(name: 'properties')  List<FilterPropertyModel>? properties, @JsonKey(name: 'availableCategories')  List<AvailableCategoryModel>? availableCategories)  $default,) {final _that = this;
switch (_that) {
case _FiltersResponseModel():
return $default(_that.totalCount,_that.priceRange,_that.properties,_that.availableCategories);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'totalCount')  int? totalCount, @JsonKey(name: 'priceRange')  PriceRangeModel? priceRange, @JsonKey(name: 'properties')  List<FilterPropertyModel>? properties, @JsonKey(name: 'availableCategories')  List<AvailableCategoryModel>? availableCategories)?  $default,) {final _that = this;
switch (_that) {
case _FiltersResponseModel() when $default != null:
return $default(_that.totalCount,_that.priceRange,_that.properties,_that.availableCategories);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FiltersResponseModel implements FiltersResponseModel {
  const _FiltersResponseModel({@JsonKey(name: 'totalCount') this.totalCount, @JsonKey(name: 'priceRange') this.priceRange, @JsonKey(name: 'properties') final  List<FilterPropertyModel>? properties, @JsonKey(name: 'availableCategories') final  List<AvailableCategoryModel>? availableCategories}): _properties = properties,_availableCategories = availableCategories;
  factory _FiltersResponseModel.fromJson(Map<String, dynamic> json) => _$FiltersResponseModelFromJson(json);

@override@JsonKey(name: 'totalCount') final  int? totalCount;
@override@JsonKey(name: 'priceRange') final  PriceRangeModel? priceRange;
 final  List<FilterPropertyModel>? _properties;
@override@JsonKey(name: 'properties') List<FilterPropertyModel>? get properties {
  final value = _properties;
  if (value == null) return null;
  if (_properties is EqualUnmodifiableListView) return _properties;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<AvailableCategoryModel>? _availableCategories;
@override@JsonKey(name: 'availableCategories') List<AvailableCategoryModel>? get availableCategories {
  final value = _availableCategories;
  if (value == null) return null;
  if (_availableCategories is EqualUnmodifiableListView) return _availableCategories;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of FiltersResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FiltersResponseModelCopyWith<_FiltersResponseModel> get copyWith => __$FiltersResponseModelCopyWithImpl<_FiltersResponseModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FiltersResponseModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FiltersResponseModel&&(identical(other.totalCount, totalCount) || other.totalCount == totalCount)&&(identical(other.priceRange, priceRange) || other.priceRange == priceRange)&&const DeepCollectionEquality().equals(other._properties, _properties)&&const DeepCollectionEquality().equals(other._availableCategories, _availableCategories));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,totalCount,priceRange,const DeepCollectionEquality().hash(_properties),const DeepCollectionEquality().hash(_availableCategories));

@override
String toString() {
  return 'FiltersResponseModel(totalCount: $totalCount, priceRange: $priceRange, properties: $properties, availableCategories: $availableCategories)';
}


}

/// @nodoc
abstract mixin class _$FiltersResponseModelCopyWith<$Res> implements $FiltersResponseModelCopyWith<$Res> {
  factory _$FiltersResponseModelCopyWith(_FiltersResponseModel value, $Res Function(_FiltersResponseModel) _then) = __$FiltersResponseModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'totalCount') int? totalCount,@JsonKey(name: 'priceRange') PriceRangeModel? priceRange,@JsonKey(name: 'properties') List<FilterPropertyModel>? properties,@JsonKey(name: 'availableCategories') List<AvailableCategoryModel>? availableCategories
});


@override $PriceRangeModelCopyWith<$Res>? get priceRange;

}
/// @nodoc
class __$FiltersResponseModelCopyWithImpl<$Res>
    implements _$FiltersResponseModelCopyWith<$Res> {
  __$FiltersResponseModelCopyWithImpl(this._self, this._then);

  final _FiltersResponseModel _self;
  final $Res Function(_FiltersResponseModel) _then;

/// Create a copy of FiltersResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? totalCount = freezed,Object? priceRange = freezed,Object? properties = freezed,Object? availableCategories = freezed,}) {
  return _then(_FiltersResponseModel(
totalCount: freezed == totalCount ? _self.totalCount : totalCount // ignore: cast_nullable_to_non_nullable
as int?,priceRange: freezed == priceRange ? _self.priceRange : priceRange // ignore: cast_nullable_to_non_nullable
as PriceRangeModel?,properties: freezed == properties ? _self._properties : properties // ignore: cast_nullable_to_non_nullable
as List<FilterPropertyModel>?,availableCategories: freezed == availableCategories ? _self._availableCategories : availableCategories // ignore: cast_nullable_to_non_nullable
as List<AvailableCategoryModel>?,
  ));
}

/// Create a copy of FiltersResponseModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PriceRangeModelCopyWith<$Res>? get priceRange {
    if (_self.priceRange == null) {
    return null;
  }

  return $PriceRangeModelCopyWith<$Res>(_self.priceRange!, (value) {
    return _then(_self.copyWith(priceRange: value));
  });
}
}


/// @nodoc
mixin _$PriceRangeModel {

@JsonKey(name: 'minPrice') int? get minPrice;@JsonKey(name: 'maxPrice') int? get maxPrice;
/// Create a copy of PriceRangeModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PriceRangeModelCopyWith<PriceRangeModel> get copyWith => _$PriceRangeModelCopyWithImpl<PriceRangeModel>(this as PriceRangeModel, _$identity);

  /// Serializes this PriceRangeModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PriceRangeModel&&(identical(other.minPrice, minPrice) || other.minPrice == minPrice)&&(identical(other.maxPrice, maxPrice) || other.maxPrice == maxPrice));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,minPrice,maxPrice);

@override
String toString() {
  return 'PriceRangeModel(minPrice: $minPrice, maxPrice: $maxPrice)';
}


}

/// @nodoc
abstract mixin class $PriceRangeModelCopyWith<$Res>  {
  factory $PriceRangeModelCopyWith(PriceRangeModel value, $Res Function(PriceRangeModel) _then) = _$PriceRangeModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'minPrice') int? minPrice,@JsonKey(name: 'maxPrice') int? maxPrice
});




}
/// @nodoc
class _$PriceRangeModelCopyWithImpl<$Res>
    implements $PriceRangeModelCopyWith<$Res> {
  _$PriceRangeModelCopyWithImpl(this._self, this._then);

  final PriceRangeModel _self;
  final $Res Function(PriceRangeModel) _then;

/// Create a copy of PriceRangeModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? minPrice = freezed,Object? maxPrice = freezed,}) {
  return _then(_self.copyWith(
minPrice: freezed == minPrice ? _self.minPrice : minPrice // ignore: cast_nullable_to_non_nullable
as int?,maxPrice: freezed == maxPrice ? _self.maxPrice : maxPrice // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [PriceRangeModel].
extension PriceRangeModelPatterns on PriceRangeModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PriceRangeModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PriceRangeModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PriceRangeModel value)  $default,){
final _that = this;
switch (_that) {
case _PriceRangeModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PriceRangeModel value)?  $default,){
final _that = this;
switch (_that) {
case _PriceRangeModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'minPrice')  int? minPrice, @JsonKey(name: 'maxPrice')  int? maxPrice)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PriceRangeModel() when $default != null:
return $default(_that.minPrice,_that.maxPrice);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'minPrice')  int? minPrice, @JsonKey(name: 'maxPrice')  int? maxPrice)  $default,) {final _that = this;
switch (_that) {
case _PriceRangeModel():
return $default(_that.minPrice,_that.maxPrice);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'minPrice')  int? minPrice, @JsonKey(name: 'maxPrice')  int? maxPrice)?  $default,) {final _that = this;
switch (_that) {
case _PriceRangeModel() when $default != null:
return $default(_that.minPrice,_that.maxPrice);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PriceRangeModel implements PriceRangeModel {
  const _PriceRangeModel({@JsonKey(name: 'minPrice') this.minPrice, @JsonKey(name: 'maxPrice') this.maxPrice});
  factory _PriceRangeModel.fromJson(Map<String, dynamic> json) => _$PriceRangeModelFromJson(json);

@override@JsonKey(name: 'minPrice') final  int? minPrice;
@override@JsonKey(name: 'maxPrice') final  int? maxPrice;

/// Create a copy of PriceRangeModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PriceRangeModelCopyWith<_PriceRangeModel> get copyWith => __$PriceRangeModelCopyWithImpl<_PriceRangeModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PriceRangeModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PriceRangeModel&&(identical(other.minPrice, minPrice) || other.minPrice == minPrice)&&(identical(other.maxPrice, maxPrice) || other.maxPrice == maxPrice));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,minPrice,maxPrice);

@override
String toString() {
  return 'PriceRangeModel(minPrice: $minPrice, maxPrice: $maxPrice)';
}


}

/// @nodoc
abstract mixin class _$PriceRangeModelCopyWith<$Res> implements $PriceRangeModelCopyWith<$Res> {
  factory _$PriceRangeModelCopyWith(_PriceRangeModel value, $Res Function(_PriceRangeModel) _then) = __$PriceRangeModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'minPrice') int? minPrice,@JsonKey(name: 'maxPrice') int? maxPrice
});




}
/// @nodoc
class __$PriceRangeModelCopyWithImpl<$Res>
    implements _$PriceRangeModelCopyWith<$Res> {
  __$PriceRangeModelCopyWithImpl(this._self, this._then);

  final _PriceRangeModel _self;
  final $Res Function(_PriceRangeModel) _then;

/// Create a copy of PriceRangeModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? minPrice = freezed,Object? maxPrice = freezed,}) {
  return _then(_PriceRangeModel(
minPrice: freezed == minPrice ? _self.minPrice : minPrice // ignore: cast_nullable_to_non_nullable
as int?,maxPrice: freezed == maxPrice ? _self.maxPrice : maxPrice // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}


/// @nodoc
mixin _$FilterPropertyModel {

@JsonKey(name: 'name') String? get name;@JsonKey(name: 'type') String? get type;@JsonKey(name: 'slug') String? get slug;@JsonKey(name: 'items') List<FilterItemModel>? get items;
/// Create a copy of FilterPropertyModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FilterPropertyModelCopyWith<FilterPropertyModel> get copyWith => _$FilterPropertyModelCopyWithImpl<FilterPropertyModel>(this as FilterPropertyModel, _$identity);

  /// Serializes this FilterPropertyModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FilterPropertyModel&&(identical(other.name, name) || other.name == name)&&(identical(other.type, type) || other.type == type)&&(identical(other.slug, slug) || other.slug == slug)&&const DeepCollectionEquality().equals(other.items, items));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,type,slug,const DeepCollectionEquality().hash(items));

@override
String toString() {
  return 'FilterPropertyModel(name: $name, type: $type, slug: $slug, items: $items)';
}


}

/// @nodoc
abstract mixin class $FilterPropertyModelCopyWith<$Res>  {
  factory $FilterPropertyModelCopyWith(FilterPropertyModel value, $Res Function(FilterPropertyModel) _then) = _$FilterPropertyModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'name') String? name,@JsonKey(name: 'type') String? type,@JsonKey(name: 'slug') String? slug,@JsonKey(name: 'items') List<FilterItemModel>? items
});




}
/// @nodoc
class _$FilterPropertyModelCopyWithImpl<$Res>
    implements $FilterPropertyModelCopyWith<$Res> {
  _$FilterPropertyModelCopyWithImpl(this._self, this._then);

  final FilterPropertyModel _self;
  final $Res Function(FilterPropertyModel) _then;

/// Create a copy of FilterPropertyModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = freezed,Object? type = freezed,Object? slug = freezed,Object? items = freezed,}) {
  return _then(_self.copyWith(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,slug: freezed == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String?,items: freezed == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<FilterItemModel>?,
  ));
}

}


/// Adds pattern-matching-related methods to [FilterPropertyModel].
extension FilterPropertyModelPatterns on FilterPropertyModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FilterPropertyModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FilterPropertyModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FilterPropertyModel value)  $default,){
final _that = this;
switch (_that) {
case _FilterPropertyModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FilterPropertyModel value)?  $default,){
final _that = this;
switch (_that) {
case _FilterPropertyModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'name')  String? name, @JsonKey(name: 'type')  String? type, @JsonKey(name: 'slug')  String? slug, @JsonKey(name: 'items')  List<FilterItemModel>? items)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FilterPropertyModel() when $default != null:
return $default(_that.name,_that.type,_that.slug,_that.items);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'name')  String? name, @JsonKey(name: 'type')  String? type, @JsonKey(name: 'slug')  String? slug, @JsonKey(name: 'items')  List<FilterItemModel>? items)  $default,) {final _that = this;
switch (_that) {
case _FilterPropertyModel():
return $default(_that.name,_that.type,_that.slug,_that.items);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'name')  String? name, @JsonKey(name: 'type')  String? type, @JsonKey(name: 'slug')  String? slug, @JsonKey(name: 'items')  List<FilterItemModel>? items)?  $default,) {final _that = this;
switch (_that) {
case _FilterPropertyModel() when $default != null:
return $default(_that.name,_that.type,_that.slug,_that.items);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FilterPropertyModel implements FilterPropertyModel {
  const _FilterPropertyModel({@JsonKey(name: 'name') this.name, @JsonKey(name: 'type') this.type, @JsonKey(name: 'slug') this.slug, @JsonKey(name: 'items') final  List<FilterItemModel>? items}): _items = items;
  factory _FilterPropertyModel.fromJson(Map<String, dynamic> json) => _$FilterPropertyModelFromJson(json);

@override@JsonKey(name: 'name') final  String? name;
@override@JsonKey(name: 'type') final  String? type;
@override@JsonKey(name: 'slug') final  String? slug;
 final  List<FilterItemModel>? _items;
@override@JsonKey(name: 'items') List<FilterItemModel>? get items {
  final value = _items;
  if (value == null) return null;
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of FilterPropertyModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FilterPropertyModelCopyWith<_FilterPropertyModel> get copyWith => __$FilterPropertyModelCopyWithImpl<_FilterPropertyModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FilterPropertyModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FilterPropertyModel&&(identical(other.name, name) || other.name == name)&&(identical(other.type, type) || other.type == type)&&(identical(other.slug, slug) || other.slug == slug)&&const DeepCollectionEquality().equals(other._items, _items));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,type,slug,const DeepCollectionEquality().hash(_items));

@override
String toString() {
  return 'FilterPropertyModel(name: $name, type: $type, slug: $slug, items: $items)';
}


}

/// @nodoc
abstract mixin class _$FilterPropertyModelCopyWith<$Res> implements $FilterPropertyModelCopyWith<$Res> {
  factory _$FilterPropertyModelCopyWith(_FilterPropertyModel value, $Res Function(_FilterPropertyModel) _then) = __$FilterPropertyModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'name') String? name,@JsonKey(name: 'type') String? type,@JsonKey(name: 'slug') String? slug,@JsonKey(name: 'items') List<FilterItemModel>? items
});




}
/// @nodoc
class __$FilterPropertyModelCopyWithImpl<$Res>
    implements _$FilterPropertyModelCopyWith<$Res> {
  __$FilterPropertyModelCopyWithImpl(this._self, this._then);

  final _FilterPropertyModel _self;
  final $Res Function(_FilterPropertyModel) _then;

/// Create a copy of FilterPropertyModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = freezed,Object? type = freezed,Object? slug = freezed,Object? items = freezed,}) {
  return _then(_FilterPropertyModel(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,slug: freezed == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String?,items: freezed == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<FilterItemModel>?,
  ));
}


}


/// @nodoc
mixin _$FilterItemModel {

@JsonKey(name: 'value') String? get value;@JsonKey(name: 'slug') String? get slug;@JsonKey(name: 'count') int? get count;
/// Create a copy of FilterItemModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FilterItemModelCopyWith<FilterItemModel> get copyWith => _$FilterItemModelCopyWithImpl<FilterItemModel>(this as FilterItemModel, _$identity);

  /// Serializes this FilterItemModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FilterItemModel&&(identical(other.value, value) || other.value == value)&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.count, count) || other.count == count));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,value,slug,count);

@override
String toString() {
  return 'FilterItemModel(value: $value, slug: $slug, count: $count)';
}


}

/// @nodoc
abstract mixin class $FilterItemModelCopyWith<$Res>  {
  factory $FilterItemModelCopyWith(FilterItemModel value, $Res Function(FilterItemModel) _then) = _$FilterItemModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'value') String? value,@JsonKey(name: 'slug') String? slug,@JsonKey(name: 'count') int? count
});




}
/// @nodoc
class _$FilterItemModelCopyWithImpl<$Res>
    implements $FilterItemModelCopyWith<$Res> {
  _$FilterItemModelCopyWithImpl(this._self, this._then);

  final FilterItemModel _self;
  final $Res Function(FilterItemModel) _then;

/// Create a copy of FilterItemModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? value = freezed,Object? slug = freezed,Object? count = freezed,}) {
  return _then(_self.copyWith(
value: freezed == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String?,slug: freezed == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String?,count: freezed == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [FilterItemModel].
extension FilterItemModelPatterns on FilterItemModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FilterItemModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FilterItemModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FilterItemModel value)  $default,){
final _that = this;
switch (_that) {
case _FilterItemModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FilterItemModel value)?  $default,){
final _that = this;
switch (_that) {
case _FilterItemModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'value')  String? value, @JsonKey(name: 'slug')  String? slug, @JsonKey(name: 'count')  int? count)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FilterItemModel() when $default != null:
return $default(_that.value,_that.slug,_that.count);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'value')  String? value, @JsonKey(name: 'slug')  String? slug, @JsonKey(name: 'count')  int? count)  $default,) {final _that = this;
switch (_that) {
case _FilterItemModel():
return $default(_that.value,_that.slug,_that.count);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'value')  String? value, @JsonKey(name: 'slug')  String? slug, @JsonKey(name: 'count')  int? count)?  $default,) {final _that = this;
switch (_that) {
case _FilterItemModel() when $default != null:
return $default(_that.value,_that.slug,_that.count);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FilterItemModel implements FilterItemModel {
  const _FilterItemModel({@JsonKey(name: 'value') this.value, @JsonKey(name: 'slug') this.slug, @JsonKey(name: 'count') this.count});
  factory _FilterItemModel.fromJson(Map<String, dynamic> json) => _$FilterItemModelFromJson(json);

@override@JsonKey(name: 'value') final  String? value;
@override@JsonKey(name: 'slug') final  String? slug;
@override@JsonKey(name: 'count') final  int? count;

/// Create a copy of FilterItemModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FilterItemModelCopyWith<_FilterItemModel> get copyWith => __$FilterItemModelCopyWithImpl<_FilterItemModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FilterItemModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FilterItemModel&&(identical(other.value, value) || other.value == value)&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.count, count) || other.count == count));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,value,slug,count);

@override
String toString() {
  return 'FilterItemModel(value: $value, slug: $slug, count: $count)';
}


}

/// @nodoc
abstract mixin class _$FilterItemModelCopyWith<$Res> implements $FilterItemModelCopyWith<$Res> {
  factory _$FilterItemModelCopyWith(_FilterItemModel value, $Res Function(_FilterItemModel) _then) = __$FilterItemModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'value') String? value,@JsonKey(name: 'slug') String? slug,@JsonKey(name: 'count') int? count
});




}
/// @nodoc
class __$FilterItemModelCopyWithImpl<$Res>
    implements _$FilterItemModelCopyWith<$Res> {
  __$FilterItemModelCopyWithImpl(this._self, this._then);

  final _FilterItemModel _self;
  final $Res Function(_FilterItemModel) _then;

/// Create a copy of FilterItemModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? value = freezed,Object? slug = freezed,Object? count = freezed,}) {
  return _then(_FilterItemModel(
value: freezed == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String?,slug: freezed == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String?,count: freezed == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}


/// @nodoc
mixin _$AvailableCategoryModel {

@JsonKey(name: 'slug') String? get slug;@JsonKey(name: 'name') String? get name;@JsonKey(name: 'productsCount') int? get productsCount;
/// Create a copy of AvailableCategoryModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AvailableCategoryModelCopyWith<AvailableCategoryModel> get copyWith => _$AvailableCategoryModelCopyWithImpl<AvailableCategoryModel>(this as AvailableCategoryModel, _$identity);

  /// Serializes this AvailableCategoryModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AvailableCategoryModel&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.name, name) || other.name == name)&&(identical(other.productsCount, productsCount) || other.productsCount == productsCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,slug,name,productsCount);

@override
String toString() {
  return 'AvailableCategoryModel(slug: $slug, name: $name, productsCount: $productsCount)';
}


}

/// @nodoc
abstract mixin class $AvailableCategoryModelCopyWith<$Res>  {
  factory $AvailableCategoryModelCopyWith(AvailableCategoryModel value, $Res Function(AvailableCategoryModel) _then) = _$AvailableCategoryModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'slug') String? slug,@JsonKey(name: 'name') String? name,@JsonKey(name: 'productsCount') int? productsCount
});




}
/// @nodoc
class _$AvailableCategoryModelCopyWithImpl<$Res>
    implements $AvailableCategoryModelCopyWith<$Res> {
  _$AvailableCategoryModelCopyWithImpl(this._self, this._then);

  final AvailableCategoryModel _self;
  final $Res Function(AvailableCategoryModel) _then;

/// Create a copy of AvailableCategoryModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? slug = freezed,Object? name = freezed,Object? productsCount = freezed,}) {
  return _then(_self.copyWith(
slug: freezed == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,productsCount: freezed == productsCount ? _self.productsCount : productsCount // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [AvailableCategoryModel].
extension AvailableCategoryModelPatterns on AvailableCategoryModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AvailableCategoryModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AvailableCategoryModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AvailableCategoryModel value)  $default,){
final _that = this;
switch (_that) {
case _AvailableCategoryModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AvailableCategoryModel value)?  $default,){
final _that = this;
switch (_that) {
case _AvailableCategoryModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'slug')  String? slug, @JsonKey(name: 'name')  String? name, @JsonKey(name: 'productsCount')  int? productsCount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AvailableCategoryModel() when $default != null:
return $default(_that.slug,_that.name,_that.productsCount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'slug')  String? slug, @JsonKey(name: 'name')  String? name, @JsonKey(name: 'productsCount')  int? productsCount)  $default,) {final _that = this;
switch (_that) {
case _AvailableCategoryModel():
return $default(_that.slug,_that.name,_that.productsCount);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'slug')  String? slug, @JsonKey(name: 'name')  String? name, @JsonKey(name: 'productsCount')  int? productsCount)?  $default,) {final _that = this;
switch (_that) {
case _AvailableCategoryModel() when $default != null:
return $default(_that.slug,_that.name,_that.productsCount);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AvailableCategoryModel implements AvailableCategoryModel {
  const _AvailableCategoryModel({@JsonKey(name: 'slug') this.slug, @JsonKey(name: 'name') this.name, @JsonKey(name: 'productsCount') this.productsCount});
  factory _AvailableCategoryModel.fromJson(Map<String, dynamic> json) => _$AvailableCategoryModelFromJson(json);

@override@JsonKey(name: 'slug') final  String? slug;
@override@JsonKey(name: 'name') final  String? name;
@override@JsonKey(name: 'productsCount') final  int? productsCount;

/// Create a copy of AvailableCategoryModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AvailableCategoryModelCopyWith<_AvailableCategoryModel> get copyWith => __$AvailableCategoryModelCopyWithImpl<_AvailableCategoryModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AvailableCategoryModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AvailableCategoryModel&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.name, name) || other.name == name)&&(identical(other.productsCount, productsCount) || other.productsCount == productsCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,slug,name,productsCount);

@override
String toString() {
  return 'AvailableCategoryModel(slug: $slug, name: $name, productsCount: $productsCount)';
}


}

/// @nodoc
abstract mixin class _$AvailableCategoryModelCopyWith<$Res> implements $AvailableCategoryModelCopyWith<$Res> {
  factory _$AvailableCategoryModelCopyWith(_AvailableCategoryModel value, $Res Function(_AvailableCategoryModel) _then) = __$AvailableCategoryModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'slug') String? slug,@JsonKey(name: 'name') String? name,@JsonKey(name: 'productsCount') int? productsCount
});




}
/// @nodoc
class __$AvailableCategoryModelCopyWithImpl<$Res>
    implements _$AvailableCategoryModelCopyWith<$Res> {
  __$AvailableCategoryModelCopyWithImpl(this._self, this._then);

  final _AvailableCategoryModel _self;
  final $Res Function(_AvailableCategoryModel) _then;

/// Create a copy of AvailableCategoryModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? slug = freezed,Object? name = freezed,Object? productsCount = freezed,}) {
  return _then(_AvailableCategoryModel(
slug: freezed == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,productsCount: freezed == productsCount ? _self.productsCount : productsCount // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
