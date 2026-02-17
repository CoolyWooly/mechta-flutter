// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sticker_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StickerModel {

@JsonKey(name: 'code') String? get code;@JsonKey(name: 'name') String? get name;@JsonKey(name: 'link') String? get link;@JsonKey(name: 'color') String? get color;@JsonKey(name: 'isSuperAction') bool? get isSuperAction;@JsonKey(name: 'description') String? get description;
/// Create a copy of StickerModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StickerModelCopyWith<StickerModel> get copyWith => _$StickerModelCopyWithImpl<StickerModel>(this as StickerModel, _$identity);

  /// Serializes this StickerModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StickerModel&&(identical(other.code, code) || other.code == code)&&(identical(other.name, name) || other.name == name)&&(identical(other.link, link) || other.link == link)&&(identical(other.color, color) || other.color == color)&&(identical(other.isSuperAction, isSuperAction) || other.isSuperAction == isSuperAction)&&(identical(other.description, description) || other.description == description));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,code,name,link,color,isSuperAction,description);

@override
String toString() {
  return 'StickerModel(code: $code, name: $name, link: $link, color: $color, isSuperAction: $isSuperAction, description: $description)';
}


}

/// @nodoc
abstract mixin class $StickerModelCopyWith<$Res>  {
  factory $StickerModelCopyWith(StickerModel value, $Res Function(StickerModel) _then) = _$StickerModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'code') String? code,@JsonKey(name: 'name') String? name,@JsonKey(name: 'link') String? link,@JsonKey(name: 'color') String? color,@JsonKey(name: 'isSuperAction') bool? isSuperAction,@JsonKey(name: 'description') String? description
});




}
/// @nodoc
class _$StickerModelCopyWithImpl<$Res>
    implements $StickerModelCopyWith<$Res> {
  _$StickerModelCopyWithImpl(this._self, this._then);

  final StickerModel _self;
  final $Res Function(StickerModel) _then;

/// Create a copy of StickerModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? code = freezed,Object? name = freezed,Object? link = freezed,Object? color = freezed,Object? isSuperAction = freezed,Object? description = freezed,}) {
  return _then(_self.copyWith(
code: freezed == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,link: freezed == link ? _self.link : link // ignore: cast_nullable_to_non_nullable
as String?,color: freezed == color ? _self.color : color // ignore: cast_nullable_to_non_nullable
as String?,isSuperAction: freezed == isSuperAction ? _self.isSuperAction : isSuperAction // ignore: cast_nullable_to_non_nullable
as bool?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [StickerModel].
extension StickerModelPatterns on StickerModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StickerModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StickerModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StickerModel value)  $default,){
final _that = this;
switch (_that) {
case _StickerModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StickerModel value)?  $default,){
final _that = this;
switch (_that) {
case _StickerModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'code')  String? code, @JsonKey(name: 'name')  String? name, @JsonKey(name: 'link')  String? link, @JsonKey(name: 'color')  String? color, @JsonKey(name: 'isSuperAction')  bool? isSuperAction, @JsonKey(name: 'description')  String? description)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StickerModel() when $default != null:
return $default(_that.code,_that.name,_that.link,_that.color,_that.isSuperAction,_that.description);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'code')  String? code, @JsonKey(name: 'name')  String? name, @JsonKey(name: 'link')  String? link, @JsonKey(name: 'color')  String? color, @JsonKey(name: 'isSuperAction')  bool? isSuperAction, @JsonKey(name: 'description')  String? description)  $default,) {final _that = this;
switch (_that) {
case _StickerModel():
return $default(_that.code,_that.name,_that.link,_that.color,_that.isSuperAction,_that.description);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'code')  String? code, @JsonKey(name: 'name')  String? name, @JsonKey(name: 'link')  String? link, @JsonKey(name: 'color')  String? color, @JsonKey(name: 'isSuperAction')  bool? isSuperAction, @JsonKey(name: 'description')  String? description)?  $default,) {final _that = this;
switch (_that) {
case _StickerModel() when $default != null:
return $default(_that.code,_that.name,_that.link,_that.color,_that.isSuperAction,_that.description);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _StickerModel extends StickerModel {
  const _StickerModel({@JsonKey(name: 'code') this.code, @JsonKey(name: 'name') this.name, @JsonKey(name: 'link') this.link, @JsonKey(name: 'color') this.color, @JsonKey(name: 'isSuperAction') this.isSuperAction, @JsonKey(name: 'description') this.description}): super._();
  factory _StickerModel.fromJson(Map<String, dynamic> json) => _$StickerModelFromJson(json);

@override@JsonKey(name: 'code') final  String? code;
@override@JsonKey(name: 'name') final  String? name;
@override@JsonKey(name: 'link') final  String? link;
@override@JsonKey(name: 'color') final  String? color;
@override@JsonKey(name: 'isSuperAction') final  bool? isSuperAction;
@override@JsonKey(name: 'description') final  String? description;

/// Create a copy of StickerModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StickerModelCopyWith<_StickerModel> get copyWith => __$StickerModelCopyWithImpl<_StickerModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StickerModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StickerModel&&(identical(other.code, code) || other.code == code)&&(identical(other.name, name) || other.name == name)&&(identical(other.link, link) || other.link == link)&&(identical(other.color, color) || other.color == color)&&(identical(other.isSuperAction, isSuperAction) || other.isSuperAction == isSuperAction)&&(identical(other.description, description) || other.description == description));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,code,name,link,color,isSuperAction,description);

@override
String toString() {
  return 'StickerModel(code: $code, name: $name, link: $link, color: $color, isSuperAction: $isSuperAction, description: $description)';
}


}

/// @nodoc
abstract mixin class _$StickerModelCopyWith<$Res> implements $StickerModelCopyWith<$Res> {
  factory _$StickerModelCopyWith(_StickerModel value, $Res Function(_StickerModel) _then) = __$StickerModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'code') String? code,@JsonKey(name: 'name') String? name,@JsonKey(name: 'link') String? link,@JsonKey(name: 'color') String? color,@JsonKey(name: 'isSuperAction') bool? isSuperAction,@JsonKey(name: 'description') String? description
});




}
/// @nodoc
class __$StickerModelCopyWithImpl<$Res>
    implements _$StickerModelCopyWith<$Res> {
  __$StickerModelCopyWithImpl(this._self, this._then);

  final _StickerModel _self;
  final $Res Function(_StickerModel) _then;

/// Create a copy of StickerModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? code = freezed,Object? name = freezed,Object? link = freezed,Object? color = freezed,Object? isSuperAction = freezed,Object? description = freezed,}) {
  return _then(_StickerModel(
code: freezed == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,link: freezed == link ? _self.link : link // ignore: cast_nullable_to_non_nullable
as String?,color: freezed == color ? _self.color : color // ignore: cast_nullable_to_non_nullable
as String?,isSuperAction: freezed == isSuperAction ? _self.isSuperAction : isSuperAction // ignore: cast_nullable_to_non_nullable
as bool?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
