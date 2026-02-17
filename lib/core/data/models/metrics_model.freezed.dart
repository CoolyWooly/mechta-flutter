// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'metrics_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MetricsModel {

@JsonKey(name: 'name') String? get name;@JsonKey(name: 'brand') String? get brand;@JsonKey(name: 'category') String? get category;
/// Create a copy of MetricsModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MetricsModelCopyWith<MetricsModel> get copyWith => _$MetricsModelCopyWithImpl<MetricsModel>(this as MetricsModel, _$identity);

  /// Serializes this MetricsModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MetricsModel&&(identical(other.name, name) || other.name == name)&&(identical(other.brand, brand) || other.brand == brand)&&(identical(other.category, category) || other.category == category));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,brand,category);

@override
String toString() {
  return 'MetricsModel(name: $name, brand: $brand, category: $category)';
}


}

/// @nodoc
abstract mixin class $MetricsModelCopyWith<$Res>  {
  factory $MetricsModelCopyWith(MetricsModel value, $Res Function(MetricsModel) _then) = _$MetricsModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'name') String? name,@JsonKey(name: 'brand') String? brand,@JsonKey(name: 'category') String? category
});




}
/// @nodoc
class _$MetricsModelCopyWithImpl<$Res>
    implements $MetricsModelCopyWith<$Res> {
  _$MetricsModelCopyWithImpl(this._self, this._then);

  final MetricsModel _self;
  final $Res Function(MetricsModel) _then;

/// Create a copy of MetricsModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = freezed,Object? brand = freezed,Object? category = freezed,}) {
  return _then(_self.copyWith(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,brand: freezed == brand ? _self.brand : brand // ignore: cast_nullable_to_non_nullable
as String?,category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [MetricsModel].
extension MetricsModelPatterns on MetricsModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MetricsModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MetricsModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MetricsModel value)  $default,){
final _that = this;
switch (_that) {
case _MetricsModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MetricsModel value)?  $default,){
final _that = this;
switch (_that) {
case _MetricsModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'name')  String? name, @JsonKey(name: 'brand')  String? brand, @JsonKey(name: 'category')  String? category)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MetricsModel() when $default != null:
return $default(_that.name,_that.brand,_that.category);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'name')  String? name, @JsonKey(name: 'brand')  String? brand, @JsonKey(name: 'category')  String? category)  $default,) {final _that = this;
switch (_that) {
case _MetricsModel():
return $default(_that.name,_that.brand,_that.category);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'name')  String? name, @JsonKey(name: 'brand')  String? brand, @JsonKey(name: 'category')  String? category)?  $default,) {final _that = this;
switch (_that) {
case _MetricsModel() when $default != null:
return $default(_that.name,_that.brand,_that.category);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MetricsModel extends MetricsModel {
  const _MetricsModel({@JsonKey(name: 'name') this.name, @JsonKey(name: 'brand') this.brand, @JsonKey(name: 'category') this.category}): super._();
  factory _MetricsModel.fromJson(Map<String, dynamic> json) => _$MetricsModelFromJson(json);

@override@JsonKey(name: 'name') final  String? name;
@override@JsonKey(name: 'brand') final  String? brand;
@override@JsonKey(name: 'category') final  String? category;

/// Create a copy of MetricsModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MetricsModelCopyWith<_MetricsModel> get copyWith => __$MetricsModelCopyWithImpl<_MetricsModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MetricsModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MetricsModel&&(identical(other.name, name) || other.name == name)&&(identical(other.brand, brand) || other.brand == brand)&&(identical(other.category, category) || other.category == category));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,brand,category);

@override
String toString() {
  return 'MetricsModel(name: $name, brand: $brand, category: $category)';
}


}

/// @nodoc
abstract mixin class _$MetricsModelCopyWith<$Res> implements $MetricsModelCopyWith<$Res> {
  factory _$MetricsModelCopyWith(_MetricsModel value, $Res Function(_MetricsModel) _then) = __$MetricsModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'name') String? name,@JsonKey(name: 'brand') String? brand,@JsonKey(name: 'category') String? category
});




}
/// @nodoc
class __$MetricsModelCopyWithImpl<$Res>
    implements _$MetricsModelCopyWith<$Res> {
  __$MetricsModelCopyWithImpl(this._self, this._then);

  final _MetricsModel _self;
  final $Res Function(_MetricsModel) _then;

/// Create a copy of MetricsModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = freezed,Object? brand = freezed,Object? category = freezed,}) {
  return _then(_MetricsModel(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,brand: freezed == brand ? _self.brand : brand // ignore: cast_nullable_to_non_nullable
as String?,category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
