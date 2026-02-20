// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SearchResponseModel {

 String get text; String get correction; List<SearchChipModel> get taps; List<SearchVariantModel> get variants; List<SearchProductModel> get products; List<SearchCategoryModel> get categories;
/// Create a copy of SearchResponseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SearchResponseModelCopyWith<SearchResponseModel> get copyWith => _$SearchResponseModelCopyWithImpl<SearchResponseModel>(this as SearchResponseModel, _$identity);

  /// Serializes this SearchResponseModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchResponseModel&&(identical(other.text, text) || other.text == text)&&(identical(other.correction, correction) || other.correction == correction)&&const DeepCollectionEquality().equals(other.taps, taps)&&const DeepCollectionEquality().equals(other.variants, variants)&&const DeepCollectionEquality().equals(other.products, products)&&const DeepCollectionEquality().equals(other.categories, categories));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,text,correction,const DeepCollectionEquality().hash(taps),const DeepCollectionEquality().hash(variants),const DeepCollectionEquality().hash(products),const DeepCollectionEquality().hash(categories));

@override
String toString() {
  return 'SearchResponseModel(text: $text, correction: $correction, taps: $taps, variants: $variants, products: $products, categories: $categories)';
}


}

/// @nodoc
abstract mixin class $SearchResponseModelCopyWith<$Res>  {
  factory $SearchResponseModelCopyWith(SearchResponseModel value, $Res Function(SearchResponseModel) _then) = _$SearchResponseModelCopyWithImpl;
@useResult
$Res call({
 String text, String correction, List<SearchChipModel> taps, List<SearchVariantModel> variants, List<SearchProductModel> products, List<SearchCategoryModel> categories
});




}
/// @nodoc
class _$SearchResponseModelCopyWithImpl<$Res>
    implements $SearchResponseModelCopyWith<$Res> {
  _$SearchResponseModelCopyWithImpl(this._self, this._then);

  final SearchResponseModel _self;
  final $Res Function(SearchResponseModel) _then;

/// Create a copy of SearchResponseModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? text = null,Object? correction = null,Object? taps = null,Object? variants = null,Object? products = null,Object? categories = null,}) {
  return _then(_self.copyWith(
text: null == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String,correction: null == correction ? _self.correction : correction // ignore: cast_nullable_to_non_nullable
as String,taps: null == taps ? _self.taps : taps // ignore: cast_nullable_to_non_nullable
as List<SearchChipModel>,variants: null == variants ? _self.variants : variants // ignore: cast_nullable_to_non_nullable
as List<SearchVariantModel>,products: null == products ? _self.products : products // ignore: cast_nullable_to_non_nullable
as List<SearchProductModel>,categories: null == categories ? _self.categories : categories // ignore: cast_nullable_to_non_nullable
as List<SearchCategoryModel>,
  ));
}

}


/// Adds pattern-matching-related methods to [SearchResponseModel].
extension SearchResponseModelPatterns on SearchResponseModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SearchResponseModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SearchResponseModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SearchResponseModel value)  $default,){
final _that = this;
switch (_that) {
case _SearchResponseModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SearchResponseModel value)?  $default,){
final _that = this;
switch (_that) {
case _SearchResponseModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String text,  String correction,  List<SearchChipModel> taps,  List<SearchVariantModel> variants,  List<SearchProductModel> products,  List<SearchCategoryModel> categories)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SearchResponseModel() when $default != null:
return $default(_that.text,_that.correction,_that.taps,_that.variants,_that.products,_that.categories);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String text,  String correction,  List<SearchChipModel> taps,  List<SearchVariantModel> variants,  List<SearchProductModel> products,  List<SearchCategoryModel> categories)  $default,) {final _that = this;
switch (_that) {
case _SearchResponseModel():
return $default(_that.text,_that.correction,_that.taps,_that.variants,_that.products,_that.categories);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String text,  String correction,  List<SearchChipModel> taps,  List<SearchVariantModel> variants,  List<SearchProductModel> products,  List<SearchCategoryModel> categories)?  $default,) {final _that = this;
switch (_that) {
case _SearchResponseModel() when $default != null:
return $default(_that.text,_that.correction,_that.taps,_that.variants,_that.products,_that.categories);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SearchResponseModel implements SearchResponseModel {
  const _SearchResponseModel({this.text = '', this.correction = '', final  List<SearchChipModel> taps = const [], final  List<SearchVariantModel> variants = const [], final  List<SearchProductModel> products = const [], final  List<SearchCategoryModel> categories = const []}): _taps = taps,_variants = variants,_products = products,_categories = categories;
  factory _SearchResponseModel.fromJson(Map<String, dynamic> json) => _$SearchResponseModelFromJson(json);

@override@JsonKey() final  String text;
@override@JsonKey() final  String correction;
 final  List<SearchChipModel> _taps;
@override@JsonKey() List<SearchChipModel> get taps {
  if (_taps is EqualUnmodifiableListView) return _taps;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_taps);
}

 final  List<SearchVariantModel> _variants;
@override@JsonKey() List<SearchVariantModel> get variants {
  if (_variants is EqualUnmodifiableListView) return _variants;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_variants);
}

 final  List<SearchProductModel> _products;
@override@JsonKey() List<SearchProductModel> get products {
  if (_products is EqualUnmodifiableListView) return _products;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_products);
}

 final  List<SearchCategoryModel> _categories;
