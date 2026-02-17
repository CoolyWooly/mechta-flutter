// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'city_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CityModel {

@JsonKey(name: 'code') String? get code;@JsonKey(name: 'kaspiCode') String? get kaspiCode;@JsonKey(name: 'name') String? get name;@JsonKey(name: 'phones') List<String>? get phones;@JsonKey(name: 'coordinates') CoordinatesModel? get coordinates;
/// Create a copy of CityModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CityModelCopyWith<CityModel> get copyWith => _$CityModelCopyWithImpl<CityModel>(this as CityModel, _$identity);

  /// Serializes this CityModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CityModel&&(identical(other.code, code) || other.code == code)&&(identical(other.kaspiCode, kaspiCode) || other.kaspiCode == kaspiCode)&&(identical(other.name, name) || other.name == name)&&const DeepCollectionEquality().equals(other.phones, phones)&&(identical(other.coordinates, coordinates) || other.coordinates == coordinates));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,code,kaspiCode,name,const DeepCollectionEquality().hash(phones),coordinates);

@override
String toString() {
  return 'CityModel(code: $code, kaspiCode: $kaspiCode, name: $name, phones: $phones, coordinates: $coordinates)';
}


}

/// @nodoc
abstract mixin class $CityModelCopyWith<$Res>  {
  factory $CityModelCopyWith(CityModel value, $Res Function(CityModel) _then) = _$CityModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'code') String? code,@JsonKey(name: 'kaspiCode') String? kaspiCode,@JsonKey(name: 'name') String? name,@JsonKey(name: 'phones') List<String>? phones,@JsonKey(name: 'coordinates') CoordinatesModel? coordinates
});


$CoordinatesModelCopyWith<$Res>? get coordinates;

}
/// @nodoc
class _$CityModelCopyWithImpl<$Res>
    implements $CityModelCopyWith<$Res> {
  _$CityModelCopyWithImpl(this._self, this._then);

  final CityModel _self;
  final $Res Function(CityModel) _then;

/// Create a copy of CityModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? code = freezed,Object? kaspiCode = freezed,Object? name = freezed,Object? phones = freezed,Object? coordinates = freezed,}) {
  return _then(_self.copyWith(
code: freezed == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String?,kaspiCode: freezed == kaspiCode ? _self.kaspiCode : kaspiCode // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,phones: freezed == phones ? _self.phones : phones // ignore: cast_nullable_to_non_nullable
as List<String>?,coordinates: freezed == coordinates ? _self.coordinates : coordinates // ignore: cast_nullable_to_non_nullable
as CoordinatesModel?,
  ));
}
/// Create a copy of CityModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CoordinatesModelCopyWith<$Res>? get coordinates {
    if (_self.coordinates == null) {
    return null;
  }

  return $CoordinatesModelCopyWith<$Res>(_self.coordinates!, (value) {
    return _then(_self.copyWith(coordinates: value));
  });
}
}


