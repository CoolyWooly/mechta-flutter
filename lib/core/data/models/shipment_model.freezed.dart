// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shipment_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ShipmentModel {

@JsonKey(name: 'todayDelivery') bool? get todayDelivery;@JsonKey(name: 'expressDelivery') bool? get expressDelivery;@JsonKey(name: 'pickupAvailable') bool? get pickupAvailable;@JsonKey(name: 'subdivisions') int? get subdivisions;
/// Create a copy of ShipmentModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ShipmentModelCopyWith<ShipmentModel> get copyWith => _$ShipmentModelCopyWithImpl<ShipmentModel>(this as ShipmentModel, _$identity);

  /// Serializes this ShipmentModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ShipmentModel&&(identical(other.todayDelivery, todayDelivery) || other.todayDelivery == todayDelivery)&&(identical(other.expressDelivery, expressDelivery) || other.expressDelivery == expressDelivery)&&(identical(other.pickupAvailable, pickupAvailable) || other.pickupAvailable == pickupAvailable)&&(identical(other.subdivisions, subdivisions) || other.subdivisions == subdivisions));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,todayDelivery,expressDelivery,pickupAvailable,subdivisions);

@override
String toString() {
  return 'ShipmentModel(todayDelivery: $todayDelivery, expressDelivery: $expressDelivery, pickupAvailable: $pickupAvailable, subdivisions: $subdivisions)';
}


}

