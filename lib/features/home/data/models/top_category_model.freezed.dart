// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'top_category_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TopCategoryModel {

@JsonKey(name: 'category') ProductCategoryModel? get category;@JsonKey(name: 'products') List<ProductModel> get products;
/// Create a copy of TopCategoryModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TopCategoryModelCopyWith<TopCategoryModel> get copyWith => _$TopCategoryModelCopyWithImpl<TopCategoryModel>(this as TopCategoryModel, _$identity);

  /// Serializes this TopCategoryModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TopCategoryModel&&(identical(other.category, category) || other.category == category)&&const DeepCollectionEquality().equals(other.products, products));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,category,const DeepCollectionEquality().hash(products));

@override
String toString() {
  return 'TopCategoryModel(category: $category, products: $products)';
}


}

/// @nodoc
abstract mixin class $TopCategoryModelCopyWith<$Res>  {
  factory $TopCategoryModelCopyWith(TopCategoryModel value, $Res Function(TopCategoryModel) _then) = _$TopCategoryModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'category') ProductCategoryModel? category,@JsonKey(name: 'products') List<ProductModel> products
});


$ProductCategoryModelCopyWith<$Res>? get category;

}
/// @nodoc
class _$TopCategoryModelCopyWithImpl<$Res>
    implements $TopCategoryModelCopyWith<$Res> {
  _$TopCategoryModelCopyWithImpl(this._self, this._then);

  final TopCategoryModel _self;
  final $Res Function(TopCategoryModel) _then;

/// Create a copy of TopCategoryModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? category = freezed,Object? products = null,}) {
  return _then(_self.copyWith(
category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as ProductCategoryModel?,products: null == products ? _self.products : products // ignore: cast_nullable_to_non_nullable
as List<ProductModel>,
  ));
}
/// Create a copy of TopCategoryModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProductCategoryModelCopyWith<$Res>? get category {
    if (_self.category == null) {
    return null;
  }

  return $ProductCategoryModelCopyWith<$Res>(_self.category!, (value) {
    return _then(_self.copyWith(category: value));
  });
}
}


/// Adds pattern-matching-related methods to [TopCategoryModel].
extension TopCategoryModelPatterns on TopCategoryModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TopCategoryModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TopCategoryModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TopCategoryModel value)  $default,){
final _that = this;
switch (_that) {
case _TopCategoryModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TopCategoryModel value)?  $default,){
final _that = this;
switch (_that) {
case _TopCategoryModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'category')  ProductCategoryModel? category, @JsonKey(name: 'products')  List<ProductModel> products)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TopCategoryModel() when $default != null:
return $default(_that.category,_that.products);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'category')  ProductCategoryModel? category, @JsonKey(name: 'products')  List<ProductModel> products)  $default,) {final _that = this;
switch (_that) {
case _TopCategoryModel():
return $default(_that.category,_that.products);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'category')  ProductCategoryModel? category, @JsonKey(name: 'products')  List<ProductModel> products)?  $default,) {final _that = this;
switch (_that) {
case _TopCategoryModel() when $default != null:
return $default(_that.category,_that.products);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TopCategoryModel extends TopCategoryModel {
  const _TopCategoryModel({@JsonKey(name: 'category') this.category, @JsonKey(name: 'products') final  List<ProductModel> products = const []}): _products = products,super._();
  factory _TopCategoryModel.fromJson(Map<String, dynamic> json) => _$TopCategoryModelFromJson(json);

@override@JsonKey(name: 'category') final  ProductCategoryModel? category;
 final  List<ProductModel> _products;
@override@JsonKey(name: 'products') List<ProductModel> get products {
  if (_products is EqualUnmodifiableListView) return _products;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_products);
}


/// Create a copy of TopCategoryModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TopCategoryModelCopyWith<_TopCategoryModel> get copyWith => __$TopCategoryModelCopyWithImpl<_TopCategoryModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TopCategoryModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TopCategoryModel&&(identical(other.category, category) || other.category == category)&&const DeepCollectionEquality().equals(other._products, _products));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,category,const DeepCollectionEquality().hash(_products));

@override
String toString() {
  return 'TopCategoryModel(category: $category, products: $products)';
}


}

/// @nodoc
abstract mixin class _$TopCategoryModelCopyWith<$Res> implements $TopCategoryModelCopyWith<$Res> {
  factory _$TopCategoryModelCopyWith(_TopCategoryModel value, $Res Function(_TopCategoryModel) _then) = __$TopCategoryModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'category') ProductCategoryModel? category,@JsonKey(name: 'products') List<ProductModel> products
});


@override $ProductCategoryModelCopyWith<$Res>? get category;

}
/// @nodoc
class __$TopCategoryModelCopyWithImpl<$Res>
    implements _$TopCategoryModelCopyWith<$Res> {
  __$TopCategoryModelCopyWithImpl(this._self, this._then);

  final _TopCategoryModel _self;
  final $Res Function(_TopCategoryModel) _then;

/// Create a copy of TopCategoryModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? category = freezed,Object? products = null,}) {
  return _then(_TopCategoryModel(
category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as ProductCategoryModel?,products: null == products ? _self._products : products // ignore: cast_nullable_to_non_nullable
as List<ProductModel>,
  ));
}

/// Create a copy of TopCategoryModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProductCategoryModelCopyWith<$Res>? get category {
    if (_self.category == null) {
    return null;
  }

  return $ProductCategoryModelCopyWith<$Res>(_self.category!, (value) {
    return _then(_self.copyWith(category: value));
  });
}
}

// dart format on
