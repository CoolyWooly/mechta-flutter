// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart_item_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CartResponseModel {

 List<CartItemModel>? get items;@JsonKey(name: 'total_prices') CartPricesModel? get priceDetails;@JsonKey(name: 'action_choice') String? get actionChoice;@JsonKey(name: 'action_choice_name') String? get actionChoiceName;@JsonKey(name: 'action_choice_list') List<CartActionChoiceModel>? get actionChoiceList;@JsonKey(name: 'action_choice_coupon') String? get actionChoiceCoupon;@JsonKey(name: 'coupon_list') List<CartCouponModel>? get couponList;@JsonKey(name: 'discount_by_coupons') int? get discountByCoupons;@JsonKey(name: 'trade_in_discount_amount') int? get tradeInDiscountAmount;@JsonKey(name: 'trade_in_additional_discount') int? get tradeInAdditionalDiscount;
/// Create a copy of CartResponseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CartResponseModelCopyWith<CartResponseModel> get copyWith => _$CartResponseModelCopyWithImpl<CartResponseModel>(this as CartResponseModel, _$identity);

  /// Serializes this CartResponseModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CartResponseModel&&const DeepCollectionEquality().equals(other.items, items)&&(identical(other.priceDetails, priceDetails) || other.priceDetails == priceDetails)&&(identical(other.actionChoice, actionChoice) || other.actionChoice == actionChoice)&&(identical(other.actionChoiceName, actionChoiceName) || other.actionChoiceName == actionChoiceName)&&const DeepCollectionEquality().equals(other.actionChoiceList, actionChoiceList)&&(identical(other.actionChoiceCoupon, actionChoiceCoupon) || other.actionChoiceCoupon == actionChoiceCoupon)&&const DeepCollectionEquality().equals(other.couponList, couponList)&&(identical(other.discountByCoupons, discountByCoupons) || other.discountByCoupons == discountByCoupons)&&(identical(other.tradeInDiscountAmount, tradeInDiscountAmount) || other.tradeInDiscountAmount == tradeInDiscountAmount)&&(identical(other.tradeInAdditionalDiscount, tradeInAdditionalDiscount) || other.tradeInAdditionalDiscount == tradeInAdditionalDiscount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(items),priceDetails,actionChoice,actionChoiceName,const DeepCollectionEquality().hash(actionChoiceList),actionChoiceCoupon,const DeepCollectionEquality().hash(couponList),discountByCoupons,tradeInDiscountAmount,tradeInAdditionalDiscount);

@override
String toString() {
  return 'CartResponseModel(items: $items, priceDetails: $priceDetails, actionChoice: $actionChoice, actionChoiceName: $actionChoiceName, actionChoiceList: $actionChoiceList, actionChoiceCoupon: $actionChoiceCoupon, couponList: $couponList, discountByCoupons: $discountByCoupons, tradeInDiscountAmount: $tradeInDiscountAmount, tradeInAdditionalDiscount: $tradeInAdditionalDiscount)';
}


}

