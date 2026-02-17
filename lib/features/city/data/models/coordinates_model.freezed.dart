// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'coordinates_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CoordinatesModel {

@JsonKey(name: 'lat') double? get lat;@JsonKey(name: 'lon') double? get lon;
/// Create a copy of CoordinatesModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CoordinatesModelCopyWith<CoordinatesModel> get copyWith => _$CoordinatesModelCopyWithImpl<CoordinatesModel>(this as CoordinatesModel, _$identity);

  /// Serializes this CoordinatesModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CoordinatesModel&&(identical(other.lat, lat) || other.lat == lat)&&(identical(other.lon, lon) || other.lon == lon));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,lat,lon);

@override
String toString() {
  return 'CoordinatesModel(lat: $lat, lon: $lon)';
}


}

/// @nodoc
abstract mixin class $CoordinatesModelCopyWith<$Res>  {
  factory $CoordinatesModelCopyWith(CoordinatesModel value, $Res Function(CoordinatesModel) _then) = _$CoordinatesModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'lat') double? lat,@JsonKey(name: 'lon') double? lon
});




}
/// @nodoc
class _$CoordinatesModelCopyWithImpl<$Res>
    implements $CoordinatesModelCopyWith<$Res> {
  _$CoordinatesModelCopyWithImpl(this._self, this._then);

  final CoordinatesModel _self;
  final $Res Function(CoordinatesModel) _then;

/// Create a copy of CoordinatesModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? lat = freezed,Object? lon = freezed,}) {
  return _then(_self.copyWith(
lat: freezed == lat ? _self.lat : lat // ignore: cast_nullable_to_non_nullable
as double?,lon: freezed == lon ? _self.lon : lon // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}

}


/// Adds pattern-matching-related methods to [CoordinatesModel].
extension CoordinatesModelPatterns on CoordinatesModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CoordinatesModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CoordinatesModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CoordinatesModel value)  $default,){
final _that = this;
switch (_that) {
case _CoordinatesModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CoordinatesModel value)?  $default,){
final _that = this;
switch (_that) {
case _CoordinatesModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'lat')  double? lat, @JsonKey(name: 'lon')  double? lon)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CoordinatesModel() when $default != null:
return $default(_that.lat,_that.lon);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'lat')  double? lat, @JsonKey(name: 'lon')  double? lon)  $default,) {final _that = this;
switch (_that) {
case _CoordinatesModel():
return $default(_that.lat,_that.lon);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'lat')  double? lat, @JsonKey(name: 'lon')  double? lon)?  $default,) {final _that = this;
switch (_that) {
case _CoordinatesModel() when $default != null:
return $default(_that.lat,_that.lon);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CoordinatesModel implements CoordinatesModel {
  const _CoordinatesModel({@JsonKey(name: 'lat') this.lat, @JsonKey(name: 'lon') this.lon});
  factory _CoordinatesModel.fromJson(Map<String, dynamic> json) => _$CoordinatesModelFromJson(json);

@override@JsonKey(name: 'lat') final  double? lat;
@override@JsonKey(name: 'lon') final  double? lon;

/// Create a copy of CoordinatesModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CoordinatesModelCopyWith<_CoordinatesModel> get copyWith => __$CoordinatesModelCopyWithImpl<_CoordinatesModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CoordinatesModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CoordinatesModel&&(identical(other.lat, lat) || other.lat == lat)&&(identical(other.lon, lon) || other.lon == lon));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,lat,lon);

@override
String toString() {
  return 'CoordinatesModel(lat: $lat, lon: $lon)';
}


}

/// @nodoc
abstract mixin class _$CoordinatesModelCopyWith<$Res> implements $CoordinatesModelCopyWith<$Res> {
  factory _$CoordinatesModelCopyWith(_CoordinatesModel value, $Res Function(_CoordinatesModel) _then) = __$CoordinatesModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'lat') double? lat,@JsonKey(name: 'lon') double? lon
});




}
/// @nodoc
class __$CoordinatesModelCopyWithImpl<$Res>
    implements _$CoordinatesModelCopyWith<$Res> {
  __$CoordinatesModelCopyWithImpl(this._self, this._then);

  final _CoordinatesModel _self;
  final $Res Function(_CoordinatesModel) _then;

/// Create a copy of CoordinatesModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? lat = freezed,Object? lon = freezed,}) {
  return _then(_CoordinatesModel(
lat: freezed == lat ? _self.lat : lat // ignore: cast_nullable_to_non_nullable
as double?,lon: freezed == lon ? _self.lon : lon // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}


}

// dart format on
