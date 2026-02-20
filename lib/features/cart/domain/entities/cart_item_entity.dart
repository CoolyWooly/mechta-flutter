import 'package:equatable/equatable.dart';

class CartEntity extends Equatable {
  final List<CartItemEntity> items;
  final CartPricesEntity? totalPrices;
  final String? actionChoice;
  final String? actionChoiceName;
  final List<CartActionChoiceEntity> actionChoiceList;
  final String? actionChoiceCoupon;
  final List<CartCouponEntity> couponList;
  final int? discountByCoupons;
  final int? tradeInDiscountAmount;
  final int? tradeInAdditionalDiscount;

  const CartEntity({
    this.items = const [],
    this.totalPrices,
    this.actionChoice,
    this.actionChoiceName,
    this.actionChoiceList = const [],
    this.actionChoiceCoupon,
    this.couponList = const [],
    this.discountByCoupons,
    this.tradeInDiscountAmount,
    this.tradeInAdditionalDiscount,
  });

  bool get isEmpty => items.isEmpty;

  @override
  List<Object?> get props => [
        items,
        totalPrices,
        actionChoice,
        actionChoiceName,
        actionChoiceList,
        actionChoiceCoupon,
        couponList,
        discountByCoupons,
        tradeInDiscountAmount,
        tradeInAdditionalDiscount,
      ];
}

class CartItemEntity extends Equatable {
  final int? id;
  final int? productId;
  final String name;
  final String? code;
  final String? preview;
  final int quantity;
  final int? bonus;
  final int? spentBonus;
  final int? earnedChips;
  final CartPricesEntity? prices;
  final CartPricesEntity? priceSums;
  final bool isGift;
  final int? catalogQuantity;
  final bool canBuy;
  final CartBrandEntity? brand;
  final CartTradeInEntity? tradein;
  final bool isShowcase;
  final int? reviewCount;
  final double? rating;

  const CartItemEntity({
    this.id,
    this.productId,
    required this.name,
    this.code,
    this.preview,
    this.quantity = 1,
    this.bonus,
    this.spentBonus,
    this.earnedChips,
    this.prices,
    this.priceSums,
    this.isGift = false,
    this.catalogQuantity,
    this.canBuy = true,
    this.brand,
    this.tradein,
    this.isShowcase = false,
    this.reviewCount,
    this.rating,
  });

  @override
  List<Object?> get props => [
        id,
        productId,
        name,
        code,
        preview,
        quantity,
        bonus,
        spentBonus,
        earnedChips,
        prices,
        priceSums,
        isGift,
        catalogQuantity,
        canBuy,
        brand,
        tradein,
        isShowcase,
        reviewCount,
        rating,
      ];
}

class CartPricesEntity extends Equatable {
  final int discountedPrice;
  final int basePrice;

  const CartPricesEntity({
    required this.discountedPrice,
    required this.basePrice,
  });

  bool get hasDiscount => discountedPrice < basePrice;

  @override
  List<Object?> get props => [discountedPrice, basePrice];
}

class CartBrandEntity extends Equatable {
  final String? brand;
  final String? category;

  const CartBrandEntity({this.brand, this.category});

  @override
  List<Object?> get props => [brand, category];
}

class CartTradeInEntity extends Equatable {
  final int? discountAmount;

  const CartTradeInEntity({this.discountAmount});

  @override
  List<Object?> get props => [discountAmount];
}

class CartActionChoiceEntity extends Equatable {
  final String? code;
  final String? name;
  final String? description;

  const CartActionChoiceEntity({this.code, this.name, this.description});

  @override
  List<Object?> get props => [code, name, description];
}

class CartCouponEntity extends Equatable {
  final String code;
  final bool applied;
  final String? name;
  final int? discount;
  final String? availableDate;
  final String? message;

  const CartCouponEntity({
    required this.code,
    required this.applied,
    this.name,
    this.discount,
    this.availableDate,
    this.message,
  });

  @override
  List<Object?> get props => [code, applied, name, discount, availableDate, message];
}
