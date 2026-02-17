// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'social_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SocialModel {

@JsonKey(name: 'icon') ImageModel? get icon;@JsonKey(name: 'url') String? get url;
/// Create a copy of SocialModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SocialModelCopyWith<SocialModel> get copyWith => _$SocialModelCopyWithImpl<SocialModel>(this as SocialModel, _$identity);

  /// Serializes this SocialModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SocialModel&&(identical(other.icon, icon) || other.icon == icon)&&(identical(other.url, url) || other.url == url));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,icon,url);

@override
String toString() {
  return 'SocialModel(icon: $icon, url: $url)';
}


}

/// @nodoc
abstract mixin class $SocialModelCopyWith<$Res>  {
  factory $SocialModelCopyWith(SocialModel value, $Res Function(SocialModel) _then) = _$SocialModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'icon') ImageModel? icon,@JsonKey(name: 'url') String? url
});


$ImageModelCopyWith<$Res>? get icon;

}
/// @nodoc
class _$SocialModelCopyWithImpl<$Res>
    implements $SocialModelCopyWith<$Res> {
  _$SocialModelCopyWithImpl(this._self, this._then);

  final SocialModel _self;
  final $Res Function(SocialModel) _then;

/// Create a copy of SocialModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? icon = freezed,Object? url = freezed,}) {
  return _then(_self.copyWith(
icon: freezed == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as ImageModel?,url: freezed == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of SocialModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ImageModelCopyWith<$Res>? get icon {
    if (_self.icon == null) {
    return null;
  }

  return $ImageModelCopyWith<$Res>(_self.icon!, (value) {
    return _then(_self.copyWith(icon: value));
  });
}
}


/// Adds pattern-matching-related methods to [SocialModel].
extension SocialModelPatterns on SocialModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SocialModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SocialModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SocialModel value)  $default,){
final _that = this;
switch (_that) {
case _SocialModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SocialModel value)?  $default,){
final _that = this;
switch (_that) {
case _SocialModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'icon')  ImageModel? icon, @JsonKey(name: 'url')  String? url)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SocialModel() when $default != null:
return $default(_that.icon,_that.url);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'icon')  ImageModel? icon, @JsonKey(name: 'url')  String? url)  $default,) {final _that = this;
switch (_that) {
case _SocialModel():
return $default(_that.icon,_that.url);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'icon')  ImageModel? icon, @JsonKey(name: 'url')  String? url)?  $default,) {final _that = this;
switch (_that) {
case _SocialModel() when $default != null:
return $default(_that.icon,_that.url);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SocialModel extends SocialModel {
  const _SocialModel({@JsonKey(name: 'icon') this.icon, @JsonKey(name: 'url') this.url}): super._();
  factory _SocialModel.fromJson(Map<String, dynamic> json) => _$SocialModelFromJson(json);

@override@JsonKey(name: 'icon') final  ImageModel? icon;
@override@JsonKey(name: 'url') final  String? url;

/// Create a copy of SocialModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SocialModelCopyWith<_SocialModel> get copyWith => __$SocialModelCopyWithImpl<_SocialModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SocialModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SocialModel&&(identical(other.icon, icon) || other.icon == icon)&&(identical(other.url, url) || other.url == url));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,icon,url);

@override
String toString() {
  return 'SocialModel(icon: $icon, url: $url)';
}


}

/// @nodoc
abstract mixin class _$SocialModelCopyWith<$Res> implements $SocialModelCopyWith<$Res> {
  factory _$SocialModelCopyWith(_SocialModel value, $Res Function(_SocialModel) _then) = __$SocialModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'icon') ImageModel? icon,@JsonKey(name: 'url') String? url
});


@override $ImageModelCopyWith<$Res>? get icon;

}
/// @nodoc
class __$SocialModelCopyWithImpl<$Res>
    implements _$SocialModelCopyWith<$Res> {
  __$SocialModelCopyWithImpl(this._self, this._then);

  final _SocialModel _self;
  final $Res Function(_SocialModel) _then;

/// Create a copy of SocialModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? icon = freezed,Object? url = freezed,}) {
  return _then(_SocialModel(
icon: freezed == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as ImageModel?,url: freezed == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of SocialModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ImageModelCopyWith<$Res>? get icon {
    if (_self.icon == null) {
    return null;
  }

  return $ImageModelCopyWith<$Res>(_self.icon!, (value) {
    return _then(_self.copyWith(icon: value));
  });
}
}

// dart format on