/// Adds pattern-matching-related methods to [CityModel].
extension CityModelPatterns on CityModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CityModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CityModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CityModel value)  $default,){
final _that = this;
switch (_that) {
case _CityModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CityModel value)?  $default,){
final _that = this;
switch (_that) {
case _CityModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'code')  String? code, @JsonKey(name: 'kaspiCode')  String? kaspiCode, @JsonKey(name: 'name')  String? name, @JsonKey(name: 'phones')  List<String>? phones, @JsonKey(name: 'coordinates')  CoordinatesModel? coordinates)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CityModel() when $default != null:
return $default(_that.code,_that.kaspiCode,_that.name,_that.phones,_that.coordinates);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'code')  String? code, @JsonKey(name: 'kaspiCode')  String? kaspiCode, @JsonKey(name: 'name')  String? name, @JsonKey(name: 'phones')  List<String>? phones, @JsonKey(name: 'coordinates')  CoordinatesModel? coordinates)  $default,) {final _that = this;
switch (_that) {
case _CityModel():
return $default(_that.code,_that.kaspiCode,_that.name,_that.phones,_that.coordinates);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'code')  String? code, @JsonKey(name: 'kaspiCode')  String? kaspiCode, @JsonKey(name: 'name')  String? name, @JsonKey(name: 'phones')  List<String>? phones, @JsonKey(name: 'coordinates')  CoordinatesModel? coordinates)?  $default,) {final _that = this;
switch (_that) {
case _CityModel() when $default != null:
return $default(_that.code,_that.kaspiCode,_that.name,_that.phones,_that.coordinates);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CityModel extends CityModel {
  const _CityModel({@JsonKey(name: 'code') this.code, @JsonKey(name: 'kaspiCode') this.kaspiCode, @JsonKey(name: 'name') this.name, @JsonKey(name: 'phones') final  List<String>? phones, @JsonKey(name: 'coordinates') this.coordinates}): _phones = phones,super._();
  factory _CityModel.fromJson(Map<String, dynamic> json) => _$CityModelFromJson(json);

@override@JsonKey(name: 'code') final  String? code;
@override@JsonKey(name: 'kaspiCode') final  String? kaspiCode;
@override@JsonKey(name: 'name') final  String? name;
 final  List<String>? _phones;
@override@JsonKey(name: 'phones') List<String>? get phones {
  final value = _phones;
  if (value == null) return null;
  if (_phones is EqualUnmodifiableListView) return _phones;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(name: 'coordinates') final  CoordinatesModel? coordinates;

/// Create a copy of CityModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CityModelCopyWith<_CityModel> get copyWith => __$CityModelCopyWithImpl<_CityModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CityModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CityModel&&(identical(other.code, code) || other.code == code)&&(identical(other.kaspiCode, kaspiCode) || other.kaspiCode == kaspiCode)&&(identical(other.name, name) || other.name == name)&&const DeepCollectionEquality().equals(other._phones, _phones)&&(identical(other.coordinates, coordinates) || other.coordinates == coordinates));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,code,kaspiCode,name,const DeepCollectionEquality().hash(_phones),coordinates);

@override
String toString() {
  return 'CityModel(code: $code, kaspiCode: $kaspiCode, name: $name, phones: $phones, coordinates: $coordinates)';
}


}

/// @nodoc
abstract mixin class _$CityModelCopyWith<$Res> implements $CityModelCopyWith<$Res> {
  factory _$CityModelCopyWith(_CityModel value, $Res Function(_CityModel) _then) = __$CityModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'code') String? code,@JsonKey(name: 'kaspiCode') String? kaspiCode,@JsonKey(name: 'name') String? name,@JsonKey(name: 'phones') List<String>? phones,@JsonKey(name: 'coordinates') CoordinatesModel? coordinates
});


@override $CoordinatesModelCopyWith<$Res>? get coordinates;

}
/// @nodoc
class __$CityModelCopyWithImpl<$Res>
    implements _$CityModelCopyWith<$Res> {
  __$CityModelCopyWithImpl(this._self, this._then);

  final _CityModel _self;
  final $Res Function(_CityModel) _then;

/// Create a copy of CityModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? code = freezed,Object? kaspiCode = freezed,Object? name = freezed,Object? phones = freezed,Object? coordinates = freezed,}) {
  return _then(_CityModel(
code: freezed == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String?,kaspiCode: freezed == kaspiCode ? _self.kaspiCode : kaspiCode // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,phones: freezed == phones ? _self._phones : phones // ignore: cast_nullable_to_non_nullable
as List<String>?,coordinates: freezed == coordinates ? _self.coordinates : coordinates // ignore: cast_nullable_to_non_nullable
as CoordinatesModel?,
  ));
}

/// Create a copy of CityModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CoordinatesModelCopyWith<$Res>? get coordinates {
    if (_self.coordinates == null) {
    return null;
  }

  return $CoordinatesModelCopyWith<$Res>(_self.coordinates!, (value) {
    return _then(_self.copyWith(coordinates: value));
  });
}
}

// dart format on