/// @nodoc
abstract mixin class $CartResponseModelCopyWith<$Res>  {
  factory $CartResponseModelCopyWith(CartResponseModel value, $Res Function(CartResponseModel) _then) = _$CartResponseModelCopyWithImpl;
@useResult
$Res call({
 List<CartItemModel>? items,@JsonKey(name: 'total_prices') CartPricesModel? priceDetails,@JsonKey(name: 'action_choice') String? actionChoice,@JsonKey(name: 'action_choice_name') String? actionChoiceName,@JsonKey(name: 'action_choice_list') List<CartActionChoiceModel>? actionChoiceList,@JsonKey(name: 'action_choice_coupon') String? actionChoiceCoupon,@JsonKey(name: 'coupon_list') List<CartCouponModel>? couponList,@JsonKey(name: 'discount_by_coupons') int? discountByCoupons,@JsonKey(name: 'trade_in_discount_amount') int? tradeInDiscountAmount,@JsonKey(name: 'trade_in_additional_discount') int? tradeInAdditionalDiscount
});


$CartPricesModelCopyWith<$Res>? get priceDetails;

}
/// @nodoc
class _$CartResponseModelCopyWithImpl<$Res>
    implements $CartResponseModelCopyWith<$Res> {
  _$CartResponseModelCopyWithImpl(this._self, this._then);

  final CartResponseModel _self;
  final $Res Function(CartResponseModel) _then;

/// Create a copy of CartResponseModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? items = freezed,Object? priceDetails = freezed,Object? actionChoice = freezed,Object? actionChoiceName = freezed,Object? actionChoiceList = freezed,Object? actionChoiceCoupon = freezed,Object? couponList = freezed,Object? discountByCoupons = freezed,Object? tradeInDiscountAmount = freezed,Object? tradeInAdditionalDiscount = freezed,}) {
  return _then(_self.copyWith(
items: freezed == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<CartItemModel>?,priceDetails: freezed == priceDetails ? _self.priceDetails : priceDetails // ignore: cast_nullable_to_non_nullable
as CartPricesModel?,actionChoice: freezed == actionChoice ? _self.actionChoice : actionChoice // ignore: cast_nullable_to_non_nullable
as String?,actionChoiceName: freezed == actionChoiceName ? _self.actionChoiceName : actionChoiceName // ignore: cast_nullable_to_non_nullable
as String?,actionChoiceList: freezed == actionChoiceList ? _self.actionChoiceList : actionChoiceList // ignore: cast_nullable_to_non_nullable
as List<CartActionChoiceModel>?,actionChoiceCoupon: freezed == actionChoiceCoupon ? _self.actionChoiceCoupon : actionChoiceCoupon // ignore: cast_nullable_to_non_nullable
as String?,couponList: freezed == couponList ? _self.couponList : couponList // ignore: cast_nullable_to_non_nullable
as List<CartCouponModel>?,discountByCoupons: freezed == discountByCoupons ? _self.discountByCoupons : discountByCoupons // ignore: cast_nullable_to_non_nullable
as int?,tradeInDiscountAmount: freezed == tradeInDiscountAmount ? _self.tradeInDiscountAmount : tradeInDiscountAmount // ignore: cast_nullable_to_non_nullable
as int?,tradeInAdditionalDiscount: freezed == tradeInAdditionalDiscount ? _self.tradeInAdditionalDiscount : tradeInAdditionalDiscount // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}
/// Create a copy of CartResponseModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CartPricesModelCopyWith<$Res>? get priceDetails {
    if (_self.priceDetails == null) {
    return null;
  }

  return $CartPricesModelCopyWith<$Res>(_self.priceDetails!, (value) {
    return _then(_self.copyWith(priceDetails: value));
  });
}
}


/// Adds pattern-matching-related methods to [CartResponseModel].
extension CartResponseModelPatterns on CartResponseModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CartResponseModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CartResponseModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CartResponseModel value)  $default,){
final _that = this;
switch (_that) {
case _CartResponseModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CartResponseModel value)?  $default,){
final _that = this;
switch (_that) {
case _CartResponseModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<CartItemModel>? items, @JsonKey(name: 'total_prices')  CartPricesModel? priceDetails, @JsonKey(name: 'action_choice')  String? actionChoice, @JsonKey(name: 'action_choice_name')  String? actionChoiceName, @JsonKey(name: 'action_choice_list')  List<CartActionChoiceModel>? actionChoiceList, @JsonKey(name: 'action_choice_coupon')  String? actionChoiceCoupon, @JsonKey(name: 'coupon_list')  List<CartCouponModel>? couponList, @JsonKey(name: 'discount_by_coupons')  int? discountByCoupons, @JsonKey(name: 'trade_in_discount_amount')  int? tradeInDiscountAmount, @JsonKey(name: 'trade_in_additional_discount')  int? tradeInAdditionalDiscount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CartResponseModel() when $default != null:
return $default(_that.items,_that.priceDetails,_that.actionChoice,_that.actionChoiceName,_that.actionChoiceList,_that.actionChoiceCoupon,_that.couponList,_that.discountByCoupons,_that.tradeInDiscountAmount,_that.tradeInAdditionalDiscount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<CartItemModel>? items, @JsonKey(name: 'total_prices')  CartPricesModel? priceDetails, @JsonKey(name: 'action_choice')  String? actionChoice, @JsonKey(name: 'action_choice_name')  String? actionChoiceName, @JsonKey(name: 'action_choice_list')  List<CartActionChoiceModel>? actionChoiceList, @JsonKey(name: 'action_choice_coupon')  String? actionChoiceCoupon, @JsonKey(name: 'coupon_list')  List<CartCouponModel>? couponList, @JsonKey(name: 'discount_by_coupons')  int? discountByCoupons, @JsonKey(name: 'trade_in_discount_amount')  int? tradeInDiscountAmount, @JsonKey(name: 'trade_in_additional_discount')  int? tradeInAdditionalDiscount)  $default,) {final _that = this;
switch (_that) {
case _CartResponseModel():
return $default(_that.items,_that.priceDetails,_that.actionChoice,_that.actionChoiceName,_that.actionChoiceList,_that.actionChoiceCoupon,_that.couponList,_that.discountByCoupons,_that.tradeInDiscountAmount,_that.tradeInAdditionalDiscount);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<CartItemModel>? items, @JsonKey(name: 'total_prices')  CartPricesModel? priceDetails, @JsonKey(name: 'action_choice')  String? actionChoice, @JsonKey(name: 'action_choice_name')  String? actionChoiceName, @JsonKey(name: 'action_choice_list')  List<CartActionChoiceModel>? actionChoiceList, @JsonKey(name: 'action_choice_coupon')  String? actionChoiceCoupon, @JsonKey(name: 'coupon_list')  List<CartCouponModel>? couponList, @JsonKey(name: 'discount_by_coupons')  int? discountByCoupons, @JsonKey(name: 'trade_in_discount_amount')  int? tradeInDiscountAmount, @JsonKey(name: 'trade_in_additional_discount')  int? tradeInAdditionalDiscount)?  $default,) {final _that = this;
switch (_that) {
case _CartResponseModel() when $default != null:
return $default(_that.items,_that.priceDetails,_that.actionChoice,_that.actionChoiceName,_that.actionChoiceList,_that.actionChoiceCoupon,_that.couponList,_that.discountByCoupons,_that.tradeInDiscountAmount,_that.tradeInAdditionalDiscount);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CartResponseModel extends CartResponseModel {
  const _CartResponseModel({final  List<CartItemModel>? items, @JsonKey(name: 'total_prices') this.priceDetails, @JsonKey(name: 'action_choice') this.actionChoice, @JsonKey(name: 'action_choice_name') this.actionChoiceName, @JsonKey(name: 'action_choice_list') final  List<CartActionChoiceModel>? actionChoiceList, @JsonKey(name: 'action_choice_coupon') this.actionChoiceCoupon, @JsonKey(name: 'coupon_list') final  List<CartCouponModel>? couponList, @JsonKey(name: 'discount_by_coupons') this.discountByCoupons, @JsonKey(name: 'trade_in_discount_amount') this.tradeInDiscountAmount, @JsonKey(name: 'trade_in_additional_discount') this.tradeInAdditionalDiscount}): _items = items,_actionChoiceList = actionChoiceList,_couponList = couponList,super._();
  factory _CartResponseModel.fromJson(Map<String, dynamic> json) => _$CartResponseModelFromJson(json);

 final  List<CartItemModel>? _items;
@override List<CartItemModel>? get items {
  final value = _items;
  if (value == null) return null;
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(name: 'total_prices') final  CartPricesModel? priceDetails;
@override@JsonKey(name: 'action_choice') final  String? actionChoice;
@override@JsonKey(name: 'action_choice_name') final  String? actionChoiceName;
 final  List<CartActionChoiceModel>? _actionChoiceList;
@override@JsonKey(name: 'action_choice_list') List<CartActionChoiceModel>? get actionChoiceList {
  final value = _actionChoiceList;
  if (value == null) return null;
  if (_actionChoiceList is EqualUnmodifiableListView) return _actionChoiceList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(name: 'action_choice_coupon') final  String? actionChoiceCoupon;
 final  List<CartCouponModel>? _couponList;
@override@JsonKey(name: 'coupon_list') List<CartCouponModel>? get couponList {
  final value = _couponList;
  if (value == null) return null;
  if (_couponList is EqualUnmodifiableListView) return _couponList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(name: 'discount_by_coupons') final  int? discountByCoupons;
@override@JsonKey(name: 'trade_in_discount_amount') final  int? tradeInDiscountAmount;
@override@JsonKey(name: 'trade_in_additional_discount') final  int? tradeInAdditionalDiscount;

/// Create a copy of CartResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CartResponseModelCopyWith<_CartResponseModel> get copyWith => __$CartResponseModelCopyWithImpl<_CartResponseModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CartResponseModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CartResponseModel&&const DeepCollectionEquality().equals(other._items, _items)&&(identical(other.priceDetails, priceDetails) || other.priceDetails == priceDetails)&&(identical(other.actionChoice, actionChoice) || other.actionChoice == actionChoice)&&(identical(other.actionChoiceName, actionChoiceName) || other.actionChoiceName == actionChoiceName)&&const DeepCollectionEquality().equals(other._actionChoiceList, _actionChoiceList)&&(identical(other.actionChoiceCoupon, actionChoiceCoupon) || other.actionChoiceCoupon == actionChoiceCoupon)&&const DeepCollectionEquality().equals(other._couponList, _couponList)&&(identical(other.discountByCoupons, discountByCoupons) || other.discountByCoupons == discountByCoupons)&&(identical(other.tradeInDiscountAmount, tradeInDiscountAmount) || other.tradeInDiscountAmount == tradeInDiscountAmount)&&(identical(other.tradeInAdditionalDiscount, tradeInAdditionalDiscount) || other.tradeInAdditionalDiscount == tradeInAdditionalDiscount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_items),priceDetails,actionChoice,actionChoiceName,const DeepCollectionEquality().hash(_actionChoiceList),actionChoiceCoupon,const DeepCollectionEquality().hash(_couponList),discountByCoupons,tradeInDiscountAmount,tradeInAdditionalDiscount);

@override
String toString() {
  return 'CartResponseModel(items: $items, priceDetails: $priceDetails, actionChoice: $actionChoice, actionChoiceName: $actionChoiceName, actionChoiceList: $actionChoiceList, actionChoiceCoupon: $actionChoiceCoupon, couponList: $couponList, discountByCoupons: $discountByCoupons, tradeInDiscountAmount: $tradeInDiscountAmount, tradeInAdditionalDiscount: $tradeInAdditionalDiscount)';
}


}

/// @nodoc
abstract mixin class _$CartResponseModelCopyWith<$Res> implements $CartResponseModelCopyWith<$Res> {
  factory _$CartResponseModelCopyWith(_CartResponseModel value, $Res Function(_CartResponseModel) _then) = __$CartResponseModelCopyWithImpl;
@override @useResult
$Res call({
 List<CartItemModel>? items,@JsonKey(name: 'total_prices') CartPricesModel? priceDetails,@JsonKey(name: 'action_choice') String? actionChoice,@JsonKey(name: 'action_choice_name') String? actionChoiceName,@JsonKey(name: 'action_choice_list') List<CartActionChoiceModel>? actionChoiceList,@JsonKey(name: 'action_choice_coupon') String? actionChoiceCoupon,@JsonKey(name: 'coupon_list') List<CartCouponModel>? couponList,@JsonKey(name: 'discount_by_coupons') int? discountByCoupons,@JsonKey(name: 'trade_in_discount_amount') int? tradeInDiscountAmount,@JsonKey(name: 'trade_in_additional_discount') int? tradeInAdditionalDiscount
});


@override $CartPricesModelCopyWith<$Res>? get priceDetails;

}
/// @nodoc
class __$CartResponseModelCopyWithImpl<$Res>
    implements _$CartResponseModelCopyWith<$Res> {
  __$CartResponseModelCopyWithImpl(this._self, this._then);

  final _CartResponseModel _self;
  final $Res Function(_CartResponseModel) _then;

/// Create a copy of CartResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? items = freezed,Object? priceDetails = freezed,Object? actionChoice = freezed,Object? actionChoiceName = freezed,Object? actionChoiceList = freezed,Object? actionChoiceCoupon = freezed,Object? couponList = freezed,Object? discountByCoupons = freezed,Object? tradeInDiscountAmount = freezed,Object? tradeInAdditionalDiscount = freezed,}) {
  return _then(_CartResponseModel(
items: freezed == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<CartItemModel>?,priceDetails: freezed == priceDetails ? _self.priceDetails : priceDetails // ignore: cast_nullable_to_non_nullable
as CartPricesModel?,actionChoice: freezed == actionChoice ? _self.actionChoice : actionChoice // ignore: cast_nullable_to_non_nullable
as String?,actionChoiceName: freezed == actionChoiceName ? _self.actionChoiceName : actionChoiceName // ignore: cast_nullable_to_non_nullable
as String?,actionChoiceList: freezed == actionChoiceList ? _self._actionChoiceList : actionChoiceList // ignore: cast_nullable_to_non_nullable
as List<CartActionChoiceModel>?,actionChoiceCoupon: freezed == actionChoiceCoupon ? _self.actionChoiceCoupon : actionChoiceCoupon // ignore: cast_nullable_to_non_nullable
as String?,couponList: freezed == couponList ? _self._couponList : couponList // ignore: cast_nullable_to_non_nullable
as List<CartCouponModel>?,discountByCoupons: freezed == discountByCoupons ? _self.discountByCoupons : discountByCoupons // ignore: cast_nullable_to_non_nullable
as int?,tradeInDiscountAmount: freezed == tradeInDiscountAmount ? _self.tradeInDiscountAmount : tradeInDiscountAmount // ignore: cast_nullable_to_non_nullable
as int?,tradeInAdditionalDiscount: freezed == tradeInAdditionalDiscount ? _self.tradeInAdditionalDiscount : tradeInAdditionalDiscount // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

/// Create a copy of CartResponseModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CartPricesModelCopyWith<$Res>? get priceDetails {
    if (_self.priceDetails == null) {
    return null;
  }

  return $CartPricesModelCopyWith<$Res>(_self.priceDetails!, (value) {
    return _then(_self.copyWith(priceDetails: value));
  });
}
}


/// @nodoc
mixin _$CartItemModel {

 int? get id;@JsonKey(name: 'product_id') int? get productId; String? get name; String? get code;@JsonKey(name: 'xml_id') String? get xmlId;@JsonKey(name: 'code_1c') String? get code1c; String? get preview; int? get quantity;@JsonKey(name: 'earned_bonus') int? get bonus;@JsonKey(name: 'spent_bonus') int? get spentBonus;@JsonKey(name: 'earned_chips') int? get earnedChips;@JsonKey(name: 'prices_per_item') CartPricesModel? get prices;@JsonKey(name: 'prices_sums') CartPricesModel? get priceSums;@JsonKey(name: 'is_intercity') bool? get isIntercity;@JsonKey(name: 'is_gift') bool? get isGift;@JsonKey(name: 'catalog_quantity') int? get catalogQuantity;@JsonKey(name: 'can_buy') bool? get canBuy;@JsonKey(name: 'in_basket') bool? get inBasket;@JsonKey(name: 'gifts') List<List<CartItemModel>>? get gifts; CartBrandModel? get metrics;@JsonKey(name: 'action_xml_id') String? get actionXmlId; CartTradeInModel? get tradein;@JsonKey(name: 'only_vit') bool? get isShowcase;@JsonKey(name: 'reviews_count') int? get reviewCount; double? get rating;
/// Create a copy of CartItemModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CartItemModelCopyWith<CartItemModel> get copyWith => _$CartItemModelCopyWithImpl<CartItemModel>(this as CartItemModel, _$identity);

  /// Serializes this CartItemModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CartItemModel&&(identical(other.id, id) || other.id == id)&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.name, name) || other.name == name)&&(identical(other.code, code) || other.code == code)&&(identical(other.xmlId, xmlId) || other.xmlId == xmlId)&&(identical(other.code1c, code1c) || other.code1c == code1c)&&(identical(other.preview, preview) || other.preview == preview)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.bonus, bonus) || other.bonus == bonus)&&(identical(other.spentBonus, spentBonus) || other.spentBonus == spentBonus)&&(identical(other.earnedChips, earnedChips) || other.earnedChips == earnedChips)&&(identical(other.prices, prices) || other.prices == prices)&&(identical(other.priceSums, priceSums) || other.priceSums == priceSums)&&(identical(other.isIntercity, isIntercity) || other.isIntercity == isIntercity)&&(identical(other.isGift, isGift) || other.isGift == isGift)&&(identical(other.catalogQuantity, catalogQuantity) || other.catalogQuantity == catalogQuantity)&&(identical(other.canBuy, canBuy) || other.canBuy == canBuy)&&(identical(other.inBasket, inBasket) || other.inBasket == inBasket)&&const DeepCollectionEquality().equals(other.gifts, gifts)&&(identical(other.metrics, metrics) || other.metrics == metrics)&&(identical(other.actionXmlId, actionXmlId) || other.actionXmlId == actionXmlId)&&(identical(other.tradein, tradein) || other.tradein == tradein)&&(identical(other.isShowcase, isShowcase) || other.isShowcase == isShowcase)&&(identical(other.reviewCount, reviewCount) || other.reviewCount == reviewCount)&&(identical(other.rating, rating) || other.rating == rating));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,productId,name,code,xmlId,code1c,preview,quantity,bonus,spentBonus,earnedChips,prices,priceSums,isIntercity,isGift,catalogQuantity,canBuy,inBasket,const DeepCollectionEquality().hash(gifts),metrics,actionXmlId,tradein,isShowcase,reviewCount,rating]);

@override
String toString() {
  return 'CartItemModel(id: $id, productId: $productId, name: $name, code: $code, xmlId: $xmlId, code1c: $code1c, preview: $preview, quantity: $quantity, bonus: $bonus, spentBonus: $spentBonus, earnedChips: $earnedChips, prices: $prices, priceSums: $priceSums, isIntercity: $isIntercity, isGift: $isGift, catalogQuantity: $catalogQuantity, canBuy: $canBuy, inBasket: $inBasket, gifts: $gifts, metrics: $metrics, actionXmlId: $actionXmlId, tradein: $tradein, isShowcase: $isShowcase, reviewCount: $reviewCount, rating: $rating)';
}


}

/// @nodoc
abstract mixin class $CartItemModelCopyWith<$Res>  {
  factory $CartItemModelCopyWith(CartItemModel value, $Res Function(CartItemModel) _then) = _$CartItemModelCopyWithImpl;
@useResult
$Res call({
 int? id,@JsonKey(name: 'product_id') int? productId, String? name, String? code,@JsonKey(name: 'xml_id') String? xmlId,@JsonKey(name: 'code_1c') String? code1c, String? preview, int? quantity,@JsonKey(name: 'earned_bonus') int? bonus,@JsonKey(name: 'spent_bonus') int? spentBonus,@JsonKey(name: 'earned_chips') int? earnedChips,@JsonKey(name: 'prices_per_item') CartPricesModel? prices,@JsonKey(name: 'prices_sums') CartPricesModel? priceSums,@JsonKey(name: 'is_intercity') bool? isIntercity,@JsonKey(name: 'is_gift') bool? isGift,@JsonKey(name: 'catalog_quantity') int? catalogQuantity,@JsonKey(name: 'can_buy') bool? canBuy,@JsonKey(name: 'in_basket') bool? inBasket,@JsonKey(name: 'gifts') List<List<CartItemModel>>? gifts, CartBrandModel? metrics,@JsonKey(name: 'action_xml_id') String? actionXmlId, CartTradeInModel? tradein,@JsonKey(name: 'only_vit') bool? isShowcase,@JsonKey(name: 'reviews_count') int? reviewCount, double? rating
});


$CartPricesModelCopyWith<$Res>? get prices;$CartPricesModelCopyWith<$Res>? get priceSums;$CartBrandModelCopyWith<$Res>? get metrics;$CartTradeInModelCopyWith<$Res>? get tradein;

}
/// @nodoc
class _$CartItemModelCopyWithImpl<$Res>
    implements $CartItemModelCopyWith<$Res> {
  _$CartItemModelCopyWithImpl(this._self, this._then);

  final CartItemModel _self;
  final $Res Function(CartItemModel) _then;

/// Create a copy of CartItemModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? productId = freezed,Object? name = freezed,Object? code = freezed,Object? xmlId = freezed,Object? code1c = freezed,Object? preview = freezed,Object? quantity = freezed,Object? bonus = freezed,Object? spentBonus = freezed,Object? earnedChips = freezed,Object? prices = freezed,Object? priceSums = freezed,Object? isIntercity = freezed,Object? isGift = freezed,Object? catalogQuantity = freezed,Object? canBuy = freezed,Object? inBasket = freezed,Object? gifts = freezed,Object? metrics = freezed,Object? actionXmlId = freezed,Object? tradein = freezed,Object? isShowcase = freezed,Object? reviewCount = freezed,Object? rating = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,productId: freezed == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,code: freezed == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String?,xmlId: freezed == xmlId ? _self.xmlId : xmlId // ignore: cast_nullable_to_non_nullable
as String?,code1c: freezed == code1c ? _self.code1c : code1c // ignore: cast_nullable_to_non_nullable
as String?,preview: freezed == preview ? _self.preview : preview // ignore: cast_nullable_to_non_nullable
as String?,quantity: freezed == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int?,bonus: freezed == bonus ? _self.bonus : bonus // ignore: cast_nullable_to_non_nullable
as int?,spentBonus: freezed == spentBonus ? _self.spentBonus : spentBonus // ignore: cast_nullable_to_non_nullable
as int?,earnedChips: freezed == earnedChips ? _self.earnedChips : earnedChips // ignore: cast_nullable_to_non_nullable
as int?,prices: freezed == prices ? _self.prices : prices // ignore: cast_nullable_to_non_nullable
as CartPricesModel?,priceSums: freezed == priceSums ? _self.priceSums : priceSums // ignore: cast_nullable_to_non_nullable
as CartPricesModel?,isIntercity: freezed == isIntercity ? _self.isIntercity : isIntercity // ignore: cast_nullable_to_non_nullable
as bool?,isGift: freezed == isGift ? _self.isGift : isGift // ignore: cast_nullable_to_non_nullable
as bool?,catalogQuantity: freezed == catalogQuantity ? _self.catalogQuantity : catalogQuantity // ignore: cast_nullable_to_non_nullable
as int?,canBuy: freezed == canBuy ? _self.canBuy : canBuy // ignore: cast_nullable_to_non_nullable
as bool?,inBasket: freezed == inBasket ? _self.inBasket : inBasket // ignore: cast_nullable_to_non_nullable
as bool?,gifts: freezed == gifts ? _self.gifts : gifts // ignore: cast_nullable_to_non_nullable
as List<List<CartItemModel>>?,metrics: freezed == metrics ? _self.metrics : metrics // ignore: cast_nullable_to_non_nullable
as CartBrandModel?,actionXmlId: freezed == actionXmlId ? _self.actionXmlId : actionXmlId // ignore: cast_nullable_to_non_nullable
as String?,tradein: freezed == tradein ? _self.tradein : tradein // ignore: cast_nullable_to_non_nullable
as CartTradeInModel?,isShowcase: freezed == isShowcase ? _self.isShowcase : isShowcase // ignore: cast_nullable_to_non_nullable
as bool?,reviewCount: freezed == reviewCount ? _self.reviewCount : reviewCount // ignore: cast_nullable_to_non_nullable
as int?,rating: freezed == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}
/// Create a copy of CartItemModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CartPricesModelCopyWith<$Res>? get prices {
    if (_self.prices == null) {
    return null;
  }

  return $CartPricesModelCopyWith<$Res>(_self.prices!, (value) {
    return _then(_self.copyWith(prices: value));
  });
}/// Create a copy of CartItemModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CartPricesModelCopyWith<$Res>? get priceSums {
    if (_self.priceSums == null) {
    return null;
  }

  return $CartPricesModelCopyWith<$Res>(_self.priceSums!, (value) {
    return _then(_self.copyWith(priceSums: value));
  });
}/// Create a copy of CartItemModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CartBrandModelCopyWith<$Res>? get metrics {
    if (_self.metrics == null) {
    return null;
  }

  return $CartBrandModelCopyWith<$Res>(_self.metrics!, (value) {
    return _then(_self.copyWith(metrics: value));
  });
}/// Create a copy of CartItemModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CartTradeInModelCopyWith<$Res>? get tradein {
    if (_self.tradein == null) {
    return null;
  }

  return $CartTradeInModelCopyWith<$Res>(_self.tradein!, (value) {
    return _then(_self.copyWith(tradein: value));
  });
}
}


/// Adds pattern-matching-related methods to [CartItemModel].
extension CartItemModelPatterns on CartItemModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CartItemModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CartItemModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CartItemModel value)  $default,){
final _that = this;
switch (_that) {
case _CartItemModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CartItemModel value)?  $default,){
final _that = this;
switch (_that) {
case _CartItemModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id, @JsonKey(name: 'product_id')  int? productId,  String? name,  String? code, @JsonKey(name: 'xml_id')  String? xmlId, @JsonKey(name: 'code_1c')  String? code1c,  String? preview,  int? quantity, @JsonKey(name: 'earned_bonus')  int? bonus, @JsonKey(name: 'spent_bonus')  int? spentBonus, @JsonKey(name: 'earned_chips')  int? earnedChips, @JsonKey(name: 'prices_per_item')  CartPricesModel? prices, @JsonKey(name: 'prices_sums')  CartPricesModel? priceSums, @JsonKey(name: 'is_intercity')  bool? isIntercity, @JsonKey(name: 'is_gift')  bool? isGift, @JsonKey(name: 'catalog_quantity')  int? catalogQuantity, @JsonKey(name: 'can_buy')  bool? canBuy, @JsonKey(name: 'in_basket')  bool? inBasket, @JsonKey(name: 'gifts')  List<List<CartItemModel>>? gifts,  CartBrandModel? metrics, @JsonKey(name: 'action_xml_id')  String? actionXmlId,  CartTradeInModel? tradein, @JsonKey(name: 'only_vit')  bool? isShowcase, @JsonKey(name: 'reviews_count')  int? reviewCount,  double? rating)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CartItemModel() when $default != null:
return $default(_that.id,_that.productId,_that.name,_that.code,_that.xmlId,_that.code1c,_that.preview,_that.quantity,_that.bonus,_that.spentBonus,_that.earnedChips,_that.prices,_that.priceSums,_that.isIntercity,_that.isGift,_that.catalogQuantity,_that.canBuy,_that.inBasket,_that.gifts,_that.metrics,_that.actionXmlId,_that.tradein,_that.isShowcase,_that.reviewCount,_that.rating);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id, @JsonKey(name: 'product_id')  int? productId,  String? name,  String? code, @JsonKey(name: 'xml_id')  String? xmlId, @JsonKey(name: 'code_1c')  String? code1c,  String? preview,  int? quantity, @JsonKey(name: 'earned_bonus')  int? bonus, @JsonKey(name: 'spent_bonus')  int? spentBonus, @JsonKey(name: 'earned_chips')  int? earnedChips, @JsonKey(name: 'prices_per_item')  CartPricesModel? prices, @JsonKey(name: 'prices_sums')  CartPricesModel? priceSums, @JsonKey(name: 'is_intercity')  bool? isIntercity, @JsonKey(name: 'is_gift')  bool? isGift, @JsonKey(name: 'catalog_quantity')  int? catalogQuantity, @JsonKey(name: 'can_buy')  bool? canBuy, @JsonKey(name: 'in_basket')  bool? inBasket, @JsonKey(name: 'gifts')  List<List<CartItemModel>>? gifts,  CartBrandModel? metrics, @JsonKey(name: 'action_xml_id')  String? actionXmlId,  CartTradeInModel? tradein, @JsonKey(name: 'only_vit')  bool? isShowcase, @JsonKey(name: 'reviews_count')  int? reviewCount,  double? rating)  $default,) {final _that = this;
switch (_that) {
case _CartItemModel():
return $default(_that.id,_that.productId,_that.name,_that.code,_that.xmlId,_that.code1c,_that.preview,_that.quantity,_that.bonus,_that.spentBonus,_that.earnedChips,_that.prices,_that.priceSums,_that.isIntercity,_that.isGift,_that.catalogQuantity,_that.canBuy,_that.inBasket,_that.gifts,_that.metrics,_that.actionXmlId,_that.tradein,_that.isShowcase,_that.reviewCount,_that.rating);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id, @JsonKey(name: 'product_id')  int? productId,  String? name,  String? code, @JsonKey(name: 'xml_id')  String? xmlId, @JsonKey(name: 'code_1c')  String? code1c,  String? preview,  int? quantity, @JsonKey(name: 'earned_bonus')  int? bonus, @JsonKey(name: 'spent_bonus')  int? spentBonus, @JsonKey(name: 'earned_chips')  int? earnedChips, @JsonKey(name: 'prices_per_item')  CartPricesModel? prices, @JsonKey(name: 'prices_sums')  CartPricesModel? priceSums, @JsonKey(name: 'is_intercity')  bool? isIntercity, @JsonKey(name: 'is_gift')  bool? isGift, @JsonKey(name: 'catalog_quantity')  int? catalogQuantity, @JsonKey(name: 'can_buy')  bool? canBuy, @JsonKey(name: 'in_basket')  bool? inBasket, @JsonKey(name: 'gifts')  List<List<CartItemModel>>? gifts,  CartBrandModel? metrics, @JsonKey(name: 'action_xml_id')  String? actionXmlId,  CartTradeInModel? tradein, @JsonKey(name: 'only_vit')  bool? isShowcase, @JsonKey(name: 'reviews_count')  int? reviewCount,  double? rating)?  $default,) {final _that = this;
switch (_that) {
case _CartItemModel() when $default != null:
return $default(_that.id,_that.productId,_that.name,_that.code,_that.xmlId,_that.code1c,_that.preview,_that.quantity,_that.bonus,_that.spentBonus,_that.earnedChips,_that.prices,_that.priceSums,_that.isIntercity,_that.isGift,_that.catalogQuantity,_that.canBuy,_that.inBasket,_that.gifts,_that.metrics,_that.actionXmlId,_that.tradein,_that.isShowcase,_that.reviewCount,_that.rating);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CartItemModel extends CartItemModel {
  const _CartItemModel({this.id, @JsonKey(name: 'product_id') this.productId, this.name, this.code, @JsonKey(name: 'xml_id') this.xmlId, @JsonKey(name: 'code_1c') this.code1c, this.preview, this.quantity, @JsonKey(name: 'earned_bonus') this.bonus, @JsonKey(name: 'spent_bonus') this.spentBonus, @JsonKey(name: 'earned_chips') this.earnedChips, @JsonKey(name: 'prices_per_item') this.prices, @JsonKey(name: 'prices_sums') this.priceSums, @JsonKey(name: 'is_intercity') this.isIntercity, @JsonKey(name: 'is_gift') this.isGift, @JsonKey(name: 'catalog_quantity') this.catalogQuantity, @JsonKey(name: 'can_buy') this.canBuy, @JsonKey(name: 'in_basket') this.inBasket, @JsonKey(name: 'gifts') final  List<List<CartItemModel>>? gifts, this.metrics, @JsonKey(name: 'action_xml_id') this.actionXmlId, this.tradein, @JsonKey(name: 'only_vit') this.isShowcase, @JsonKey(name: 'reviews_count') this.reviewCount, this.rating}): _gifts = gifts,super._();
  factory _CartItemModel.fromJson(Map<String, dynamic> json) => _$CartItemModelFromJson(json);

@override final  int? id;
@override@JsonKey(name: 'product_id') final  int? productId;
@override final  String? name;
@override final  String? code;
@override@JsonKey(name: 'xml_id') final  String? xmlId;
@override@JsonKey(name: 'code_1c') final  String? code1c;
@override final  String? preview;
@override final  int? quantity;
@override@JsonKey(name: 'earned_bonus') final  int? bonus;
@override@JsonKey(name: 'spent_bonus') final  int? spentBonus;
@override@JsonKey(name: 'earned_chips') final  int? earnedChips;
@override@JsonKey(name: 'prices_per_item') final  CartPricesModel? prices;
@override@JsonKey(name: 'prices_sums') final  CartPricesModel? priceSums;
@override@JsonKey(name: 'is_intercity') final  bool? isIntercity;
@override@JsonKey(name: 'is_gift') final  bool? isGift;
@override@JsonKey(name: 'catalog_quantity') final  int? catalogQuantity;
@override@JsonKey(name: 'can_buy') final  bool? canBuy;
@override@JsonKey(name: 'in_basket') final  bool? inBasket;
 final  List<List<CartItemModel>>? _gifts;
@override@JsonKey(name: 'gifts') List<List<CartItemModel>>? get gifts {
  final value = _gifts;
  if (value == null) return null;
  if (_gifts is EqualUnmodifiableListView) return _gifts;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  CartBrandModel? metrics;
@override@JsonKey(name: 'action_xml_id') final  String? actionXmlId;
@override final  CartTradeInModel? tradein;
@override@JsonKey(name: 'only_vit') final  bool? isShowcase;
@override@JsonKey(name: 'reviews_count') final  int? reviewCount;
@override final  double? rating;

/// Create a copy of CartItemModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CartItemModelCopyWith<_CartItemModel> get copyWith => __$CartItemModelCopyWithImpl<_CartItemModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CartItemModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CartItemModel&&(identical(other.id, id) || other.id == id)&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.name, name) || other.name == name)&&(identical(other.code, code) || other.code == code)&&(identical(other.xmlId, xmlId) || other.xmlId == xmlId)&&(identical(other.code1c, code1c) || other.code1c == code1c)&&(identical(other.preview, preview) || other.preview == preview)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.bonus, bonus) || other.bonus == bonus)&&(identical(other.spentBonus, spentBonus) || other.spentBonus == spentBonus)&&(identical(other.earnedChips, earnedChips) || other.earnedChips == earnedChips)&&(identical(other.prices, prices) || other.prices == prices)&&(identical(other.priceSums, priceSums) || other.priceSums == priceSums)&&(identical(other.isIntercity, isIntercity) || other.isIntercity == isIntercity)&&(identical(other.isGift, isGift) || other.isGift == isGift)&&(identical(other.catalogQuantity, catalogQuantity) || other.catalogQuantity == catalogQuantity)&&(identical(other.canBuy, canBuy) || other.canBuy == canBuy)&&(identical(other.inBasket, inBasket) || other.inBasket == inBasket)&&const DeepCollectionEquality().equals(other._gifts, _gifts)&&(identical(other.metrics, metrics) || other.metrics == metrics)&&(identical(other.actionXmlId, actionXmlId) || other.actionXmlId == actionXmlId)&&(identical(other.tradein, tradein) || other.tradein == tradein)&&(identical(other.isShowcase, isShowcase) || other.isShowcase == isShowcase)&&(identical(other.reviewCount, reviewCount) || other.reviewCount == reviewCount)&&(identical(other.rating, rating) || other.rating == rating));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,productId,name,code,xmlId,code1c,preview,quantity,bonus,spentBonus,earnedChips,prices,priceSums,isIntercity,isGift,catalogQuantity,canBuy,inBasket,const DeepCollectionEquality().hash(_gifts),metrics,actionXmlId,tradein,isShowcase,reviewCount,rating]);

@override
String toString() {
  return 'CartItemModel(id: $id, productId: $productId, name: $name, code: $code, xmlId: $xmlId, code1c: $code1c, preview: $preview, quantity: $quantity, bonus: $bonus, spentBonus: $spentBonus, earnedChips: $earnedChips, prices: $prices, priceSums: $priceSums, isIntercity: $isIntercity, isGift: $isGift, catalogQuantity: $catalogQuantity, canBuy: $canBuy, inBasket: $inBasket, gifts: $gifts, metrics: $metrics, actionXmlId: $actionXmlId, tradein: $tradein, isShowcase: $isShowcase, reviewCount: $reviewCount, rating: $rating)';
}


}

/// @nodoc
abstract mixin class _$CartItemModelCopyWith<$Res> implements $CartItemModelCopyWith<$Res> {
  factory _$CartItemModelCopyWith(_CartItemModel value, $Res Function(_CartItemModel) _then) = __$CartItemModelCopyWithImpl;
@override @useResult
$Res call({
 int? id,@JsonKey(name: 'product_id') int? productId, String? name, String? code,@JsonKey(name: 'xml_id') String? xmlId,@JsonKey(name: 'code_1c') String? code1c, String? preview, int? quantity,@JsonKey(name: 'earned_bonus') int? bonus,@JsonKey(name: 'spent_bonus') int? spentBonus,@JsonKey(name: 'earned_chips') int? earnedChips,@JsonKey(name: 'prices_per_item') CartPricesModel? prices,@JsonKey(name: 'prices_sums') CartPricesModel? priceSums,@JsonKey(name: 'is_intercity') bool? isIntercity,@JsonKey(name: 'is_gift') bool? isGift,@JsonKey(name: 'catalog_quantity') int? catalogQuantity,@JsonKey(name: 'can_buy') bool? canBuy,@JsonKey(name: 'in_basket') bool? inBasket,@JsonKey(name: 'gifts') List<List<CartItemModel>>? gifts, CartBrandModel? metrics,@JsonKey(name: 'action_xml_id') String? actionXmlId, CartTradeInModel? tradein,@JsonKey(name: 'only_vit') bool? isShowcase,@JsonKey(name: 'reviews_count') int? reviewCount, double? rating
});


@override $CartPricesModelCopyWith<$Res>? get prices;@override $CartPricesModelCopyWith<$Res>? get priceSums;@override $CartBrandModelCopyWith<$Res>? get metrics;@override $CartTradeInModelCopyWith<$Res>? get tradein;

}
/// @nodoc
class __$CartItemModelCopyWithImpl<$Res>
    implements _$CartItemModelCopyWith<$Res> {
  __$CartItemModelCopyWithImpl(this._self, this._then);

  final _CartItemModel _self;
  final $Res Function(_CartItemModel) _then;

/// Create a copy of CartItemModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? productId = freezed,Object? name = freezed,Object? code = freezed,Object? xmlId = freezed,Object? code1c = freezed,Object? preview = freezed,Object? quantity = freezed,Object? bonus = freezed,Object? spentBonus = freezed,Object? earnedChips = freezed,Object? prices = freezed,Object? priceSums = freezed,Object? isIntercity = freezed,Object? isGift = freezed,Object? catalogQuantity = freezed,Object? canBuy = freezed,Object? inBasket = freezed,Object? gifts = freezed,Object? metrics = freezed,Object? actionXmlId = freezed,Object? tradein = freezed,Object? isShowcase = freezed,Object? reviewCount = freezed,Object? rating = freezed,}) {
  return _then(_CartItemModel(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,productId: freezed == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,code: freezed == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String?,xmlId: freezed == xmlId ? _self.xmlId : xmlId // ignore: cast_nullable_to_non_nullable
as String?,code1c: freezed == code1c ? _self.code1c : code1c // ignore: cast_nullable_to_non_nullable
as String?,preview: freezed == preview ? _self.preview : preview // ignore: cast_nullable_to_non_nullable
as String?,quantity: freezed == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int?,bonus: freezed == bonus ? _self.bonus : bonus // ignore: cast_nullable_to_non_nullable
as int?,spentBonus: freezed == spentBonus ? _self.spentBonus : spentBonus // ignore: cast_nullable_to_non_nullable
as int?,earnedChips: freezed == earnedChips ? _self.earnedChips : earnedChips // ignore: cast_nullable_to_non_nullable
as int?,prices: freezed == prices ? _self.prices : prices // ignore: cast_nullable_to_non_nullable
as CartPricesModel?,priceSums: freezed == priceSums ? _self.priceSums : priceSums // ignore: cast_nullable_to_non_nullable
as CartPricesModel?,isIntercity: freezed == isIntercity ? _self.isIntercity : isIntercity // ignore: cast_nullable_to_non_nullable
as bool?,isGift: freezed == isGift ? _self.isGift : isGift // ignore: cast_nullable_to_non_nullable
as bool?,catalogQuantity: freezed == catalogQuantity ? _self.catalogQuantity : catalogQuantity // ignore: cast_nullable_to_non_nullable
as int?,canBuy: freezed == canBuy ? _self.canBuy : canBuy // ignore: cast_nullable_to_non_nullable
as bool?,inBasket: freezed == inBasket ? _self.inBasket : inBasket // ignore: cast_nullable_to_non_nullable
as bool?,gifts: freezed == gifts ? _self._gifts : gifts // ignore: cast_nullable_to_non_nullable
as List<List<CartItemModel>>?,metrics: freezed == metrics ? _self.metrics : metrics // ignore: cast_nullable_to_non_nullable
as CartBrandModel?,actionXmlId: freezed == actionXmlId ? _self.actionXmlId : actionXmlId // ignore: cast_nullable_to_non_nullable
as String?,tradein: freezed == tradein ? _self.tradein : tradein // ignore: cast_nullable_to_non_nullable
as CartTradeInModel?,isShowcase: freezed == isShowcase ? _self.isShowcase : isShowcase // ignore: cast_nullable_to_non_nullable
as bool?,reviewCount: freezed == reviewCount ? _self.reviewCount : reviewCount // ignore: cast_nullable_to_non_nullable
as int?,rating: freezed == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}

/// Create a copy of CartItemModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CartPricesModelCopyWith<$Res>? get prices {
    if (_self.prices == null) {
    return null;
  }

  return $CartPricesModelCopyWith<$Res>(_self.prices!, (value) {
    return _then(_self.copyWith(prices: value));
  });
}/// Create a copy of CartItemModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CartPricesModelCopyWith<$Res>? get priceSums {
    if (_self.priceSums == null) {
    return null;
  }

  return $CartPricesModelCopyWith<$Res>(_self.priceSums!, (value) {
    return _then(_self.copyWith(priceSums: value));
  });
}/// Create a copy of CartItemModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CartBrandModelCopyWith<$Res>? get metrics {
    if (_self.metrics == null) {
    return null;
  }

  return $CartBrandModelCopyWith<$Res>(_self.metrics!, (value) {
    return _then(_self.copyWith(metrics: value));
  });
}/// Create a copy of CartItemModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CartTradeInModelCopyWith<$Res>? get tradein {
    if (_self.tradein == null) {
    return null;
  }

  return $CartTradeInModelCopyWith<$Res>(_self.tradein!, (value) {
    return _then(_self.copyWith(tradein: value));
  });
}
}


