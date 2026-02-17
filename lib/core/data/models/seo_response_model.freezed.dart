// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'seo_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SeoResponseModel {

 SeoRedirectModel? get redirect; SeoMetaModel? get meta;
/// Create a copy of SeoResponseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SeoResponseModelCopyWith<SeoResponseModel> get copyWith => _$SeoResponseModelCopyWithImpl<SeoResponseModel>(this as SeoResponseModel, _$identity);

  /// Serializes this SeoResponseModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SeoResponseModel&&(identical(other.redirect, redirect) || other.redirect == redirect)&&(identical(other.meta, meta) || other.meta == meta));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,redirect,meta);

@override
String toString() {
  return 'SeoResponseModel(redirect: $redirect, meta: $meta)';
}


}

/// @nodoc
abstract mixin class $SeoResponseModelCopyWith<$Res>  {
  factory $SeoResponseModelCopyWith(SeoResponseModel value, $Res Function(SeoResponseModel) _then) = _$SeoResponseModelCopyWithImpl;
@useResult
$Res call({
 SeoRedirectModel? redirect, SeoMetaModel? meta
});


$SeoRedirectModelCopyWith<$Res>? get redirect;$SeoMetaModelCopyWith<$Res>? get meta;

}
/// @nodoc
class _$SeoResponseModelCopyWithImpl<$Res>
    implements $SeoResponseModelCopyWith<$Res> {
  _$SeoResponseModelCopyWithImpl(this._self, this._then);

  final SeoResponseModel _self;
  final $Res Function(SeoResponseModel) _then;

/// Create a copy of SeoResponseModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? redirect = freezed,Object? meta = freezed,}) {
  return _then(_self.copyWith(
redirect: freezed == redirect ? _self.redirect : redirect // ignore: cast_nullable_to_non_nullable
as SeoRedirectModel?,meta: freezed == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as SeoMetaModel?,
  ));
}
/// Create a copy of SeoResponseModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SeoRedirectModelCopyWith<$Res>? get redirect {
    if (_self.redirect == null) {
    return null;
  }

  return $SeoRedirectModelCopyWith<$Res>(_self.redirect!, (value) {
    return _then(_self.copyWith(redirect: value));
  });
}/// Create a copy of SeoResponseModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SeoMetaModelCopyWith<$Res>? get meta {
    if (_self.meta == null) {
    return null;
  }

  return $SeoMetaModelCopyWith<$Res>(_self.meta!, (value) {
    return _then(_self.copyWith(meta: value));
  });
}
}


