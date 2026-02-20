import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mechta_flutter/features/cart/domain/entities/cart_item_entity.dart';

part 'cart_item_model.freezed.dart';
part 'cart_item_model.g.dart';

@freezed
abstract class CartResponseModel with _$CartResponseModel {
  const CartResponseModel._();

  const factory CartResponseModel({
    List<CartItemModel>? items,
    @JsonKey(name: 'total_prices') CartPricesModel? priceDetails,
    @JsonKey(name: 'action_choice') String? actionChoice,
    @JsonKey(name: 'action_choice_name') String? actionChoiceName,
    @JsonKey(name: 'action_choice_list') List<CartActionChoiceModel>? actionChoiceList,
    @JsonKey(name: 'action_choice_coupon') String? actionChoiceCoupon,
    @JsonKey(name: 'coupon_list') List<CartCouponModel>? couponList,
    @JsonKey(name: 'discount_by_coupons') int? discountByCoupons,
    @JsonKey(name: 'trade_in_discount_amount') int? tradeInDiscountAmount,
    @JsonKey(name: 'trade_in_additional_discount') int? tradeInAdditionalDiscount,
  }) = _CartResponseModel;

  factory CartResponseModel.fromJson(Map<String, dynamic> json) =>
      _$CartResponseModelFromJson(json);

  CartEntity toEntity() => CartEntity(
        items: items?.map((i) => i.toEntity()).toList() ?? [],
        totalPrices: priceDetails?.toEntity(),
        actionChoice: actionChoice,
        actionChoiceName: actionChoiceName,
        actionChoiceList:
            actionChoiceList?.map((a) => a.toEntity()).toList() ?? [],
        actionChoiceCoupon: actionChoiceCoupon,
        couponList: couponList?.map((c) => c.toEntity()).toList() ?? [],
        discountByCoupons: discountByCoupons,
        tradeInDiscountAmount: tradeInDiscountAmount,
        tradeInAdditionalDiscount: tradeInAdditionalDiscount,
      );
}

@freezed
abstract class CartItemModel with _$CartItemModel {
  const CartItemModel._();

  const factory CartItemModel({
    int? id,
    @JsonKey(name: 'product_id') int? productId,
    String? name,
    String? code,
    @JsonKey(name: 'xml_id') String? xmlId,
    @JsonKey(name: 'code_1c') String? code1c,
    String? preview,
    int? quantity,
    @JsonKey(name: 'earned_bonus') int? bonus,
    @JsonKey(name: 'spent_bonus') int? spentBonus,
    @JsonKey(name: 'earned_chips') int? earnedChips,
    @JsonKey(name: 'prices_per_item') CartPricesModel? prices,
    @JsonKey(name: 'prices_sums') CartPricesModel? priceSums,
    @JsonKey(name: 'is_intercity') bool? isIntercity,
    @JsonKey(name: 'is_gift') bool? isGift,
    @JsonKey(name: 'catalog_quantity') int? catalogQuantity,
    @JsonKey(name: 'can_buy') bool? canBuy,
    @JsonKey(name: 'in_basket') bool? inBasket,
    @JsonKey(name: 'gifts') List<List<CartItemModel>>? gifts,
    CartBrandModel? metrics,
    @JsonKey(name: 'action_xml_id') String? actionXmlId,
    CartTradeInModel? tradein,
    @JsonKey(name: 'only_vit') bool? isShowcase,
    @JsonKey(name: 'reviews_count') int? reviewCount,
    double? rating,
  }) = _CartItemModel;

  factory CartItemModel.fromJson(Map<String, dynamic> json) =>
      _$CartItemModelFromJson(json);

  CartItemEntity toEntity() => CartItemEntity(
        id: id,
        productId: productId,
        name: name ?? '',
        code: code,
        preview: preview,
        quantity: quantity ?? 1,
        bonus: bonus,
        spentBonus: spentBonus,
        earnedChips: earnedChips,
        prices: prices?.toEntity(),
        priceSums: priceSums?.toEntity(),
        isGift: isGift ?? false,
        catalogQuantity: catalogQuantity,
        canBuy: canBuy ?? true,
        brand: metrics?.toEntity(),
        tradein: tradein?.toEntity(),
        isShowcase: isShowcase ?? false,
        reviewCount: reviewCount,
        rating: rating,
      );
}

@freezed
abstract class CartPricesModel with _$CartPricesModel {
  const CartPricesModel._();

  const factory CartPricesModel({
    @JsonKey(name: 'discounted_price') @Default(0) int discountedPrice,
    @JsonKey(name: 'base_price') @Default(0) int basePrice,
  }) = _CartPricesModel;

  factory CartPricesModel.fromJson(Map<String, dynamic> json) =>
      _$CartPricesModelFromJson(json);

  CartPricesEntity toEntity() => CartPricesEntity(
        discountedPrice: discountedPrice,
        basePrice: basePrice,
      );
}

@freezed
abstract class CartBrandModel with _$CartBrandModel {
  const CartBrandModel._();

  const factory CartBrandModel({
    String? brand,
    String? category,
  }) = _CartBrandModel;

  factory CartBrandModel.fromJson(Map<String, dynamic> json) =>
      _$CartBrandModelFromJson(json);

  CartBrandEntity toEntity() => CartBrandEntity(
        brand: brand,
        category: category,
      );
}

@freezed
abstract class CartTradeInModel with _$CartTradeInModel {
  const CartTradeInModel._();

  const factory CartTradeInModel({
    @JsonKey(name: 'discount_amount') int? discountAmount,
  }) = _CartTradeInModel;

  factory CartTradeInModel.fromJson(Map<String, dynamic> json) =>
      _$CartTradeInModelFromJson(json);

  CartTradeInEntity toEntity() => CartTradeInEntity(
        discountAmount: discountAmount,
      );
}

@freezed
abstract class CartActionChoiceModel with _$CartActionChoiceModel {
  const CartActionChoiceModel._();

  const factory CartActionChoiceModel({
    String? code,
    String? name,
    String? description,
  }) = _CartActionChoiceModel;

  factory CartActionChoiceModel.fromJson(Map<String, dynamic> json) =>
      _$CartActionChoiceModelFromJson(json);

  CartActionChoiceEntity toEntity() => CartActionChoiceEntity(
        code: code,
        name: name,
        description: description,
      );
}

@freezed
abstract class CartCouponModel with _$CartCouponModel {
  const CartCouponModel._();

  const factory CartCouponModel({
    @Default('') String code,
    @Default(false) bool applied,
    String? name,
    int? discount,
    @JsonKey(name: 'available_to') String? availableDate,
    String? message,
  }) = _CartCouponModel;

  factory CartCouponModel.fromJson(Map<String, dynamic> json) =>
      _$CartCouponModelFromJson(json);

  CartCouponEntity toEntity() => CartCouponEntity(
        code: code,
        applied: applied,
        name: name,
        discount: discount,
        availableDate: availableDate,
        message: message,
      );
}