/// @nodoc
mixin _$CartPricesModel {

@JsonKey(name: 'discounted_price') int get discountedPrice;@JsonKey(name: 'base_price') int get basePrice;
/// Create a copy of CartPricesModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CartPricesModelCopyWith<CartPricesModel> get copyWith => _$CartPricesModelCopyWithImpl<CartPricesModel>(this as CartPricesModel, _$identity);

  /// Serializes this CartPricesModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CartPricesModel&&(identical(other.discountedPrice, discountedPrice) || other.discountedPrice == discountedPrice)&&(identical(other.basePrice, basePrice) || other.basePrice == basePrice));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,discountedPrice,basePrice);

@override
String toString() {
  return 'CartPricesModel(discountedPrice: $discountedPrice, basePrice: $basePrice)';
}


}

/// @nodoc
abstract mixin class $CartPricesModelCopyWith<$Res>  {
  factory $CartPricesModelCopyWith(CartPricesModel value, $Res Function(CartPricesModel) _then) = _$CartPricesModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'discounted_price') int discountedPrice,@JsonKey(name: 'base_price') int basePrice
});




}
/// @nodoc
class _$CartPricesModelCopyWithImpl<$Res>
    implements $CartPricesModelCopyWith<$Res> {
  _$CartPricesModelCopyWithImpl(this._self, this._then);

  final CartPricesModel _self;
  final $Res Function(CartPricesModel) _then;

/// Create a copy of CartPricesModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? discountedPrice = null,Object? basePrice = null,}) {
  return _then(_self.copyWith(
discountedPrice: null == discountedPrice ? _self.discountedPrice : discountedPrice // ignore: cast_nullable_to_non_nullable
as int,basePrice: null == basePrice ? _self.basePrice : basePrice // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [CartPricesModel].
extension CartPricesModelPatterns on CartPricesModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CartPricesModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CartPricesModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CartPricesModel value)  $default,){
final _that = this;
switch (_that) {
case _CartPricesModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CartPricesModel value)?  $default,){
final _that = this;
switch (_that) {
case _CartPricesModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'discounted_price')  int discountedPrice, @JsonKey(name: 'base_price')  int basePrice)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CartPricesModel() when $default != null:
return $default(_that.discountedPrice,_that.basePrice);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'discounted_price')  int discountedPrice, @JsonKey(name: 'base_price')  int basePrice)  $default,) {final _that = this;
switch (_that) {
case _CartPricesModel():
return $default(_that.discountedPrice,_that.basePrice);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'discounted_price')  int discountedPrice, @JsonKey(name: 'base_price')  int basePrice)?  $default,) {final _that = this;
switch (_that) {
case _CartPricesModel() when $default != null:
return $default(_that.discountedPrice,_that.basePrice);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CartPricesModel extends CartPricesModel {
  const _CartPricesModel({@JsonKey(name: 'discounted_price') this.discountedPrice = 0, @JsonKey(name: 'base_price') this.basePrice = 0}): super._();
  factory _CartPricesModel.fromJson(Map<String, dynamic> json) => _$CartPricesModelFromJson(json);

@override@JsonKey(name: 'discounted_price') final  int discountedPrice;
@override@JsonKey(name: 'base_price') final  int basePrice;

/// Create a copy of CartPricesModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CartPricesModelCopyWith<_CartPricesModel> get copyWith => __$CartPricesModelCopyWithImpl<_CartPricesModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CartPricesModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CartPricesModel&&(identical(other.discountedPrice, discountedPrice) || other.discountedPrice == discountedPrice)&&(identical(other.basePrice, basePrice) || other.basePrice == basePrice));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,discountedPrice,basePrice);

@override
String toString() {
  return 'CartPricesModel(discountedPrice: $discountedPrice, basePrice: $basePrice)';
}


}

/// @nodoc
abstract mixin class _$CartPricesModelCopyWith<$Res> implements $CartPricesModelCopyWith<$Res> {
  factory _$CartPricesModelCopyWith(_CartPricesModel value, $Res Function(_CartPricesModel) _then) = __$CartPricesModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'discounted_price') int discountedPrice,@JsonKey(name: 'base_price') int basePrice
});




}
/// @nodoc
class __$CartPricesModelCopyWithImpl<$Res>
    implements _$CartPricesModelCopyWith<$Res> {
  __$CartPricesModelCopyWithImpl(this._self, this._then);

  final _CartPricesModel _self;
  final $Res Function(_CartPricesModel) _then;

/// Create a copy of CartPricesModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? discountedPrice = null,Object? basePrice = null,}) {
  return _then(_CartPricesModel(
discountedPrice: null == discountedPrice ? _self.discountedPrice : discountedPrice // ignore: cast_nullable_to_non_nullable
as int,basePrice: null == basePrice ? _self.basePrice : basePrice // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$CartBrandModel {

 String? get brand; String? get category;
/// Create a copy of CartBrandModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CartBrandModelCopyWith<CartBrandModel> get copyWith => _$CartBrandModelCopyWithImpl<CartBrandModel>(this as CartBrandModel, _$identity);

  /// Serializes this CartBrandModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CartBrandModel&&(identical(other.brand, brand) || other.brand == brand)&&(identical(other.category, category) || other.category == category));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,brand,category);

@override
String toString() {
  return 'CartBrandModel(brand: $brand, category: $category)';
}


}

/// @nodoc
abstract mixin class $CartBrandModelCopyWith<$Res>  {
  factory $CartBrandModelCopyWith(CartBrandModel value, $Res Function(CartBrandModel) _then) = _$CartBrandModelCopyWithImpl;
@useResult
$Res call({
 String? brand, String? category
});




}
/// @nodoc
class _$CartBrandModelCopyWithImpl<$Res>
    implements $CartBrandModelCopyWith<$Res> {
  _$CartBrandModelCopyWithImpl(this._self, this._then);

  final CartBrandModel _self;
  final $Res Function(CartBrandModel) _then;

/// Create a copy of CartBrandModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? brand = freezed,Object? category = freezed,}) {
  return _then(_self.copyWith(
brand: freezed == brand ? _self.brand : brand // ignore: cast_nullable_to_non_nullable
as String?,category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [CartBrandModel].
extension CartBrandModelPatterns on CartBrandModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CartBrandModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CartBrandModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CartBrandModel value)  $default,){
final _that = this;
switch (_that) {
case _CartBrandModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CartBrandModel value)?  $default,){
final _that = this;
switch (_that) {
case _CartBrandModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? brand,  String? category)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CartBrandModel() when $default != null:
return $default(_that.brand,_that.category);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? brand,  String? category)  $default,) {final _that = this;
switch (_that) {
case _CartBrandModel():
return $default(_that.brand,_that.category);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? brand,  String? category)?  $default,) {final _that = this;
switch (_that) {
case _CartBrandModel() when $default != null:
return $default(_that.brand,_that.category);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CartBrandModel extends CartBrandModel {
  const _CartBrandModel({this.brand, this.category}): super._();
  factory _CartBrandModel.fromJson(Map<String, dynamic> json) => _$CartBrandModelFromJson(json);

@override final  String? brand;
@override final  String? category;

/// Create a copy of CartBrandModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CartBrandModelCopyWith<_CartBrandModel> get copyWith => __$CartBrandModelCopyWithImpl<_CartBrandModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CartBrandModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CartBrandModel&&(identical(other.brand, brand) || other.brand == brand)&&(identical(other.category, category) || other.category == category));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,brand,category);

@override
String toString() {
  return 'CartBrandModel(brand: $brand, category: $category)';
}


}

/// @nodoc
abstract mixin class _$CartBrandModelCopyWith<$Res> implements $CartBrandModelCopyWith<$Res> {
  factory _$CartBrandModelCopyWith(_CartBrandModel value, $Res Function(_CartBrandModel) _then) = __$CartBrandModelCopyWithImpl;
@override @useResult
$Res call({
 String? brand, String? category
});




}
/// @nodoc
class __$CartBrandModelCopyWithImpl<$Res>
    implements _$CartBrandModelCopyWith<$Res> {
  __$CartBrandModelCopyWithImpl(this._self, this._then);

  final _CartBrandModel _self;
  final $Res Function(_CartBrandModel) _then;

/// Create a copy of CartBrandModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? brand = freezed,Object? category = freezed,}) {
  return _then(_CartBrandModel(
brand: freezed == brand ? _self.brand : brand // ignore: cast_nullable_to_non_nullable
as String?,category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$CartTradeInModel {

@JsonKey(name: 'discount_amount') int? get discountAmount;
/// Create a copy of CartTradeInModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CartTradeInModelCopyWith<CartTradeInModel> get copyWith => _$CartTradeInModelCopyWithImpl<CartTradeInModel>(this as CartTradeInModel, _$identity);

  /// Serializes this CartTradeInModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CartTradeInModel&&(identical(other.discountAmount, discountAmount) || other.discountAmount == discountAmount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,discountAmount);

@override
String toString() {
  return 'CartTradeInModel(discountAmount: $discountAmount)';
}


}

/// @nodoc
abstract mixin class $CartTradeInModelCopyWith<$Res>  {
  factory $CartTradeInModelCopyWith(CartTradeInModel value, $Res Function(CartTradeInModel) _then) = _$CartTradeInModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'discount_amount') int? discountAmount
});




}
/// @nodoc
class _$CartTradeInModelCopyWithImpl<$Res>
    implements $CartTradeInModelCopyWith<$Res> {
  _$CartTradeInModelCopyWithImpl(this._self, this._then);

  final CartTradeInModel _self;
  final $Res Function(CartTradeInModel) _then;

/// Create a copy of CartTradeInModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? discountAmount = freezed,}) {
  return _then(_self.copyWith(
discountAmount: freezed == discountAmount ? _self.discountAmount : discountAmount // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [CartTradeInModel].
extension CartTradeInModelPatterns on CartTradeInModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CartTradeInModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CartTradeInModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CartTradeInModel value)  $default,){
final _that = this;
switch (_that) {
case _CartTradeInModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CartTradeInModel value)?  $default,){
final _that = this;
switch (_that) {
case _CartTradeInModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'discount_amount')  int? discountAmount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CartTradeInModel() when $default != null:
return $default(_that.discountAmount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'discount_amount')  int? discountAmount)  $default,) {final _that = this;
switch (_that) {
case _CartTradeInModel():
return $default(_that.discountAmount);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'discount_amount')  int? discountAmount)?  $default,) {final _that = this;
switch (_that) {
case _CartTradeInModel() when $default != null:
return $default(_that.discountAmount);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CartTradeInModel extends CartTradeInModel {
  const _CartTradeInModel({@JsonKey(name: 'discount_amount') this.discountAmount}): super._();
  factory _CartTradeInModel.fromJson(Map<String, dynamic> json) => _$CartTradeInModelFromJson(json);

@override@JsonKey(name: 'discount_amount') final  int? discountAmount;

/// Create a copy of CartTradeInModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CartTradeInModelCopyWith<_CartTradeInModel> get copyWith => __$CartTradeInModelCopyWithImpl<_CartTradeInModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CartTradeInModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CartTradeInModel&&(identical(other.discountAmount, discountAmount) || other.discountAmount == discountAmount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,discountAmount);

@override
String toString() {
  return 'CartTradeInModel(discountAmount: $discountAmount)';
}


}

/// @nodoc
abstract mixin class _$CartTradeInModelCopyWith<$Res> implements $CartTradeInModelCopyWith<$Res> {
  factory _$CartTradeInModelCopyWith(_CartTradeInModel value, $Res Function(_CartTradeInModel) _then) = __$CartTradeInModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'discount_amount') int? discountAmount
});




}
/// @nodoc
class __$CartTradeInModelCopyWithImpl<$Res>
    implements _$CartTradeInModelCopyWith<$Res> {
  __$CartTradeInModelCopyWithImpl(this._self, this._then);

  final _CartTradeInModel _self;
  final $Res Function(_CartTradeInModel) _then;

/// Create a copy of CartTradeInModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? discountAmount = freezed,}) {
  return _then(_CartTradeInModel(
discountAmount: freezed == discountAmount ? _self.discountAmount : discountAmount // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}


/// @nodoc
mixin _$CartActionChoiceModel {

 String? get code; String? get name; String? get description;
/// Create a copy of CartActionChoiceModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CartActionChoiceModelCopyWith<CartActionChoiceModel> get copyWith => _$CartActionChoiceModelCopyWithImpl<CartActionChoiceModel>(this as CartActionChoiceModel, _$identity);

  /// Serializes this CartActionChoiceModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CartActionChoiceModel&&(identical(other.code, code) || other.code == code)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,code,name,description);

@override
String toString() {
  return 'CartActionChoiceModel(code: $code, name: $name, description: $description)';
}


}

/// @nodoc
abstract mixin class $CartActionChoiceModelCopyWith<$Res>  {
  factory $CartActionChoiceModelCopyWith(CartActionChoiceModel value, $Res Function(CartActionChoiceModel) _then) = _$CartActionChoiceModelCopyWithImpl;
@useResult
$Res call({
 String? code, String? name, String? description
});




}
/// @nodoc
class _$CartActionChoiceModelCopyWithImpl<$Res>
    implements $CartActionChoiceModelCopyWith<$Res> {
  _$CartActionChoiceModelCopyWithImpl(this._self, this._then);

  final CartActionChoiceModel _self;
  final $Res Function(CartActionChoiceModel) _then;

/// Create a copy of CartActionChoiceModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? code = freezed,Object? name = freezed,Object? description = freezed,}) {
  return _then(_self.copyWith(
code: freezed == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [CartActionChoiceModel].
extension CartActionChoiceModelPatterns on CartActionChoiceModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CartActionChoiceModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CartActionChoiceModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CartActionChoiceModel value)  $default,){
final _that = this;
switch (_that) {
case _CartActionChoiceModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CartActionChoiceModel value)?  $default,){
final _that = this;
switch (_that) {
case _CartActionChoiceModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? code,  String? name,  String? description)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CartActionChoiceModel() when $default != null:
return $default(_that.code,_that.name,_that.description);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? code,  String? name,  String? description)  $default,) {final _that = this;
switch (_that) {
case _CartActionChoiceModel():
return $default(_that.code,_that.name,_that.description);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? code,  String? name,  String? description)?  $default,) {final _that = this;
switch (_that) {
case _CartActionChoiceModel() when $default != null:
return $default(_that.code,_that.name,_that.description);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CartActionChoiceModel extends CartActionChoiceModel {
  const _CartActionChoiceModel({this.code, this.name, this.description}): super._();
  factory _CartActionChoiceModel.fromJson(Map<String, dynamic> json) => _$CartActionChoiceModelFromJson(json);

@override final  String? code;
@override final  String? name;
@override final  String? description;

/// Create a copy of CartActionChoiceModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CartActionChoiceModelCopyWith<_CartActionChoiceModel> get copyWith => __$CartActionChoiceModelCopyWithImpl<_CartActionChoiceModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CartActionChoiceModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CartActionChoiceModel&&(identical(other.code, code) || other.code == code)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,code,name,description);

@override
String toString() {
  return 'CartActionChoiceModel(code: $code, name: $name, description: $description)';
}


}

/// @nodoc
abstract mixin class _$CartActionChoiceModelCopyWith<$Res> implements $CartActionChoiceModelCopyWith<$Res> {
  factory _$CartActionChoiceModelCopyWith(_CartActionChoiceModel value, $Res Function(_CartActionChoiceModel) _then) = __$CartActionChoiceModelCopyWithImpl;
@override @useResult
$Res call({
 String? code, String? name, String? description
});




}
/// @nodoc
class __$CartActionChoiceModelCopyWithImpl<$Res>
    implements _$CartActionChoiceModelCopyWith<$Res> {
  __$CartActionChoiceModelCopyWithImpl(this._self, this._then);

  final _CartActionChoiceModel _self;
  final $Res Function(_CartActionChoiceModel) _then;

/// Create a copy of CartActionChoiceModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? code = freezed,Object? name = freezed,Object? description = freezed,}) {
  return _then(_CartActionChoiceModel(
code: freezed == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$CartCouponModel {

 String get code; bool get applied; String? get name; int? get discount;@JsonKey(name: 'available_to') String? get availableDate; String? get message;
/// Create a copy of CartCouponModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CartCouponModelCopyWith<CartCouponModel> get copyWith => _$CartCouponModelCopyWithImpl<CartCouponModel>(this as CartCouponModel, _$identity);

  /// Serializes this CartCouponModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CartCouponModel&&(identical(other.code, code) || other.code == code)&&(identical(other.applied, applied) || other.applied == applied)&&(identical(other.name, name) || other.name == name)&&(identical(other.discount, discount) || other.discount == discount)&&(identical(other.availableDate, availableDate) || other.availableDate == availableDate)&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,code,applied,name,discount,availableDate,message);

@override
String toString() {
  return 'CartCouponModel(code: $code, applied: $applied, name: $name, discount: $discount, availableDate: $availableDate, message: $message)';
}


}

/// @nodoc
abstract mixin class $CartCouponModelCopyWith<$Res>  {
  factory $CartCouponModelCopyWith(CartCouponModel value, $Res Function(CartCouponModel) _then) = _$CartCouponModelCopyWithImpl;
@useResult
$Res call({
 String code, bool applied, String? name, int? discount,@JsonKey(name: 'available_to') String? availableDate, String? message
});




}
/// @nodoc
class _$CartCouponModelCopyWithImpl<$Res>
    implements $CartCouponModelCopyWith<$Res> {
  _$CartCouponModelCopyWithImpl(this._self, this._then);

  final CartCouponModel _self;
  final $Res Function(CartCouponModel) _then;

/// Create a copy of CartCouponModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? code = null,Object? applied = null,Object? name = freezed,Object? discount = freezed,Object? availableDate = freezed,Object? message = freezed,}) {
  return _then(_self.copyWith(
code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,applied: null == applied ? _self.applied : applied // ignore: cast_nullable_to_non_nullable
as bool,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,discount: freezed == discount ? _self.discount : discount // ignore: cast_nullable_to_non_nullable
as int?,availableDate: freezed == availableDate ? _self.availableDate : availableDate // ignore: cast_nullable_to_non_nullable
as String?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [CartCouponModel].
extension CartCouponModelPatterns on CartCouponModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CartCouponModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CartCouponModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CartCouponModel value)  $default,){
final _that = this;
switch (_that) {
case _CartCouponModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CartCouponModel value)?  $default,){
final _that = this;
switch (_that) {
case _CartCouponModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String code,  bool applied,  String? name,  int? discount, @JsonKey(name: 'available_to')  String? availableDate,  String? message)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CartCouponModel() when $default != null:
return $default(_that.code,_that.applied,_that.name,_that.discount,_that.availableDate,_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String code,  bool applied,  String? name,  int? discount, @JsonKey(name: 'available_to')  String? availableDate,  String? message)  $default,) {final _that = this;
switch (_that) {
case _CartCouponModel():
return $default(_that.code,_that.applied,_that.name,_that.discount,_that.availableDate,_that.message);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String code,  bool applied,  String? name,  int? discount, @JsonKey(name: 'available_to')  String? availableDate,  String? message)?  $default,) {final _that = this;
switch (_that) {
case _CartCouponModel() when $default != null:
return $default(_that.code,_that.applied,_that.name,_that.discount,_that.availableDate,_that.message);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CartCouponModel extends CartCouponModel {
  const _CartCouponModel({this.code = '', this.applied = false, this.name, this.discount, @JsonKey(name: 'available_to') this.availableDate, this.message}): super._();
  factory _CartCouponModel.fromJson(Map<String, dynamic> json) => _$CartCouponModelFromJson(json);

@override@JsonKey() final  String code;
@override@JsonKey() final  bool applied;
@override final  String? name;
@override final  int? discount;
@override@JsonKey(name: 'available_to') final  String? availableDate;
@override final  String? message;

/// Create a copy of CartCouponModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CartCouponModelCopyWith<_CartCouponModel> get copyWith => __$CartCouponModelCopyWithImpl<_CartCouponModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CartCouponModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CartCouponModel&&(identical(other.code, code) || other.code == code)&&(identical(other.applied, applied) || other.applied == applied)&&(identical(other.name, name) || other.name == name)&&(identical(other.discount, discount) || other.discount == discount)&&(identical(other.availableDate, availableDate) || other.availableDate == availableDate)&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,code,applied,name,discount,availableDate,message);

@override
String toString() {
  return 'CartCouponModel(code: $code, applied: $applied, name: $name, discount: $discount, availableDate: $availableDate, message: $message)';
}


}

/// @nodoc
abstract mixin class _$CartCouponModelCopyWith<$Res> implements $CartCouponModelCopyWith<$Res> {
  factory _$CartCouponModelCopyWith(_CartCouponModel value, $Res Function(_CartCouponModel) _then) = __$CartCouponModelCopyWithImpl;
@override @useResult
$Res call({
 String code, bool applied, String? name, int? discount,@JsonKey(name: 'available_to') String? availableDate, String? message
});




}
/// @nodoc
class __$CartCouponModelCopyWithImpl<$Res>
    implements _$CartCouponModelCopyWith<$Res> {
  __$CartCouponModelCopyWithImpl(this._self, this._then);

  final _CartCouponModel _self;
  final $Res Function(_CartCouponModel) _then;

/// Create a copy of CartCouponModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? code = null,Object? applied = null,Object? name = freezed,Object? discount = freezed,Object? availableDate = freezed,Object? message = freezed,}) {
  return _then(_CartCouponModel(
code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,applied: null == applied ? _self.applied : applied // ignore: cast_nullable_to_non_nullable
as bool,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,discount: freezed == discount ? _self.discount : discount // ignore: cast_nullable_to_non_nullable
as int?,availableDate: freezed == availableDate ? _self.availableDate : availableDate // ignore: cast_nullable_to_non_nullable
as String?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