/// Adds pattern-matching-related methods to [SeoResponseModel].
extension SeoResponseModelPatterns on SeoResponseModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SeoResponseModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SeoResponseModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SeoResponseModel value)  $default,){
final _that = this;
switch (_that) {
case _SeoResponseModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SeoResponseModel value)?  $default,){
final _that = this;
switch (_that) {
case _SeoResponseModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( SeoRedirectModel? redirect,  SeoMetaModel? meta)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SeoResponseModel() when $default != null:
return $default(_that.redirect,_that.meta);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( SeoRedirectModel? redirect,  SeoMetaModel? meta)  $default,) {final _that = this;
switch (_that) {
case _SeoResponseModel():
return $default(_that.redirect,_that.meta);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( SeoRedirectModel? redirect,  SeoMetaModel? meta)?  $default,) {final _that = this;
switch (_that) {
case _SeoResponseModel() when $default != null:
return $default(_that.redirect,_that.meta);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SeoResponseModel implements SeoResponseModel {
  const _SeoResponseModel({this.redirect, this.meta});
  factory _SeoResponseModel.fromJson(Map<String, dynamic> json) => _$SeoResponseModelFromJson(json);

@override final  SeoRedirectModel? redirect;
@override final  SeoMetaModel? meta;

/// Create a copy of SeoResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SeoResponseModelCopyWith<_SeoResponseModel> get copyWith => __$SeoResponseModelCopyWithImpl<_SeoResponseModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SeoResponseModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SeoResponseModel&&(identical(other.redirect, redirect) || other.redirect == redirect)&&(identical(other.meta, meta) || other.meta == meta));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,redirect,meta);

@override
String toString() {
  return 'SeoResponseModel(redirect: $redirect, meta: $meta)';
}


}

/// @nodoc
abstract mixin class _$SeoResponseModelCopyWith<$Res> implements $SeoResponseModelCopyWith<$Res> {
  factory _$SeoResponseModelCopyWith(_SeoResponseModel value, $Res Function(_SeoResponseModel) _then) = __$SeoResponseModelCopyWithImpl;
@override @useResult
$Res call({
 SeoRedirectModel? redirect, SeoMetaModel? meta
});


@override $SeoRedirectModelCopyWith<$Res>? get redirect;@override $SeoMetaModelCopyWith<$Res>? get meta;

}
/// @nodoc
class __$SeoResponseModelCopyWithImpl<$Res>
    implements _$SeoResponseModelCopyWith<$Res> {
  __$SeoResponseModelCopyWithImpl(this._self, this._then);

  final _SeoResponseModel _self;
  final $Res Function(_SeoResponseModel) _then;

/// Create a copy of SeoResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? redirect = freezed,Object? meta = freezed,}) {
  return _then(_SeoResponseModel(
redirect: freezed == redirect ? _self.redirect : redirect // ignore: cast_nullable_to_non_nullable
as SeoRedirectModel?,meta: freezed == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as SeoMetaModel?,
  ));
}

/// Create a copy of SeoResponseModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SeoRedirectModelCopyWith<$Res>? get redirect {
    if (_self.redirect == null) {
    return null;
  }

  return $SeoRedirectModelCopyWith<$Res>(_self.redirect!, (value) {
    return _then(_self.copyWith(redirect: value));
  });
}/// Create a copy of SeoResponseModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SeoMetaModelCopyWith<$Res>? get meta {
    if (_self.meta == null) {
    return null;
  }

  return $SeoMetaModelCopyWith<$Res>(_self.meta!, (value) {
    return _then(_self.copyWith(meta: value));
  });
}
}


/// @nodoc
mixin _$SeoRedirectModel {

 String? get url;
/// Create a copy of SeoRedirectModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SeoRedirectModelCopyWith<SeoRedirectModel> get copyWith => _$SeoRedirectModelCopyWithImpl<SeoRedirectModel>(this as SeoRedirectModel, _$identity);

  /// Serializes this SeoRedirectModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SeoRedirectModel&&(identical(other.url, url) || other.url == url));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,url);

@override
String toString() {
  return 'SeoRedirectModel(url: $url)';
}


}

/// @nodoc
abstract mixin class $SeoRedirectModelCopyWith<$Res>  {
  factory $SeoRedirectModelCopyWith(SeoRedirectModel value, $Res Function(SeoRedirectModel) _then) = _$SeoRedirectModelCopyWithImpl;
@useResult
$Res call({
 String? url
});




}
/// @nodoc
class _$SeoRedirectModelCopyWithImpl<$Res>
    implements $SeoRedirectModelCopyWith<$Res> {
  _$SeoRedirectModelCopyWithImpl(this._self, this._then);

  final SeoRedirectModel _self;
  final $Res Function(SeoRedirectModel) _then;

/// Create a copy of SeoRedirectModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? url = freezed,}) {
  return _then(_self.copyWith(
url: freezed == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [SeoRedirectModel].
extension SeoRedirectModelPatterns on SeoRedirectModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SeoRedirectModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SeoRedirectModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SeoRedirectModel value)  $default,){
final _that = this;
switch (_that) {
case _SeoRedirectModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SeoRedirectModel value)?  $default,){
final _that = this;
switch (_that) {
case _SeoRedirectModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? url)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SeoRedirectModel() when $default != null:
return $default(_that.url);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? url)  $default,) {final _that = this;
switch (_that) {
case _SeoRedirectModel():
return $default(_that.url);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? url)?  $default,) {final _that = this;
switch (_that) {
case _SeoRedirectModel() when $default != null:
return $default(_that.url);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SeoRedirectModel implements SeoRedirectModel {
  const _SeoRedirectModel({this.url});
  factory _SeoRedirectModel.fromJson(Map<String, dynamic> json) => _$SeoRedirectModelFromJson(json);

@override final  String? url;

/// Create a copy of SeoRedirectModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SeoRedirectModelCopyWith<_SeoRedirectModel> get copyWith => __$SeoRedirectModelCopyWithImpl<_SeoRedirectModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SeoRedirectModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SeoRedirectModel&&(identical(other.url, url) || other.url == url));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,url);

@override
String toString() {
  return 'SeoRedirectModel(url: $url)';
}


}

/// @nodoc
abstract mixin class _$SeoRedirectModelCopyWith<$Res> implements $SeoRedirectModelCopyWith<$Res> {
  factory _$SeoRedirectModelCopyWith(_SeoRedirectModel value, $Res Function(_SeoRedirectModel) _then) = __$SeoRedirectModelCopyWithImpl;
@override @useResult
$Res call({
 String? url
});




}
/// @nodoc
class __$SeoRedirectModelCopyWithImpl<$Res>
    implements _$SeoRedirectModelCopyWith<$Res> {
  __$SeoRedirectModelCopyWithImpl(this._self, this._then);

  final _SeoRedirectModel _self;
  final $Res Function(_SeoRedirectModel) _then;

/// Create a copy of SeoRedirectModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? url = freezed,}) {
  return _then(_SeoRedirectModel(
url: freezed == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$SeoMetaModel {

@JsonKey(name: 'app_decode') SeoAppDecodeModel? get appDecode;
/// Create a copy of SeoMetaModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SeoMetaModelCopyWith<SeoMetaModel> get copyWith => _$SeoMetaModelCopyWithImpl<SeoMetaModel>(this as SeoMetaModel, _$identity);

  /// Serializes this SeoMetaModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SeoMetaModel&&(identical(other.appDecode, appDecode) || other.appDecode == appDecode));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,appDecode);

@override
String toString() {
  return 'SeoMetaModel(appDecode: $appDecode)';
}


}

/// @nodoc
abstract mixin class $SeoMetaModelCopyWith<$Res>  {
  factory $SeoMetaModelCopyWith(SeoMetaModel value, $Res Function(SeoMetaModel) _then) = _$SeoMetaModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'app_decode') SeoAppDecodeModel? appDecode
});


$SeoAppDecodeModelCopyWith<$Res>? get appDecode;

}
/// @nodoc
class _$SeoMetaModelCopyWithImpl<$Res>
    implements $SeoMetaModelCopyWith<$Res> {
  _$SeoMetaModelCopyWithImpl(this._self, this._then);

  final SeoMetaModel _self;
  final $Res Function(SeoMetaModel) _then;

/// Create a copy of SeoMetaModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? appDecode = freezed,}) {
  return _then(_self.copyWith(
appDecode: freezed == appDecode ? _self.appDecode : appDecode // ignore: cast_nullable_to_non_nullable
as SeoAppDecodeModel?,
  ));
}
/// Create a copy of SeoMetaModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SeoAppDecodeModelCopyWith<$Res>? get appDecode {
    if (_self.appDecode == null) {
    return null;
  }

  return $SeoAppDecodeModelCopyWith<$Res>(_self.appDecode!, (value) {
    return _then(_self.copyWith(appDecode: value));
  });
}
}


/// Adds pattern-matching-related methods to [SeoMetaModel].
extension SeoMetaModelPatterns on SeoMetaModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SeoMetaModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SeoMetaModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SeoMetaModel value)  $default,){
final _that = this;
switch (_that) {
case _SeoMetaModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SeoMetaModel value)?  $default,){
final _that = this;
switch (_that) {
case _SeoMetaModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'app_decode')  SeoAppDecodeModel? appDecode)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SeoMetaModel() when $default != null:
return $default(_that.appDecode);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'app_decode')  SeoAppDecodeModel? appDecode)  $default,) {final _that = this;
switch (_that) {
case _SeoMetaModel():
return $default(_that.appDecode);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'app_decode')  SeoAppDecodeModel? appDecode)?  $default,) {final _that = this;
switch (_that) {
case _SeoMetaModel() when $default != null:
return $default(_that.appDecode);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SeoMetaModel implements SeoMetaModel {
  const _SeoMetaModel({@JsonKey(name: 'app_decode') this.appDecode});
  factory _SeoMetaModel.fromJson(Map<String, dynamic> json) => _$SeoMetaModelFromJson(json);

@override@JsonKey(name: 'app_decode') final  SeoAppDecodeModel? appDecode;

/// Create a copy of SeoMetaModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SeoMetaModelCopyWith<_SeoMetaModel> get copyWith => __$SeoMetaModelCopyWithImpl<_SeoMetaModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SeoMetaModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SeoMetaModel&&(identical(other.appDecode, appDecode) || other.appDecode == appDecode));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,appDecode);

@override
String toString() {
  return 'SeoMetaModel(appDecode: $appDecode)';
}


}

/// @nodoc
abstract mixin class _$SeoMetaModelCopyWith<$Res> implements $SeoMetaModelCopyWith<$Res> {
  factory _$SeoMetaModelCopyWith(_SeoMetaModel value, $Res Function(_SeoMetaModel) _then) = __$SeoMetaModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'app_decode') SeoAppDecodeModel? appDecode
});