@override@JsonKey() List<SearchCategoryModel> get categories {
  if (_categories is EqualUnmodifiableListView) return _categories;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_categories);
}


/// Create a copy of SearchResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SearchResponseModelCopyWith<_SearchResponseModel> get copyWith => __$SearchResponseModelCopyWithImpl<_SearchResponseModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SearchResponseModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SearchResponseModel&&(identical(other.text, text) || other.text == text)&&(identical(other.correction, correction) || other.correction == correction)&&const DeepCollectionEquality().equals(other._taps, _taps)&&const DeepCollectionEquality().equals(other._variants, _variants)&&const DeepCollectionEquality().equals(other._products, _products)&&const DeepCollectionEquality().equals(other._categories, _categories));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,text,correction,const DeepCollectionEquality().hash(_taps),const DeepCollectionEquality().hash(_variants),const DeepCollectionEquality().hash(_products),const DeepCollectionEquality().hash(_categories));

@override
String toString() {
  return 'SearchResponseModel(text: $text, correction: $correction, taps: $taps, variants: $variants, products: $products, categories: $categories)';
}


}

/// @nodoc
abstract mixin class _$SearchResponseModelCopyWith<$Res> implements $SearchResponseModelCopyWith<$Res> {
  factory _$SearchResponseModelCopyWith(_SearchResponseModel value, $Res Function(_SearchResponseModel) _then) = __$SearchResponseModelCopyWithImpl;
@override @useResult
$Res call({
 String text, String correction, List<SearchChipModel> taps, List<SearchVariantModel> variants, List<SearchProductModel> products, List<SearchCategoryModel> categories
});




}
/// @nodoc
class __$SearchResponseModelCopyWithImpl<$Res>
    implements _$SearchResponseModelCopyWith<$Res> {
  __$SearchResponseModelCopyWithImpl(this._self, this._then);

  final _SearchResponseModel _self;
  final $Res Function(_SearchResponseModel) _then;

/// Create a copy of SearchResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? text = null,Object? correction = null,Object? taps = null,Object? variants = null,Object? products = null,Object? categories = null,}) {
  return _then(_SearchResponseModel(
text: null == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String,correction: null == correction ? _self.correction : correction // ignore: cast_nullable_to_non_nullable
as String,taps: null == taps ? _self._taps : taps // ignore: cast_nullable_to_non_nullable
as List<SearchChipModel>,variants: null == variants ? _self._variants : variants // ignore: cast_nullable_to_non_nullable
as List<SearchVariantModel>,products: null == products ? _self._products : products // ignore: cast_nullable_to_non_nullable
as List<SearchProductModel>,categories: null == categories ? _self._categories : categories // ignore: cast_nullable_to_non_nullable
as List<SearchCategoryModel>,
  ));
}


}


/// @nodoc
mixin _$SearchChipModel {

 String get label;@JsonKey(name: 'search_text') String get searchText;
/// Create a copy of SearchChipModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SearchChipModelCopyWith<SearchChipModel> get copyWith => _$SearchChipModelCopyWithImpl<SearchChipModel>(this as SearchChipModel, _$identity);

  /// Serializes this SearchChipModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchChipModel&&(identical(other.label, label) || other.label == label)&&(identical(other.searchText, searchText) || other.searchText == searchText));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,label,searchText);

@override
String toString() {
  return 'SearchChipModel(label: $label, searchText: $searchText)';
}


}

