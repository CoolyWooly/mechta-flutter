// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_item_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CartResponseModel _$CartResponseModelFromJson(
  Map<String, dynamic> json,
) => _CartResponseModel(
  items: (json['items'] as List<dynamic>?)
      ?.map((e) => CartItemModel.fromJson(e as Map<String, dynamic>))
      .toList(),
  priceDetails: json['total_prices'] == null
      ? null
      : CartPricesModel.fromJson(json['total_prices'] as Map<String, dynamic>),
  actionChoice: json['action_choice'] as String?,
  actionChoiceName: json['action_choice_name'] as String?,
  actionChoiceList: (json['action_choice_list'] as List<dynamic>?)
      ?.map((e) => CartActionChoiceModel.fromJson(e as Map<String, dynamic>))
      .toList(),
  actionChoiceCoupon: json['action_choice_coupon'] as String?,
  couponList: (json['coupon_list'] as List<dynamic>?)
      ?.map((e) => CartCouponModel.fromJson(e as Map<String, dynamic>))
      .toList(),
  discountByCoupons: (json['discount_by_coupons'] as num?)?.toInt(),
  tradeInDiscountAmount: (json['trade_in_discount_amount'] as num?)?.toInt(),
  tradeInAdditionalDiscount: (json['trade_in_additional_discount'] as num?)
      ?.toInt(),
);

Map<String, dynamic> _$CartResponseModelToJson(_CartResponseModel instance) =>
    <String, dynamic>{
      'items': instance.items,
      'total_prices': instance.priceDetails,
      'action_choice': instance.actionChoice,
      'action_choice_name': instance.actionChoiceName,
      'action_choice_list': instance.actionChoiceList,
      'action_choice_coupon': instance.actionChoiceCoupon,
      'coupon_list': instance.couponList,
      'discount_by_coupons': instance.discountByCoupons,
      'trade_in_discount_amount': instance.tradeInDiscountAmount,
      'trade_in_additional_discount': instance.tradeInAdditionalDiscount,
    };

_CartItemModel _$CartItemModelFromJson(Map<String, dynamic> json) =>
    _CartItemModel(
      id: (json['id'] as num?)?.toInt(),
      productId: (json['product_id'] as num?)?.toInt(),
      name: json['name'] as String?,
      code: json['code'] as String?,
      xmlId: json['xml_id'] as String?,
      code1c: json['code_1c'] as String?,
      preview: json['preview'] as String?,
      quantity: (json['quantity'] as num?)?.toInt(),
      bonus: (json['earned_bonus'] as num?)?.toInt(),
      spentBonus: (json['spent_bonus'] as num?)?.toInt(),
      earnedChips: (json['earned_chips'] as num?)?.toInt(),
      prices: json['prices_per_item'] == null
          ? null
          : CartPricesModel.fromJson(
              json['prices_per_item'] as Map<String, dynamic>,
            ),
      priceSums: json['prices_sums'] == null
          ? null
          : CartPricesModel.fromJson(
              json['prices_sums'] as Map<String, dynamic>,
            ),
      isIntercity: json['is_intercity'] as bool?,
      isGift: json['is_gift'] as bool?,
      catalogQuantity: (json['catalog_quantity'] as num?)?.toInt(),
      canBuy: json['can_buy'] as bool?,
      inBasket: json['in_basket'] as bool?,
      gifts: (json['gifts'] as List<dynamic>?)
          ?.map(
            (e) => (e as List<dynamic>)
                .map((e) => CartItemModel.fromJson(e as Map<String, dynamic>))
                .toList(),
          )
          .toList(),
      metrics: json['metrics'] == null
          ? null
          : CartBrandModel.fromJson(json['metrics'] as Map<String, dynamic>),
      actionXmlId: json['action_xml_id'] as String?,
      tradein: json['tradein'] == null
          ? null
          : CartTradeInModel.fromJson(json['tradein'] as Map<String, dynamic>),
      isShowcase: json['only_vit'] as bool?,
      reviewCount: (json['reviews_count'] as num?)?.toInt(),
      rating: (json['rating'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$CartItemModelToJson(_CartItemModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'product_id': instance.productId,
      'name': instance.name,
      'code': instance.code,
      'xml_id': instance.xmlId,
      'code_1c': instance.code1c,
      'preview': instance.preview,
      'quantity': instance.quantity,
      'earned_bonus': instance.bonus,
      'spent_bonus': instance.spentBonus,
      'earned_chips': instance.earnedChips,
      'prices_per_item': instance.prices,
      'prices_sums': instance.priceSums,
      'is_intercity': instance.isIntercity,
      'is_gift': instance.isGift,
      'catalog_quantity': instance.catalogQuantity,
      'can_buy': instance.canBuy,
      'in_basket': instance.inBasket,
      'gifts': instance.gifts,
      'metrics': instance.metrics,
      'action_xml_id': instance.actionXmlId,
      'tradein': instance.tradein,
      'only_vit': instance.isShowcase,
      'reviews_count': instance.reviewCount,
      'rating': instance.rating,
    };

_CartPricesModel _$CartPricesModelFromJson(Map<String, dynamic> json) =>
    _CartPricesModel(
      discountedPrice: (json['discounted_price'] as num?)?.toInt() ?? 0,
      basePrice: (json['base_price'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$CartPricesModelToJson(_CartPricesModel instance) =>
    <String, dynamic>{
      'discounted_price': instance.discountedPrice,
      'base_price': instance.basePrice,
    };

_CartBrandModel _$CartBrandModelFromJson(Map<String, dynamic> json) =>
    _CartBrandModel(
      brand: json['brand'] as String?,
      category: json['category'] as String?,
    );

Map<String, dynamic> _$CartBrandModelToJson(_CartBrandModel instance) =>
    <String, dynamic>{'brand': instance.brand, 'category': instance.category};

_CartTradeInModel _$CartTradeInModelFromJson(Map<String, dynamic> json) =>
    _CartTradeInModel(
      discountAmount: (json['discount_amount'] as num?)?.toInt(),
    );

Map<String, dynamic> _$CartTradeInModelToJson(_CartTradeInModel instance) =>
    <String, dynamic>{'discount_amount': instance.discountAmount};

_CartActionChoiceModel _$CartActionChoiceModelFromJson(
  Map<String, dynamic> json,
) => _CartActionChoiceModel(
  code: json['code'] as String?,
  name: json['name'] as String?,
  description: json['description'] as String?,
);

Map<String, dynamic> _$CartActionChoiceModelToJson(
  _CartActionChoiceModel instance,
) => <String, dynamic>{
  'code': instance.code,
  'name': instance.name,
  'description': instance.description,
};

_CartCouponModel _$CartCouponModelFromJson(Map<String, dynamic> json) =>
    _CartCouponModel(
      code: json['code'] as String? ?? '',
      applied: json['applied'] as bool? ?? false,
      name: json['name'] as String?,
      discount: (json['discount'] as num?)?.toInt(),
      availableDate: json['available_to'] as String?,
      message: json['message'] as String?,
    );

Map<String, dynamic> _$CartCouponModelToJson(_CartCouponModel instance) =>
    <String, dynamic>{
      'code': instance.code,
      'applied': instance.applied,
      'name': instance.name,
      'discount': instance.discount,
      'available_to': instance.availableDate,
      'message': instance.message,
    };
