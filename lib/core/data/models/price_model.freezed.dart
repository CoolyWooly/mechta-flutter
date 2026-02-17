// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'price_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PriceModel {

@JsonKey(name: 'basePrice') int? get basePrice;@JsonKey(name: 'finalPrice') int? get finalPrice;
/// Create a copy of PriceModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PriceModelCopyWith<PriceModel> get copyWith => _$PriceModelCopyWithImpl<PriceModel>(this as PriceModel, _$identity);

  /// Serializes this PriceModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PriceModel&&(identical(other.basePrice, basePrice) || other.basePrice == basePrice)&&(identical(other.finalPrice, finalPrice) || other.finalPrice == finalPrice));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,basePrice,finalPrice);

@override
String toString() {
  return 'PriceModel(basePrice: $basePrice, finalPrice: $finalPrice)';
}


}

/// @nodoc
abstract mixin class $PriceModelCopyWith<$Res>  {
  factory $PriceModelCopyWith(PriceModel value, $Res Function(PriceModel) _then) = _$PriceModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'basePrice') int? basePrice,@JsonKey(name: 'finalPrice') int? finalPrice
});




}
/// @nodoc
class _$PriceModelCopyWithImpl<$Res>
    implements $PriceModelCopyWith<$Res> {
  _$PriceModelCopyWithImpl(this._self, this._then);

  final PriceModel _self;
  final $Res Function(PriceModel) _then;

/// Create a copy of PriceModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? basePrice = freezed,Object? finalPrice = freezed,}) {
  return _then(_self.copyWith(
basePrice: freezed == basePrice ? _self.basePrice : basePrice // ignore: cast_nullable_to_non_nullable
as int?,finalPrice: freezed == finalPrice ? _self.finalPrice : finalPrice // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [PriceModel].
extension PriceModelPatterns on PriceModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PriceModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PriceModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PriceModel value)  $default,){
final _that = this;
switch (_that) {
case _PriceModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PriceModel value)?  $default,){
final _that = this;
switch (_that) {
case _PriceModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'basePrice')  int? basePrice, @JsonKey(name: 'finalPrice')  int? finalPrice)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PriceModel() when $default != null:
return $default(_that.basePrice,_that.finalPrice);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'basePrice')  int? basePrice, @JsonKey(name: 'finalPrice')  int? finalPrice)  $default,) {final _that = this;
switch (_that) {
case _PriceModel():
return $default(_that.basePrice,_that.finalPrice);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'basePrice')  int? basePrice, @JsonKey(name: 'finalPrice')  int? finalPrice)?  $default,) {final _that = this;
switch (_that) {
case _PriceModel() when $default != null:
return $default(_that.basePrice,_that.finalPrice);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PriceModel extends PriceModel {
  const _PriceModel({@JsonKey(name: 'basePrice') this.basePrice, @JsonKey(name: 'finalPrice') this.finalPrice}): super._();
  factory _PriceModel.fromJson(Map<String, dynamic> json) => _$PriceModelFromJson(json);

@override@JsonKey(name: 'basePrice') final  int? basePrice;
@override@JsonKey(name: 'finalPrice') final  int? finalPrice;

/// Create a copy of PriceModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PriceModelCopyWith<_PriceModel> get copyWith => __$PriceModelCopyWithImpl<_PriceModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PriceModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PriceModel&&(identical(other.basePrice, basePrice) || other.basePrice == basePrice)&&(identical(other.finalPrice, finalPrice) || other.finalPrice == finalPrice));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,basePrice,finalPrice);

@override
String toString() {
  return 'PriceModel(basePrice: $basePrice, finalPrice: $finalPrice)';
}


}

/// @nodoc
abstract mixin class _$PriceModelCopyWith<$Res> implements $PriceModelCopyWith<$Res> {
  factory _$PriceModelCopyWith(_PriceModel value, $Res Function(_PriceModel) _then) = __$PriceModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'basePrice') int? basePrice,@JsonKey(name: 'finalPrice') int? finalPrice
});




}
/// @nodoc
class __$PriceModelCopyWithImpl<$Res>
    implements _$PriceModelCopyWith<$Res> {
  __$PriceModelCopyWithImpl(this._self, this._then);

  final _PriceModel _self;
  final $Res Function(_PriceModel) _then;

/// Create a copy of PriceModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? basePrice = freezed,Object? finalPrice = freezed,}) {
  return _then(_PriceModel(
basePrice: freezed == basePrice ? _self.basePrice : basePrice // ignore: cast_nullable_to_non_nullable
as int?,finalPrice: freezed == finalPrice ? _self.finalPrice : finalPrice // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