/// @nodoc
abstract mixin class $SearchChipModelCopyWith<$Res>  {
  factory $SearchChipModelCopyWith(SearchChipModel value, $Res Function(SearchChipModel) _then) = _$SearchChipModelCopyWithImpl;
@useResult
$Res call({
 String label,@JsonKey(name: 'search_text') String searchText
});




}
/// @nodoc
class _$SearchChipModelCopyWithImpl<$Res>
    implements $SearchChipModelCopyWith<$Res> {
  _$SearchChipModelCopyWithImpl(this._self, this._then);

  final SearchChipModel _self;
  final $Res Function(SearchChipModel) _then;

/// Create a copy of SearchChipModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? label = null,Object? searchText = null,}) {
  return _then(_self.copyWith(
label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,searchText: null == searchText ? _self.searchText : searchText // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [SearchChipModel].
extension SearchChipModelPatterns on SearchChipModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SearchChipModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SearchChipModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SearchChipModel value)  $default,){
final _that = this;
switch (_that) {
case _SearchChipModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SearchChipModel value)?  $default,){
final _that = this;
switch (_that) {
case _SearchChipModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String label, @JsonKey(name: 'search_text')  String searchText)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SearchChipModel() when $default != null:
return $default(_that.label,_that.searchText);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String label, @JsonKey(name: 'search_text')  String searchText)  $default,) {final _that = this;
switch (_that) {
case _SearchChipModel():
return $default(_that.label,_that.searchText);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String label, @JsonKey(name: 'search_text')  String searchText)?  $default,) {final _that = this;
switch (_that) {
case _SearchChipModel() when $default != null:
return $default(_that.label,_that.searchText);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SearchChipModel implements SearchChipModel {
  const _SearchChipModel({this.label = '', @JsonKey(name: 'search_text') this.searchText = ''});
  factory _SearchChipModel.fromJson(Map<String, dynamic> json) => _$SearchChipModelFromJson(json);

@override@JsonKey() final  String label;
@override@JsonKey(name: 'search_text') final  String searchText;

/// Create a copy of SearchChipModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SearchChipModelCopyWith<_SearchChipModel> get copyWith => __$SearchChipModelCopyWithImpl<_SearchChipModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SearchChipModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SearchChipModel&&(identical(other.label, label) || other.label == label)&&(identical(other.searchText, searchText) || other.searchText == searchText));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,label,searchText);

@override
String toString() {
  return 'SearchChipModel(label: $label, searchText: $searchText)';
}


}

/// @nodoc
abstract mixin class _$SearchChipModelCopyWith<$Res> implements $SearchChipModelCopyWith<$Res> {
  factory _$SearchChipModelCopyWith(_SearchChipModel value, $Res Function(_SearchChipModel) _then) = __$SearchChipModelCopyWithImpl;
@override @useResult
$Res call({
 String label,@JsonKey(name: 'search_text') String searchText
});




}
/// @nodoc
class __$SearchChipModelCopyWithImpl<$Res>
    implements _$SearchChipModelCopyWith<$Res> {
  __$SearchChipModelCopyWithImpl(this._self, this._then);

  final _SearchChipModel _self;
  final $Res Function(_SearchChipModel) _then;

/// Create a copy of SearchChipModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? label = null,Object? searchText = null,}) {
  return _then(_SearchChipModel(
label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,searchText: null == searchText ? _self.searchText : searchText // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$SearchVariantModel {

 String get text;
/// Create a copy of SearchVariantModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SearchVariantModelCopyWith<SearchVariantModel> get copyWith => _$SearchVariantModelCopyWithImpl<SearchVariantModel>(this as SearchVariantModel, _$identity);

  /// Serializes this SearchVariantModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchVariantModel&&(identical(other.text, text) || other.text == text));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,text);

@override
String toString() {
  return 'SearchVariantModel(text: $text)';
}


}

/// @nodoc
abstract mixin class $SearchVariantModelCopyWith<$Res>  {
  factory $SearchVariantModelCopyWith(SearchVariantModel value, $Res Function(SearchVariantModel) _then) = _$SearchVariantModelCopyWithImpl;
@useResult
$Res call({
 String text
});




}
/// @nodoc
class _$SearchVariantModelCopyWithImpl<$Res>
    implements $SearchVariantModelCopyWith<$Res> {
  _$SearchVariantModelCopyWithImpl(this._self, this._then);

  final SearchVariantModel _self;
  final $Res Function(SearchVariantModel) _then;

/// Create a copy of SearchVariantModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? text = null,}) {
  return _then(_self.copyWith(
text: null == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [SearchVariantModel].
extension SearchVariantModelPatterns on SearchVariantModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SearchVariantModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SearchVariantModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SearchVariantModel value)  $default,){
final _that = this;
switch (_that) {
case _SearchVariantModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SearchVariantModel value)?  $default,){
final _that = this;
switch (_that) {
case _SearchVariantModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String text)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SearchVariantModel() when $default != null:
return $default(_that.text);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String text)  $default,) {final _that = this;
switch (_that) {
case _SearchVariantModel():
return $default(_that.text);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String text)?  $default,) {final _that = this;
switch (_that) {
case _SearchVariantModel() when $default != null:
return $default(_that.text);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SearchVariantModel implements SearchVariantModel {
  const _SearchVariantModel({this.text = ''});
  factory _SearchVariantModel.fromJson(Map<String, dynamic> json) => _$SearchVariantModelFromJson(json);

@override@JsonKey() final  String text;

/// Create a copy of SearchVariantModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SearchVariantModelCopyWith<_SearchVariantModel> get copyWith => __$SearchVariantModelCopyWithImpl<_SearchVariantModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SearchVariantModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SearchVariantModel&&(identical(other.text, text) || other.text == text));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,text);

@override
String toString() {
  return 'SearchVariantModel(text: $text)';
}


}

/// @nodoc
abstract mixin class _$SearchVariantModelCopyWith<$Res> implements $SearchVariantModelCopyWith<$Res> {
  factory _$SearchVariantModelCopyWith(_SearchVariantModel value, $Res Function(_SearchVariantModel) _then) = __$SearchVariantModelCopyWithImpl;
@override @useResult
$Res call({
 String text
});




}
/// @nodoc
class __$SearchVariantModelCopyWithImpl<$Res>
    implements _$SearchVariantModelCopyWith<$Res> {
  __$SearchVariantModelCopyWithImpl(this._self, this._then);

  final _SearchVariantModel _self;
  final $Res Function(_SearchVariantModel) _then;

/// Create a copy of SearchVariantModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? text = null,}) {
  return _then(_SearchVariantModel(
text: null == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$SearchProductModel {

 String get id; bool get available; String get name; String get brand; String get price;@JsonKey(name: 'image_url') String get imageUrl; String get link; String? get code;
/// Create a copy of SearchProductModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SearchProductModelCopyWith<SearchProductModel> get copyWith => _$SearchProductModelCopyWithImpl<SearchProductModel>(this as SearchProductModel, _$identity);

  /// Serializes this SearchProductModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchProductModel&&(identical(other.id, id) || other.id == id)&&(identical(other.available, available) || other.available == available)&&(identical(other.name, name) || other.name == name)&&(identical(other.brand, brand) || other.brand == brand)&&(identical(other.price, price) || other.price == price)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.link, link) || other.link == link)&&(identical(other.code, code) || other.code == code));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,available,name,brand,price,imageUrl,link,code);

@override
String toString() {
  return 'SearchProductModel(id: $id, available: $available, name: $name, brand: $brand, price: $price, imageUrl: $imageUrl, link: $link, code: $code)';
}


}

/// @nodoc
abstract mixin class $SearchProductModelCopyWith<$Res>  {
  factory $SearchProductModelCopyWith(SearchProductModel value, $Res Function(SearchProductModel) _then) = _$SearchProductModelCopyWithImpl;
@useResult
$Res call({
 String id, bool available, String name, String brand, String price,@JsonKey(name: 'image_url') String imageUrl, String link, String? code
});




}
/// @nodoc
class _$SearchProductModelCopyWithImpl<$Res>
    implements $SearchProductModelCopyWith<$Res> {
  _$SearchProductModelCopyWithImpl(this._self, this._then);

  final SearchProductModel _self;
  final $Res Function(SearchProductModel) _then;

/// Create a copy of SearchProductModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? available = null,Object? name = null,Object? brand = null,Object? price = null,Object? imageUrl = null,Object? link = null,Object? code = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,available: null == available ? _self.available : available // ignore: cast_nullable_to_non_nullable
as bool,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,brand: null == brand ? _self.brand : brand // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as String,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,link: null == link ? _self.link : link // ignore: cast_nullable_to_non_nullable
as String,code: freezed == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [SearchProductModel].
extension SearchProductModelPatterns on SearchProductModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SearchProductModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SearchProductModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SearchProductModel value)  $default,){
final _that = this;
switch (_that) {
case _SearchProductModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SearchProductModel value)?  $default,){
final _that = this;
switch (_that) {
case _SearchProductModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  bool available,  String name,  String brand,  String price, @JsonKey(name: 'image_url')  String imageUrl,  String link,  String? code)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SearchProductModel() when $default != null:
return $default(_that.id,_that.available,_that.name,_that.brand,_that.price,_that.imageUrl,_that.link,_that.code);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  bool available,  String name,  String brand,  String price, @JsonKey(name: 'image_url')  String imageUrl,  String link,  String? code)  $default,) {final _that = this;
switch (_that) {
case _SearchProductModel():
return $default(_that.id,_that.available,_that.name,_that.brand,_that.price,_that.imageUrl,_that.link,_that.code);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  bool available,  String name,  String brand,  String price, @JsonKey(name: 'image_url')  String imageUrl,  String link,  String? code)?  $default,) {final _that = this;
switch (_that) {
case _SearchProductModel() when $default != null:
return $default(_that.id,_that.available,_that.name,_that.brand,_that.price,_that.imageUrl,_that.link,_that.code);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SearchProductModel implements SearchProductModel {
  const _SearchProductModel({this.id = '', this.available = false, this.name = '', this.brand = '', this.price = '', @JsonKey(name: 'image_url') this.imageUrl = '', this.link = '', this.code});
  factory _SearchProductModel.fromJson(Map<String, dynamic> json) => _$SearchProductModelFromJson(json);

@override@JsonKey() final  String id;
@override@JsonKey() final  bool available;
@override@JsonKey() final  String name;
@override@JsonKey() final  String brand;
@override@JsonKey() final  String price;
@override@JsonKey(name: 'image_url') final  String imageUrl;
@override@JsonKey() final  String link;
@override final  String? code;

/// Create a copy of SearchProductModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SearchProductModelCopyWith<_SearchProductModel> get copyWith => __$SearchProductModelCopyWithImpl<_SearchProductModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SearchProductModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SearchProductModel&&(identical(other.id, id) || other.id == id)&&(identical(other.available, available) || other.available == available)&&(identical(other.name, name) || other.name == name)&&(identical(other.brand, brand) || other.brand == brand)&&(identical(other.price, price) || other.price == price)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.link, link) || other.link == link)&&(identical(other.code, code) || other.code == code));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,available,name,brand,price,imageUrl,link,code);

@override
String toString() {
  return 'SearchProductModel(id: $id, available: $available, name: $name, brand: $brand, price: $price, imageUrl: $imageUrl, link: $link, code: $code)';
}


}

/// @nodoc
abstract mixin class _$SearchProductModelCopyWith<$Res> implements $SearchProductModelCopyWith<$Res> {
  factory _$SearchProductModelCopyWith(_SearchProductModel value, $Res Function(_SearchProductModel) _then) = __$SearchProductModelCopyWithImpl;
@override @useResult
$Res call({
 String id, bool available, String name, String brand, String price,@JsonKey(name: 'image_url') String imageUrl, String link, String? code
});




}
/// @nodoc
class __$SearchProductModelCopyWithImpl<$Res>
    implements _$SearchProductModelCopyWith<$Res> {
  __$SearchProductModelCopyWithImpl(this._self, this._then);

  final _SearchProductModel _self;
  final $Res Function(_SearchProductModel) _then;

/// Create a copy of SearchProductModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? available = null,Object? name = null,Object? brand = null,Object? price = null,Object? imageUrl = null,Object? link = null,Object? code = freezed,}) {
  return _then(_SearchProductModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,available: null == available ? _self.available : available // ignore: cast_nullable_to_non_nullable
as bool,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,brand: null == brand ? _self.brand : brand // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as String,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,link: null == link ? _self.link : link // ignore: cast_nullable_to_non_nullable
as String,code: freezed == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$SearchCategoryModel {

 String get id; String get name; bool get direct; String get link;
/// Create a copy of SearchCategoryModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SearchCategoryModelCopyWith<SearchCategoryModel> get copyWith => _$SearchCategoryModelCopyWithImpl<SearchCategoryModel>(this as SearchCategoryModel, _$identity);

  /// Serializes this SearchCategoryModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchCategoryModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.direct, direct) || other.direct == direct)&&(identical(other.link, link) || other.link == link));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,direct,link);

@override
String toString() {
  return 'SearchCategoryModel(id: $id, name: $name, direct: $direct, link: $link)';
}


}

/// @nodoc
abstract mixin class $SearchCategoryModelCopyWith<$Res>  {
  factory $SearchCategoryModelCopyWith(SearchCategoryModel value, $Res Function(SearchCategoryModel) _then) = _$SearchCategoryModelCopyWithImpl;
@useResult
$Res call({
 String id, String name, bool direct, String link
});




}
/// @nodoc
class _$SearchCategoryModelCopyWithImpl<$Res>
    implements $SearchCategoryModelCopyWith<$Res> {
  _$SearchCategoryModelCopyWithImpl(this._self, this._then);

  final SearchCategoryModel _self;
  final $Res Function(SearchCategoryModel) _then;

/// Create a copy of SearchCategoryModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? direct = null,Object? link = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,direct: null == direct ? _self.direct : direct // ignore: cast_nullable_to_non_nullable
as bool,link: null == link ? _self.link : link // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [SearchCategoryModel].
extension SearchCategoryModelPatterns on SearchCategoryModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SearchCategoryModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SearchCategoryModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SearchCategoryModel value)  $default,){
final _that = this;
switch (_that) {
case _SearchCategoryModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SearchCategoryModel value)?  $default,){
final _that = this;
switch (_that) {
case _SearchCategoryModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  bool direct,  String link)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SearchCategoryModel() when $default != null:
return $default(_that.id,_that.name,_that.direct,_that.link);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  bool direct,  String link)  $default,) {final _that = this;
switch (_that) {
case _SearchCategoryModel():
return $default(_that.id,_that.name,_that.direct,_that.link);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  bool direct,  String link)?  $default,) {final _that = this;
switch (_that) {
case _SearchCategoryModel() when $default != null:
return $default(_that.id,_that.name,_that.direct,_that.link);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SearchCategoryModel implements SearchCategoryModel {
  const _SearchCategoryModel({this.id = '', this.name = '', this.direct = false, this.link = ''});
  factory _SearchCategoryModel.fromJson(Map<String, dynamic> json) => _$SearchCategoryModelFromJson(json);

@override@JsonKey() final  String id;
@override@JsonKey() final  String name;
@override@JsonKey() final  bool direct;
@override@JsonKey() final  String link;

/// Create a copy of SearchCategoryModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SearchCategoryModelCopyWith<_SearchCategoryModel> get copyWith => __$SearchCategoryModelCopyWithImpl<_SearchCategoryModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SearchCategoryModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SearchCategoryModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.direct, direct) || other.direct == direct)&&(identical(other.link, link) || other.link == link));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,direct,link);

@override
String toString() {
  return 'SearchCategoryModel(id: $id, name: $name, direct: $direct, link: $link)';
}


}

/// @nodoc
abstract mixin class _$SearchCategoryModelCopyWith<$Res> implements $SearchCategoryModelCopyWith<$Res> {
  factory _$SearchCategoryModelCopyWith(_SearchCategoryModel value, $Res Function(_SearchCategoryModel) _then) = __$SearchCategoryModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, bool direct, String link
});




}
/// @nodoc
class __$SearchCategoryModelCopyWithImpl<$Res>
    implements _$SearchCategoryModelCopyWith<$Res> {
  __$SearchCategoryModelCopyWithImpl(this._self, this._then);

  final _SearchCategoryModel _self;
  final $Res Function(_SearchCategoryModel) _then;

/// Create a copy of SearchCategoryModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? direct = null,Object? link = null,}) {
  return _then(_SearchCategoryModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,direct: null == direct ? _self.direct : direct // ignore: cast_nullable_to_non_nullable
as bool,link: null == link ? _self.link : link // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
