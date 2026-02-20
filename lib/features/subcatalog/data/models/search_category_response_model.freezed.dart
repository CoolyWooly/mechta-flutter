// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_category_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SearchCategoryResponseModel {

 String? get category; List<AvailableCategoryModel> get availableCategories;
/// Create a copy of SearchCategoryResponseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SearchCategoryResponseModelCopyWith<SearchCategoryResponseModel> get copyWith => _$SearchCategoryResponseModelCopyWithImpl<SearchCategoryResponseModel>(this as SearchCategoryResponseModel, _$identity);

  /// Serializes this SearchCategoryResponseModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchCategoryResponseModel&&(identical(other.category, category) || other.category == category)&&const DeepCollectionEquality().equals(other.availableCategories, availableCategories));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,category,const DeepCollectionEquality().hash(availableCategories));

@override
String toString() {
  return 'SearchCategoryResponseModel(category: $category, availableCategories: $availableCategories)';
}


}

/// @nodoc
abstract mixin class $SearchCategoryResponseModelCopyWith<$Res>  {
  factory $SearchCategoryResponseModelCopyWith(SearchCategoryResponseModel value, $Res Function(SearchCategoryResponseModel) _then) = _$SearchCategoryResponseModelCopyWithImpl;
@useResult
$Res call({
 String? category, List<AvailableCategoryModel> availableCategories
});




}
/// @nodoc
class _$SearchCategoryResponseModelCopyWithImpl<$Res>
    implements $SearchCategoryResponseModelCopyWith<$Res> {
  _$SearchCategoryResponseModelCopyWithImpl(this._self, this._then);

  final SearchCategoryResponseModel _self;
  final $Res Function(SearchCategoryResponseModel) _then;

/// Create a copy of SearchCategoryResponseModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? category = freezed,Object? availableCategories = null,}) {
  return _then(_self.copyWith(
category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String?,availableCategories: null == availableCategories ? _self.availableCategories : availableCategories // ignore: cast_nullable_to_non_nullable
as List<AvailableCategoryModel>,
  ));
}

}


/// Adds pattern-matching-related methods to [SearchCategoryResponseModel].
extension SearchCategoryResponseModelPatterns on SearchCategoryResponseModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SearchCategoryResponseModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SearchCategoryResponseModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SearchCategoryResponseModel value)  $default,){
final _that = this;
switch (_that) {
case _SearchCategoryResponseModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SearchCategoryResponseModel value)?  $default,){
final _that = this;
switch (_that) {
case _SearchCategoryResponseModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? category,  List<AvailableCategoryModel> availableCategories)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SearchCategoryResponseModel() when $default != null:
return $default(_that.category,_that.availableCategories);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? category,  List<AvailableCategoryModel> availableCategories)  $default,) {final _that = this;
switch (_that) {
case _SearchCategoryResponseModel():
return $default(_that.category,_that.availableCategories);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? category,  List<AvailableCategoryModel> availableCategories)?  $default,) {final _that = this;
switch (_that) {
case _SearchCategoryResponseModel() when $default != null:
return $default(_that.category,_that.availableCategories);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SearchCategoryResponseModel implements SearchCategoryResponseModel {
  const _SearchCategoryResponseModel({this.category, final  List<AvailableCategoryModel> availableCategories = const []}): _availableCategories = availableCategories;
  factory _SearchCategoryResponseModel.fromJson(Map<String, dynamic> json) => _$SearchCategoryResponseModelFromJson(json);

@override final  String? category;
 final  List<AvailableCategoryModel> _availableCategories;
@override@JsonKey() List<AvailableCategoryModel> get availableCategories {
  if (_availableCategories is EqualUnmodifiableListView) return _availableCategories;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_availableCategories);
}


/// Create a copy of SearchCategoryResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SearchCategoryResponseModelCopyWith<_SearchCategoryResponseModel> get copyWith => __$SearchCategoryResponseModelCopyWithImpl<_SearchCategoryResponseModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SearchCategoryResponseModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SearchCategoryResponseModel&&(identical(other.category, category) || other.category == category)&&const DeepCollectionEquality().equals(other._availableCategories, _availableCategories));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,category,const DeepCollectionEquality().hash(_availableCategories));

@override
String toString() {
  return 'SearchCategoryResponseModel(category: $category, availableCategories: $availableCategories)';
}


}

/// @nodoc
abstract mixin class _$SearchCategoryResponseModelCopyWith<$Res> implements $SearchCategoryResponseModelCopyWith<$Res> {
  factory _$SearchCategoryResponseModelCopyWith(_SearchCategoryResponseModel value, $Res Function(_SearchCategoryResponseModel) _then) = __$SearchCategoryResponseModelCopyWithImpl;
@override @useResult
$Res call({
 String? category, List<AvailableCategoryModel> availableCategories
});




}
/// @nodoc
class __$SearchCategoryResponseModelCopyWithImpl<$Res>
    implements _$SearchCategoryResponseModelCopyWith<$Res> {
  __$SearchCategoryResponseModelCopyWithImpl(this._self, this._then);

  final _SearchCategoryResponseModel _self;
  final $Res Function(_SearchCategoryResponseModel) _then;

/// Create a copy of SearchCategoryResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? category = freezed,Object? availableCategories = null,}) {
  return _then(_SearchCategoryResponseModel(
category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String?,availableCategories: null == availableCategories ? _self._availableCategories : availableCategories // ignore: cast_nullable_to_non_nullable
as List<AvailableCategoryModel>,
  ));
}


}


/// @nodoc
mixin _$AvailableCategoryModel {

 String? get slug; String? get name; int? get productsCount;
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
 String? slug, String? name, int? productsCount
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? slug,  String? name,  int? productsCount)?  $default,{required TResult orElse(),}) {final _that = this;
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? slug,  String? name,  int? productsCount)  $default,) {final _that = this;
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? slug,  String? name,  int? productsCount)?  $default,) {final _that = this;
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
  const _AvailableCategoryModel({this.slug, this.name, this.productsCount});
  factory _AvailableCategoryModel.fromJson(Map<String, dynamic> json) => _$AvailableCategoryModelFromJson(json);

@override final  String? slug;
@override final  String? name;
@override final  int? productsCount;

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
 String? slug, String? name, int? productsCount
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
