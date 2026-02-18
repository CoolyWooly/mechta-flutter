// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'subcatalog_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SubcatalogResponseModel {

 List<ProductModel>? get products; SubcatalogMetaModel? get meta;
/// Create a copy of SubcatalogResponseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SubcatalogResponseModelCopyWith<SubcatalogResponseModel> get copyWith => _$SubcatalogResponseModelCopyWithImpl<SubcatalogResponseModel>(this as SubcatalogResponseModel, _$identity);

  /// Serializes this SubcatalogResponseModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SubcatalogResponseModel&&const DeepCollectionEquality().equals(other.products, products)&&(identical(other.meta, meta) || other.meta == meta));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(products),meta);

@override
String toString() {
  return 'SubcatalogResponseModel(products: $products, meta: $meta)';
}


}

/// @nodoc
abstract mixin class $SubcatalogResponseModelCopyWith<$Res>  {
  factory $SubcatalogResponseModelCopyWith(SubcatalogResponseModel value, $Res Function(SubcatalogResponseModel) _then) = _$SubcatalogResponseModelCopyWithImpl;
@useResult
$Res call({
 List<ProductModel>? products, SubcatalogMetaModel? meta
});


$SubcatalogMetaModelCopyWith<$Res>? get meta;

}
/// @nodoc
class _$SubcatalogResponseModelCopyWithImpl<$Res>
    implements $SubcatalogResponseModelCopyWith<$Res> {
  _$SubcatalogResponseModelCopyWithImpl(this._self, this._then);

  final SubcatalogResponseModel _self;
  final $Res Function(SubcatalogResponseModel) _then;

/// Create a copy of SubcatalogResponseModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? products = freezed,Object? meta = freezed,}) {
  return _then(_self.copyWith(
products: freezed == products ? _self.products : products // ignore: cast_nullable_to_non_nullable
as List<ProductModel>?,meta: freezed == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as SubcatalogMetaModel?,
  ));
}
/// Create a copy of SubcatalogResponseModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SubcatalogMetaModelCopyWith<$Res>? get meta {
    if (_self.meta == null) {
    return null;
  }

  return $SubcatalogMetaModelCopyWith<$Res>(_self.meta!, (value) {
    return _then(_self.copyWith(meta: value));
  });
}
}