@override $SeoAppDecodeModelCopyWith<$Res>? get appDecode;

}
/// @nodoc
class __$SeoMetaModelCopyWithImpl<$Res>
    implements _$SeoMetaModelCopyWith<$Res> {
  __$SeoMetaModelCopyWithImpl(this._self, this._then);

  final _SeoMetaModel _self;
  final $Res Function(_SeoMetaModel) _then;

/// Create a copy of SeoMetaModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? appDecode = freezed,}) {
  return _then(_SeoMetaModel(
appDecode: freezed == appDecode ? _self.appDecode : appDecode // ignore: cast_nullable_to_non_nullable
as SeoAppDecodeModel?,
  ));
}

/// Create a copy of SeoMetaModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SeoAppDecodeModelCopyWith<$Res>? get appDecode {
    if (_self.appDecode == null) {
    return null;
  }

  return $SeoAppDecodeModelCopyWith<$Res>(_self.appDecode!, (value) {
    return _then(_self.copyWith(appDecode: value));
  });
}
}


/// @nodoc
mixin _$SeoAppDecodeModel {

 SeoCategoryModel? get category;
/// Create a copy of SeoAppDecodeModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SeoAppDecodeModelCopyWith<SeoAppDecodeModel> get copyWith => _$SeoAppDecodeModelCopyWithImpl<SeoAppDecodeModel>(this as SeoAppDecodeModel, _$identity);

  /// Serializes this SeoAppDecodeModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SeoAppDecodeModel&&(identical(other.category, category) || other.category == category));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,category);

@override
String toString() {
  return 'SeoAppDecodeModel(category: $category)';
}


}