/// @nodoc
abstract mixin class $ShipmentModelCopyWith<$Res>  {
  factory $ShipmentModelCopyWith(ShipmentModel value, $Res Function(ShipmentModel) _then) = _$ShipmentModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'todayDelivery') bool? todayDelivery,@JsonKey(name: 'expressDelivery') bool? expressDelivery,@JsonKey(name: 'pickupAvailable') bool? pickupAvailable,@JsonKey(name: 'subdivisions') int? subdivisions
});




}
/// @nodoc
class _$ShipmentModelCopyWithImpl<$Res>
    implements $ShipmentModelCopyWith<$Res> {
  _$ShipmentModelCopyWithImpl(this._self, this._then);

  final ShipmentModel _self;
  final $Res Function(ShipmentModel) _then;

/// Create a copy of ShipmentModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? todayDelivery = freezed,Object? expressDelivery = freezed,Object? pickupAvailable = freezed,Object? subdivisions = freezed,}) {
  return _then(_self.copyWith(
todayDelivery: freezed == todayDelivery ? _self.todayDelivery : todayDelivery // ignore: cast_nullable_to_non_nullable
as bool?,expressDelivery: freezed == expressDelivery ? _self.expressDelivery : expressDelivery // ignore: cast_nullable_to_non_nullable
as bool?,pickupAvailable: freezed == pickupAvailable ? _self.pickupAvailable : pickupAvailable // ignore: cast_nullable_to_non_nullable
as bool?,subdivisions: freezed == subdivisions ? _self.subdivisions : subdivisions // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [ShipmentModel].
extension ShipmentModelPatterns on ShipmentModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ShipmentModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ShipmentModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ShipmentModel value)  $default,){
final _that = this;
switch (_that) {
case _ShipmentModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ShipmentModel value)?  $default,){
final _that = this;
switch (_that) {
case _ShipmentModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'todayDelivery')  bool? todayDelivery, @JsonKey(name: 'expressDelivery')  bool? expressDelivery, @JsonKey(name: 'pickupAvailable')  bool? pickupAvailable, @JsonKey(name: 'subdivisions')  int? subdivisions)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ShipmentModel() when $default != null:
return $default(_that.todayDelivery,_that.expressDelivery,_that.pickupAvailable,_that.subdivisions);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'todayDelivery')  bool? todayDelivery, @JsonKey(name: 'expressDelivery')  bool? expressDelivery, @JsonKey(name: 'pickupAvailable')  bool? pickupAvailable, @JsonKey(name: 'subdivisions')  int? subdivisions)  $default,) {final _that = this;
switch (_that) {
case _ShipmentModel():
return $default(_that.todayDelivery,_that.expressDelivery,_that.pickupAvailable,_that.subdivisions);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'todayDelivery')  bool? todayDelivery, @JsonKey(name: 'expressDelivery')  bool? expressDelivery, @JsonKey(name: 'pickupAvailable')  bool? pickupAvailable, @JsonKey(name: 'subdivisions')  int? subdivisions)?  $default,) {final _that = this;
switch (_that) {
case _ShipmentModel() when $default != null:
return $default(_that.todayDelivery,_that.expressDelivery,_that.pickupAvailable,_that.subdivisions);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ShipmentModel extends ShipmentModel {
  const _ShipmentModel({@JsonKey(name: 'todayDelivery') this.todayDelivery, @JsonKey(name: 'expressDelivery') this.expressDelivery, @JsonKey(name: 'pickupAvailable') this.pickupAvailable, @JsonKey(name: 'subdivisions') this.subdivisions}): super._();
  factory _ShipmentModel.fromJson(Map<String, dynamic> json) => _$ShipmentModelFromJson(json);

@override@JsonKey(name: 'todayDelivery') final  bool? todayDelivery;
@override@JsonKey(name: 'expressDelivery') final  bool? expressDelivery;
@override@JsonKey(name: 'pickupAvailable') final  bool? pickupAvailable;
@override@JsonKey(name: 'subdivisions') final  int? subdivisions;

/// Create a copy of ShipmentModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ShipmentModelCopyWith<_ShipmentModel> get copyWith => __$ShipmentModelCopyWithImpl<_ShipmentModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ShipmentModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ShipmentModel&&(identical(other.todayDelivery, todayDelivery) || other.todayDelivery == todayDelivery)&&(identical(other.expressDelivery, expressDelivery) || other.expressDelivery == expressDelivery)&&(identical(other.pickupAvailable, pickupAvailable) || other.pickupAvailable == pickupAvailable)&&(identical(other.subdivisions, subdivisions) || other.subdivisions == subdivisions));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,todayDelivery,expressDelivery,pickupAvailable,subdivisions);

@override
String toString() {
  return 'ShipmentModel(todayDelivery: $todayDelivery, expressDelivery: $expressDelivery, pickupAvailable: $pickupAvailable, subdivisions: $subdivisions)';
}


}

/// @nodoc
abstract mixin class _$ShipmentModelCopyWith<$Res> implements $ShipmentModelCopyWith<$Res> {
  factory _$ShipmentModelCopyWith(_ShipmentModel value, $Res Function(_ShipmentModel) _then) = __$ShipmentModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'todayDelivery') bool? todayDelivery,@JsonKey(name: 'expressDelivery') bool? expressDelivery,@JsonKey(name: 'pickupAvailable') bool? pickupAvailable,@JsonKey(name: 'subdivisions') int? subdivisions
});




}
/// @nodoc
class __$ShipmentModelCopyWithImpl<$Res>
    implements _$ShipmentModelCopyWith<$Res> {
  __$ShipmentModelCopyWithImpl(this._self, this._then);

  final _ShipmentModel _self;
  final $Res Function(_ShipmentModel) _then;

/// Create a copy of ShipmentModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? todayDelivery = freezed,Object? expressDelivery = freezed,Object? pickupAvailable = freezed,Object? subdivisions = freezed,}) {
  return _then(_ShipmentModel(
todayDelivery: freezed == todayDelivery ? _self.todayDelivery : todayDelivery // ignore: cast_nullable_to_non_nullable
as bool?,expressDelivery: freezed == expressDelivery ? _self.expressDelivery : expressDelivery // ignore: cast_nullable_to_non_nullable
as bool?,pickupAvailable: freezed == pickupAvailable ? _self.pickupAvailable : pickupAvailable // ignore: cast_nullable_to_non_nullable
as bool?,subdivisions: freezed == subdivisions ? _self.subdivisions : subdivisions // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
