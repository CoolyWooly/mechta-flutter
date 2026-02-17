// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'property_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PropertyModel {

@JsonKey(name: 'name') String? get name;@JsonKey(name: 'url') String? get url;@JsonKey(name: 'value') String? get value;
/// Create a copy of PropertyModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PropertyModelCopyWith<PropertyModel> get copyWith => _$PropertyModelCopyWithImpl<PropertyModel>(this as PropertyModel, _$identity);

  /// Serializes this PropertyModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PropertyModel&&(identical(other.name, name) || other.name == name)&&(identical(other.url, url) || other.url == url)&&(identical(other.value, value) || other.value == value));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,url,value);

@override
String toString() {
  return 'PropertyModel(name: $name, url: $url, value: $value)';
}


}

/// @nodoc
abstract mixin class $PropertyModelCopyWith<$Res>  {
  factory $PropertyModelCopyWith(PropertyModel value, $Res Function(PropertyModel) _then) = _$PropertyModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'name') String? name,@JsonKey(name: 'url') String? url,@JsonKey(name: 'value') String? value
});




}
/// @nodoc
class _$PropertyModelCopyWithImpl<$Res>
    implements $PropertyModelCopyWith<$Res> {
  _$PropertyModelCopyWithImpl(this._self, this._then);

  final PropertyModel _self;
  final $Res Function(PropertyModel) _then;

/// Create a copy of PropertyModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = freezed,Object? url = freezed,Object? value = freezed,}) {
  return _then(_self.copyWith(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,url: freezed == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String?,value: freezed == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [PropertyModel].
extension PropertyModelPatterns on PropertyModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PropertyModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PropertyModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PropertyModel value)  $default,){
final _that = this;
switch (_that) {
case _PropertyModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PropertyModel value)?  $default,){
final _that = this;
switch (_that) {
case _PropertyModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'name')  String? name, @JsonKey(name: 'url')  String? url, @JsonKey(name: 'value')  String? value)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PropertyModel() when $default != null:
return $default(_that.name,_that.url,_that.value);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'name')  String? name, @JsonKey(name: 'url')  String? url, @JsonKey(name: 'value')  String? value)  $default,) {final _that = this;
switch (_that) {
case _PropertyModel():
return $default(_that.name,_that.url,_that.value);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'name')  String? name, @JsonKey(name: 'url')  String? url, @JsonKey(name: 'value')  String? value)?  $default,) {final _that = this;
switch (_that) {
case _PropertyModel() when $default != null:
return $default(_that.name,_that.url,_that.value);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PropertyModel extends PropertyModel {
  const _PropertyModel({@JsonKey(name: 'name') this.name, @JsonKey(name: 'url') this.url, @JsonKey(name: 'value') this.value}): super._();
  factory _PropertyModel.fromJson(Map<String, dynamic> json) => _$PropertyModelFromJson(json);

@override@JsonKey(name: 'name') final  String? name;
@override@JsonKey(name: 'url') final  String? url;
@override@JsonKey(name: 'value') final  String? value;

/// Create a copy of PropertyModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PropertyModelCopyWith<_PropertyModel> get copyWith => __$PropertyModelCopyWithImpl<_PropertyModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PropertyModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PropertyModel&&(identical(other.name, name) || other.name == name)&&(identical(other.url, url) || other.url == url)&&(identical(other.value, value) || other.value == value));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,url,value);

@override
String toString() {
  return 'PropertyModel(name: $name, url: $url, value: $value)';
}


}

/// @nodoc
abstract mixin class _$PropertyModelCopyWith<$Res> implements $PropertyModelCopyWith<$Res> {
  factory _$PropertyModelCopyWith(_PropertyModel value, $Res Function(_PropertyModel) _then) = __$PropertyModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'name') String? name,@JsonKey(name: 'url') String? url,@JsonKey(name: 'value') String? value
});




}
/// @nodoc
class __$PropertyModelCopyWithImpl<$Res>
    implements _$PropertyModelCopyWith<$Res> {
  __$PropertyModelCopyWithImpl(this._self, this._then);

  final _PropertyModel _self;
  final $Res Function(_PropertyModel) _then;

/// Create a copy of PropertyModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = freezed,Object? url = freezed,Object? value = freezed,}) {
  return _then(_PropertyModel(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,url: freezed == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String?,value: freezed == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