/// @nodoc
abstract mixin class $SeoAppDecodeModelCopyWith<$Res>  {
  factory $SeoAppDecodeModelCopyWith(SeoAppDecodeModel value, $Res Function(SeoAppDecodeModel) _then) = _$SeoAppDecodeModelCopyWithImpl;
@useResult
$Res call({
 SeoCategoryModel? category
});


$SeoCategoryModelCopyWith<$Res>? get category;

}
/// @nodoc
class _$SeoAppDecodeModelCopyWithImpl<$Res>
    implements $SeoAppDecodeModelCopyWith<$Res> {
  _$SeoAppDecodeModelCopyWithImpl(this._self, this._then);

  final SeoAppDecodeModel _self;
  final $Res Function(SeoAppDecodeModel) _then;

/// Create a copy of SeoAppDecodeModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? category = freezed,}) {
  return _then(_self.copyWith(
category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as SeoCategoryModel?,
  ));
}
/// Create a copy of SeoAppDecodeModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SeoCategoryModelCopyWith<$Res>? get category {
    if (_self.category == null) {
    return null;
  }

  return $SeoCategoryModelCopyWith<$Res>(_self.category!, (value) {
    return _then(_self.copyWith(category: value));
  });
}
}


/// Adds pattern-matching-related methods to [SeoAppDecodeModel].
extension SeoAppDecodeModelPatterns on SeoAppDecodeModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SeoAppDecodeModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SeoAppDecodeModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SeoAppDecodeModel value)  $default,){
final _that = this;
switch (_that) {
case _SeoAppDecodeModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SeoAppDecodeModel value)?  $default,){
final _that = this;
switch (_that) {
case _SeoAppDecodeModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( SeoCategoryModel? category)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SeoAppDecodeModel() when $default != null:
return $default(_that.category);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( SeoCategoryModel? category)  $default,) {final _that = this;
switch (_that) {
case _SeoAppDecodeModel():
return $default(_that.category);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( SeoCategoryModel? category)?  $default,) {final _that = this;
switch (_that) {
case _SeoAppDecodeModel() when $default != null:
return $default(_that.category);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SeoAppDecodeModel implements SeoAppDecodeModel {
  const _SeoAppDecodeModel({this.category});
  factory _SeoAppDecodeModel.fromJson(Map<String, dynamic> json) => _$SeoAppDecodeModelFromJson(json);

@override final  SeoCategoryModel? category;

/// Create a copy of SeoAppDecodeModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SeoAppDecodeModelCopyWith<_SeoAppDecodeModel> get copyWith => __$SeoAppDecodeModelCopyWithImpl<_SeoAppDecodeModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SeoAppDecodeModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SeoAppDecodeModel&&(identical(other.category, category) || other.category == category));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,category);

@override
String toString() {
  return 'SeoAppDecodeModel(category: $category)';
}


}

/// @nodoc
abstract mixin class _$SeoAppDecodeModelCopyWith<$Res> implements $SeoAppDecodeModelCopyWith<$Res> {
  factory _$SeoAppDecodeModelCopyWith(_SeoAppDecodeModel value, $Res Function(_SeoAppDecodeModel) _then) = __$SeoAppDecodeModelCopyWithImpl;
@override @useResult
$Res call({
 SeoCategoryModel? category
});


@override $SeoCategoryModelCopyWith<$Res>? get category;

}
/// @nodoc
class __$SeoAppDecodeModelCopyWithImpl<$Res>
    implements _$SeoAppDecodeModelCopyWith<$Res> {
  __$SeoAppDecodeModelCopyWithImpl(this._self, this._then);

  final _SeoAppDecodeModel _self;
  final $Res Function(_SeoAppDecodeModel) _then;

/// Create a copy of SeoAppDecodeModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? category = freezed,}) {
  return _then(_SeoAppDecodeModel(
category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as SeoCategoryModel?,
  ));
}

/// Create a copy of SeoAppDecodeModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SeoCategoryModelCopyWith<$Res>? get category {
    if (_self.category == null) {
    return null;
  }

  return $SeoCategoryModelCopyWith<$Res>(_self.category!, (value) {
    return _then(_self.copyWith(category: value));
  });
}
}


/// @nodoc
mixin _$SeoCategoryModel {

 String? get slug; Map<String, SeoPropertiesModel>? get properties;@JsonKey(name: 'min_price') int? get minPrice;@JsonKey(name: 'max_price') int? get maxPrice;
/// Create a copy of SeoCategoryModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SeoCategoryModelCopyWith<SeoCategoryModel> get copyWith => _$SeoCategoryModelCopyWithImpl<SeoCategoryModel>(this as SeoCategoryModel, _$identity);

  /// Serializes this SeoCategoryModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SeoCategoryModel&&(identical(other.slug, slug) || other.slug == slug)&&const DeepCollectionEquality().equals(other.properties, properties)&&(identical(other.minPrice, minPrice) || other.minPrice == minPrice)&&(identical(other.maxPrice, maxPrice) || other.maxPrice == maxPrice));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,slug,const DeepCollectionEquality().hash(properties),minPrice,maxPrice);

@override
String toString() {
  return 'SeoCategoryModel(slug: $slug, properties: $properties, minPrice: $minPrice, maxPrice: $maxPrice)';
}


}

/// @nodoc
abstract mixin class $SeoCategoryModelCopyWith<$Res>  {
  factory $SeoCategoryModelCopyWith(SeoCategoryModel value, $Res Function(SeoCategoryModel) _then) = _$SeoCategoryModelCopyWithImpl;
@useResult
$Res call({
 String? slug, Map<String, SeoPropertiesModel>? properties,@JsonKey(name: 'min_price') int? minPrice,@JsonKey(name: 'max_price') int? maxPrice
});




}
/// @nodoc
class _$SeoCategoryModelCopyWithImpl<$Res>
    implements $SeoCategoryModelCopyWith<$Res> {
  _$SeoCategoryModelCopyWithImpl(this._self, this._then);

  final SeoCategoryModel _self;
  final $Res Function(SeoCategoryModel) _then;

/// Create a copy of SeoCategoryModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? slug = freezed,Object? properties = freezed,Object? minPrice = freezed,Object? maxPrice = freezed,}) {
  return _then(_self.copyWith(
slug: freezed == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String?,properties: freezed == properties ? _self.properties : properties // ignore: cast_nullable_to_non_nullable
as Map<String, SeoPropertiesModel>?,minPrice: freezed == minPrice ? _self.minPrice : minPrice // ignore: cast_nullable_to_non_nullable
as int?,maxPrice: freezed == maxPrice ? _self.maxPrice : maxPrice // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [SeoCategoryModel].
extension SeoCategoryModelPatterns on SeoCategoryModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SeoCategoryModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SeoCategoryModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SeoCategoryModel value)  $default,){
final _that = this;
switch (_that) {
case _SeoCategoryModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SeoCategoryModel value)?  $default,){
final _that = this;
switch (_that) {
case _SeoCategoryModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? slug,  Map<String, SeoPropertiesModel>? properties, @JsonKey(name: 'min_price')  int? minPrice, @JsonKey(name: 'max_price')  int? maxPrice)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SeoCategoryModel() when $default != null:
return $default(_that.slug,_that.properties,_that.minPrice,_that.maxPrice);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? slug,  Map<String, SeoPropertiesModel>? properties, @JsonKey(name: 'min_price')  int? minPrice, @JsonKey(name: 'max_price')  int? maxPrice)  $default,) {final _that = this;
switch (_that) {
case _SeoCategoryModel():
return $default(_that.slug,_that.properties,_that.minPrice,_that.maxPrice);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? slug,  Map<String, SeoPropertiesModel>? properties, @JsonKey(name: 'min_price')  int? minPrice, @JsonKey(name: 'max_price')  int? maxPrice)?  $default,) {final _that = this;
switch (_that) {
case _SeoCategoryModel() when $default != null:
return $default(_that.slug,_that.properties,_that.minPrice,_that.maxPrice);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SeoCategoryModel implements SeoCategoryModel {
  const _SeoCategoryModel({this.slug, final  Map<String, SeoPropertiesModel>? properties, @JsonKey(name: 'min_price') this.minPrice, @JsonKey(name: 'max_price') this.maxPrice}): _properties = properties;
  factory _SeoCategoryModel.fromJson(Map<String, dynamic> json) => _$SeoCategoryModelFromJson(json);

@override final  String? slug;
 final  Map<String, SeoPropertiesModel>? _properties;
@override Map<String, SeoPropertiesModel>? get properties {
  final value = _properties;
  if (value == null) return null;
  if (_properties is EqualUnmodifiableMapView) return _properties;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}

@override@JsonKey(name: 'min_price') final  int? minPrice;
@override@JsonKey(name: 'max_price') final  int? maxPrice;

/// Create a copy of SeoCategoryModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SeoCategoryModelCopyWith<_SeoCategoryModel> get copyWith => __$SeoCategoryModelCopyWithImpl<_SeoCategoryModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SeoCategoryModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SeoCategoryModel&&(identical(other.slug, slug) || other.slug == slug)&&const DeepCollectionEquality().equals(other._properties, _properties)&&(identical(other.minPrice, minPrice) || other.minPrice == minPrice)&&(identical(other.maxPrice, maxPrice) || other.maxPrice == maxPrice));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,slug,const DeepCollectionEquality().hash(_properties),minPrice,maxPrice);

@override
String toString() {
  return 'SeoCategoryModel(slug: $slug, properties: $properties, minPrice: $minPrice, maxPrice: $maxPrice)';
}


}

/// @nodoc
abstract mixin class _$SeoCategoryModelCopyWith<$Res> implements $SeoCategoryModelCopyWith<$Res> {
  factory _$SeoCategoryModelCopyWith(_SeoCategoryModel value, $Res Function(_SeoCategoryModel) _then) = __$SeoCategoryModelCopyWithImpl;
@override @useResult
$Res call({
 String? slug, Map<String, SeoPropertiesModel>? properties,@JsonKey(name: 'min_price') int? minPrice,@JsonKey(name: 'max_price') int? maxPrice
});




}
/// @nodoc
class __$SeoCategoryModelCopyWithImpl<$Res>
    implements _$SeoCategoryModelCopyWith<$Res> {
  __$SeoCategoryModelCopyWithImpl(this._self, this._then);

  final _SeoCategoryModel _self;
  final $Res Function(_SeoCategoryModel) _then;

/// Create a copy of SeoCategoryModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? slug = freezed,Object? properties = freezed,Object? minPrice = freezed,Object? maxPrice = freezed,}) {
  return _then(_SeoCategoryModel(
slug: freezed == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String?,properties: freezed == properties ? _self._properties : properties // ignore: cast_nullable_to_non_nullable
as Map<String, SeoPropertiesModel>?,minPrice: freezed == minPrice ? _self.minPrice : minPrice // ignore: cast_nullable_to_non_nullable
as int?,maxPrice: freezed == maxPrice ? _self.maxPrice : maxPrice // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}


/// @nodoc
mixin _$SeoPropertiesModel {

 List<String>? get values;
/// Create a copy of SeoPropertiesModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SeoPropertiesModelCopyWith<SeoPropertiesModel> get copyWith => _$SeoPropertiesModelCopyWithImpl<SeoPropertiesModel>(this as SeoPropertiesModel, _$identity);

  /// Serializes this SeoPropertiesModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SeoPropertiesModel&&const DeepCollectionEquality().equals(other.values, values));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(values));

@override
String toString() {
  return 'SeoPropertiesModel(values: $values)';
}


}

/// @nodoc
abstract mixin class $SeoPropertiesModelCopyWith<$Res>  {
  factory $SeoPropertiesModelCopyWith(SeoPropertiesModel value, $Res Function(SeoPropertiesModel) _then) = _$SeoPropertiesModelCopyWithImpl;
@useResult
$Res call({
 List<String>? values
});




}
/// @nodoc
class _$SeoPropertiesModelCopyWithImpl<$Res>
    implements $SeoPropertiesModelCopyWith<$Res> {
  _$SeoPropertiesModelCopyWithImpl(this._self, this._then);

  final SeoPropertiesModel _self;
  final $Res Function(SeoPropertiesModel) _then;

/// Create a copy of SeoPropertiesModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? values = freezed,}) {
  return _then(_self.copyWith(
values: freezed == values ? _self.values : values // ignore: cast_nullable_to_non_nullable
as List<String>?,
  ));
}

}


/// Adds pattern-matching-related methods to [SeoPropertiesModel].
extension SeoPropertiesModelPatterns on SeoPropertiesModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SeoPropertiesModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SeoPropertiesModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SeoPropertiesModel value)  $default,){
final _that = this;
switch (_that) {
case _SeoPropertiesModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SeoPropertiesModel value)?  $default,){
final _that = this;
switch (_that) {
case _SeoPropertiesModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<String>? values)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SeoPropertiesModel() when $default != null:
return $default(_that.values);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<String>? values)  $default,) {final _that = this;
switch (_that) {
case _SeoPropertiesModel():
return $default(_that.values);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<String>? values)?  $default,) {final _that = this;
switch (_that) {
case _SeoPropertiesModel() when $default != null:
return $default(_that.values);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SeoPropertiesModel implements SeoPropertiesModel {
  const _SeoPropertiesModel({final  List<String>? values}): _values = values;
  factory _SeoPropertiesModel.fromJson(Map<String, dynamic> json) => _$SeoPropertiesModelFromJson(json);

 final  List<String>? _values;
@override List<String>? get values {
  final value = _values;
  if (value == null) return null;
  if (_values is EqualUnmodifiableListView) return _values;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of SeoPropertiesModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SeoPropertiesModelCopyWith<_SeoPropertiesModel> get copyWith => __$SeoPropertiesModelCopyWithImpl<_SeoPropertiesModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SeoPropertiesModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SeoPropertiesModel&&const DeepCollectionEquality().equals(other._values, _values));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_values));

@override
String toString() {
  return 'SeoPropertiesModel(values: $values)';
}


}

/// @nodoc
abstract mixin class _$SeoPropertiesModelCopyWith<$Res> implements $SeoPropertiesModelCopyWith<$Res> {
  factory _$SeoPropertiesModelCopyWith(_SeoPropertiesModel value, $Res Function(_SeoPropertiesModel) _then) = __$SeoPropertiesModelCopyWithImpl;
@override @useResult
$Res call({
 List<String>? values
});




}
/// @nodoc
class __$SeoPropertiesModelCopyWithImpl<$Res>
    implements _$SeoPropertiesModelCopyWith<$Res> {
  __$SeoPropertiesModelCopyWithImpl(this._self, this._then);

  final _SeoPropertiesModel _self;
  final $Res Function(_SeoPropertiesModel) _then;

/// Create a copy of SeoPropertiesModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? values = freezed,}) {
  return _then(_SeoPropertiesModel(
values: freezed == values ? _self._values : values // ignore: cast_nullable_to_non_nullable
as List<String>?,
  ));
}


}

// dart format on
