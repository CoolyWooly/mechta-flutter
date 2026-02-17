// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'preorder_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PreorderModel {

@JsonKey(name: 'activeFrom') String? get activeFrom;@JsonKey(name: 'activeTo') String? get activeTo;@JsonKey(name: 'sellFrom') String? get sellFrom;
/// Create a copy of PreorderModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PreorderModelCopyWith<PreorderModel> get copyWith => _$PreorderModelCopyWithImpl<PreorderModel>(this as PreorderModel, _$identity);

  /// Serializes this PreorderModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PreorderModel&&(identical(other.activeFrom, activeFrom) || other.activeFrom == activeFrom)&&(identical(other.activeTo, activeTo) || other.activeTo == activeTo)&&(identical(other.sellFrom, sellFrom) || other.sellFrom == sellFrom));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,activeFrom,activeTo,sellFrom);

@override
String toString() {
  return 'PreorderModel(activeFrom: $activeFrom, activeTo: $activeTo, sellFrom: $sellFrom)';
}


}

/// @nodoc
abstract mixin class $PreorderModelCopyWith<$Res>  {
  factory $PreorderModelCopyWith(PreorderModel value, $Res Function(PreorderModel) _then) = _$PreorderModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'activeFrom') String? activeFrom,@JsonKey(name: 'activeTo') String? activeTo,@JsonKey(name: 'sellFrom') String? sellFrom
});




}
/// @nodoc
class _$PreorderModelCopyWithImpl<$Res>
    implements $PreorderModelCopyWith<$Res> {
  _$PreorderModelCopyWithImpl(this._self, this._then);

  final PreorderModel _self;
  final $Res Function(PreorderModel) _then;

/// Create a copy of PreorderModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? activeFrom = freezed,Object? activeTo = freezed,Object? sellFrom = freezed,}) {
  return _then(_self.copyWith(
activeFrom: freezed == activeFrom ? _self.activeFrom : activeFrom // ignore: cast_nullable_to_non_nullable
as String?,activeTo: freezed == activeTo ? _self.activeTo : activeTo // ignore: cast_nullable_to_non_nullable
as String?,sellFrom: freezed == sellFrom ? _self.sellFrom : sellFrom // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [PreorderModel].
extension PreorderModelPatterns on PreorderModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PreorderModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PreorderModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PreorderModel value)  $default,){
final _that = this;
switch (_that) {
case _PreorderModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PreorderModel value)?  $default,){
final _that = this;
switch (_that) {
case _PreorderModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'activeFrom')  String? activeFrom, @JsonKey(name: 'activeTo')  String? activeTo, @JsonKey(name: 'sellFrom')  String? sellFrom)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PreorderModel() when $default != null:
return $default(_that.activeFrom,_that.activeTo,_that.sellFrom);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'activeFrom')  String? activeFrom, @JsonKey(name: 'activeTo')  String? activeTo, @JsonKey(name: 'sellFrom')  String? sellFrom)  $default,) {final _that = this;
switch (_that) {
case _PreorderModel():
return $default(_that.activeFrom,_that.activeTo,_that.sellFrom);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'activeFrom')  String? activeFrom, @JsonKey(name: 'activeTo')  String? activeTo, @JsonKey(name: 'sellFrom')  String? sellFrom)?  $default,) {final _that = this;
switch (_that) {
case _PreorderModel() when $default != null:
return $default(_that.activeFrom,_that.activeTo,_that.sellFrom);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PreorderModel extends PreorderModel {
  const _PreorderModel({@JsonKey(name: 'activeFrom') this.activeFrom, @JsonKey(name: 'activeTo') this.activeTo, @JsonKey(name: 'sellFrom') this.sellFrom}): super._();
  factory _PreorderModel.fromJson(Map<String, dynamic> json) => _$PreorderModelFromJson(json);

@override@JsonKey(name: 'activeFrom') final  String? activeFrom;
@override@JsonKey(name: 'activeTo') final  String? activeTo;
@override@JsonKey(name: 'sellFrom') final  String? sellFrom;

/// Create a copy of PreorderModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PreorderModelCopyWith<_PreorderModel> get copyWith => __$PreorderModelCopyWithImpl<_PreorderModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PreorderModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PreorderModel&&(identical(other.activeFrom, activeFrom) || other.activeFrom == activeFrom)&&(identical(other.activeTo, activeTo) || other.activeTo == activeTo)&&(identical(other.sellFrom, sellFrom) || other.sellFrom == sellFrom));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,activeFrom,activeTo,sellFrom);

@override
String toString() {
  return 'PreorderModel(activeFrom: $activeFrom, activeTo: $activeTo, sellFrom: $sellFrom)';
}


}

/// @nodoc
abstract mixin class _$PreorderModelCopyWith<$Res> implements $PreorderModelCopyWith<$Res> {
  factory _$PreorderModelCopyWith(_PreorderModel value, $Res Function(_PreorderModel) _then) = __$PreorderModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'activeFrom') String? activeFrom,@JsonKey(name: 'activeTo') String? activeTo,@JsonKey(name: 'sellFrom') String? sellFrom
});




}
/// @nodoc
class __$PreorderModelCopyWithImpl<$Res>
    implements _$PreorderModelCopyWith<$Res> {
  __$PreorderModelCopyWithImpl(this._self, this._then);

  final _PreorderModel _self;
  final $Res Function(_PreorderModel) _then;

/// Create a copy of PreorderModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? activeFrom = freezed,Object? activeTo = freezed,Object? sellFrom = freezed,}) {
  return _then(_PreorderModel(
activeFrom: freezed == activeFrom ? _self.activeFrom : activeFrom // ignore: cast_nullable_to_non_nullable
as String?,activeTo: freezed == activeTo ? _self.activeTo : activeTo // ignore: cast_nullable_to_non_nullable
as String?,sellFrom: freezed == sellFrom ? _self.sellFrom : sellFrom // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