/// Adds pattern-matching-related methods to [SubcatalogResponseModel].
extension SubcatalogResponseModelPatterns on SubcatalogResponseModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SubcatalogResponseModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SubcatalogResponseModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SubcatalogResponseModel value)  $default,){
final _that = this;
switch (_that) {
case _SubcatalogResponseModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SubcatalogResponseModel value)?  $default,){
final _that = this;
switch (_that) {
case _SubcatalogResponseModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<ProductModel>? products,  SubcatalogMetaModel? meta)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SubcatalogResponseModel() when $default != null:
return $default(_that.products,_that.meta);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<ProductModel>? products,  SubcatalogMetaModel? meta)  $default,) {final _that = this;
switch (_that) {
case _SubcatalogResponseModel():
return $default(_that.products,_that.meta);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<ProductModel>? products,  SubcatalogMetaModel? meta)?  $default,) {final _that = this;
switch (_that) {
case _SubcatalogResponseModel() when $default != null:
return $default(_that.products,_that.meta);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SubcatalogResponseModel implements SubcatalogResponseModel {
  const _SubcatalogResponseModel({final  List<ProductModel>? products, this.meta}): _products = products;
  factory _SubcatalogResponseModel.fromJson(Map<String, dynamic> json) => _$SubcatalogResponseModelFromJson(json);

 final  List<ProductModel>? _products;
@override List<ProductModel>? get products {
  final value = _products;
  if (value == null) return null;
  if (_products is EqualUnmodifiableListView) return _products;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  SubcatalogMetaModel? meta;

/// Create a copy of SubcatalogResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SubcatalogResponseModelCopyWith<_SubcatalogResponseModel> get copyWith => __$SubcatalogResponseModelCopyWithImpl<_SubcatalogResponseModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SubcatalogResponseModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SubcatalogResponseModel&&const DeepCollectionEquality().equals(other._products, _products)&&(identical(other.meta, meta) || other.meta == meta));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_products),meta);

@override
String toString() {
  return 'SubcatalogResponseModel(products: $products, meta: $meta)';
}


}

/// @nodoc
abstract mixin class _$SubcatalogResponseModelCopyWith<$Res> implements $SubcatalogResponseModelCopyWith<$Res> {
  factory _$SubcatalogResponseModelCopyWith(_SubcatalogResponseModel value, $Res Function(_SubcatalogResponseModel) _then) = __$SubcatalogResponseModelCopyWithImpl;
@override @useResult
$Res call({
 List<ProductModel>? products, SubcatalogMetaModel? meta
});


@override $SubcatalogMetaModelCopyWith<$Res>? get meta;

}
/// @nodoc
class __$SubcatalogResponseModelCopyWithImpl<$Res>
    implements _$SubcatalogResponseModelCopyWith<$Res> {
  __$SubcatalogResponseModelCopyWithImpl(this._self, this._then);

  final _SubcatalogResponseModel _self;
  final $Res Function(_SubcatalogResponseModel) _then;

/// Create a copy of SubcatalogResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? products = freezed,Object? meta = freezed,}) {
  return _then(_SubcatalogResponseModel(
products: freezed == products ? _self._products : products // ignore: cast_nullable_to_non_nullable
as List<ProductModel>?,meta: freezed == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as SubcatalogMetaModel?,
  ));
}

/// Create a copy of SubcatalogResponseModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SubcatalogMetaModelCopyWith<$Res>? get meta {
    if (_self.meta == null) {
    return null;
  }

  return $SubcatalogMetaModelCopyWith<$Res>(_self.meta!, (value) {
    return _then(_self.copyWith(meta: value));
  });
}
}


/// @nodoc
mixin _$SubcatalogMetaModel {

 int? get totalCount;
/// Create a copy of SubcatalogMetaModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SubcatalogMetaModelCopyWith<SubcatalogMetaModel> get copyWith => _$SubcatalogMetaModelCopyWithImpl<SubcatalogMetaModel>(this as SubcatalogMetaModel, _$identity);

  /// Serializes this SubcatalogMetaModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SubcatalogMetaModel&&(identical(other.totalCount, totalCount) || other.totalCount == totalCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,totalCount);

@override
String toString() {
  return 'SubcatalogMetaModel(totalCount: $totalCount)';
}


}

/// @nodoc
abstract mixin class $SubcatalogMetaModelCopyWith<$Res>  {
  factory $SubcatalogMetaModelCopyWith(SubcatalogMetaModel value, $Res Function(SubcatalogMetaModel) _then) = _$SubcatalogMetaModelCopyWithImpl;
@useResult
$Res call({
 int? totalCount
});




}
/// @nodoc
class _$SubcatalogMetaModelCopyWithImpl<$Res>
    implements $SubcatalogMetaModelCopyWith<$Res> {
  _$SubcatalogMetaModelCopyWithImpl(this._self, this._then);

  final SubcatalogMetaModel _self;
  final $Res Function(SubcatalogMetaModel) _then;

/// Create a copy of SubcatalogMetaModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? totalCount = freezed,}) {
  return _then(_self.copyWith(
totalCount: freezed == totalCount ? _self.totalCount : totalCount // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [SubcatalogMetaModel].
extension SubcatalogMetaModelPatterns on SubcatalogMetaModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SubcatalogMetaModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SubcatalogMetaModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SubcatalogMetaModel value)  $default,){
final _that = this;
switch (_that) {
case _SubcatalogMetaModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SubcatalogMetaModel value)?  $default,){
final _that = this;
switch (_that) {
case _SubcatalogMetaModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? totalCount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SubcatalogMetaModel() when $default != null:
return $default(_that.totalCount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? totalCount)  $default,) {final _that = this;
switch (_that) {
case _SubcatalogMetaModel():
return $default(_that.totalCount);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? totalCount)?  $default,) {final _that = this;
switch (_that) {
case _SubcatalogMetaModel() when $default != null:
return $default(_that.totalCount);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SubcatalogMetaModel implements SubcatalogMetaModel {
  const _SubcatalogMetaModel({this.totalCount});
  factory _SubcatalogMetaModel.fromJson(Map<String, dynamic> json) => _$SubcatalogMetaModelFromJson(json);

@override final  int? totalCount;

/// Create a copy of SubcatalogMetaModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SubcatalogMetaModelCopyWith<_SubcatalogMetaModel> get copyWith => __$SubcatalogMetaModelCopyWithImpl<_SubcatalogMetaModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SubcatalogMetaModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SubcatalogMetaModel&&(identical(other.totalCount, totalCount) || other.totalCount == totalCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,totalCount);

@override
String toString() {
  return 'SubcatalogMetaModel(totalCount: $totalCount)';
}


}

/// @nodoc
abstract mixin class _$SubcatalogMetaModelCopyWith<$Res> implements $SubcatalogMetaModelCopyWith<$Res> {
  factory _$SubcatalogMetaModelCopyWith(_SubcatalogMetaModel value, $Res Function(_SubcatalogMetaModel) _then) = __$SubcatalogMetaModelCopyWithImpl;
@override @useResult
$Res call({
 int? totalCount
});




}
/// @nodoc
class __$SubcatalogMetaModelCopyWithImpl<$Res>
    implements _$SubcatalogMetaModelCopyWith<$Res> {
  __$SubcatalogMetaModelCopyWithImpl(this._self, this._then);

  final _SubcatalogMetaModel _self;
  final $Res Function(_SubcatalogMetaModel) _then;

/// Create a copy of SubcatalogMetaModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? totalCount = freezed,}) {
  return _then(_SubcatalogMetaModel(
totalCount: freezed == totalCount ? _self.totalCount : totalCount // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
