import 'package:mechta_flutter/features/bonuses/domain/entities/bonuses_entity.dart';

class BonusesHistoryModel {
  final BonusesSummaryModel? allData;
  final int? allItemsCount;
  final int? allPages;
  final ChipsSummaryModel? chips;
  final List<OrderItemModel>? items;
  final int? pageNumber;

  const BonusesHistoryModel({
    this.allData,
    this.allItemsCount,
    this.allPages,
    this.chips,
    this.items,
    this.pageNumber,
  });

  factory BonusesHistoryModel.fromJson(Map<String, dynamic> json) =>
      BonusesHistoryModel(
        allData: json['all_data'] != null
            ? BonusesSummaryModel.fromJson(
                json['all_data'] as Map<String, dynamic>)
            : null,
        allItemsCount: json['all_items_count'] as int?,
        allPages: json['all_pages'] as int?,
        chips: json['chips'] != null
            ? ChipsSummaryModel.fromJson(json['chips'] as Map<String, dynamic>)
            : null,
        items: (json['items'] as List<dynamic>?)
            ?.whereType<Map<String, dynamic>>()
            .map(OrderItemModel.fromJson)
            .toList(),
        pageNumber: json['page_number'] as int?,
      );

  BonusesHistoryEntity toEntity() => BonusesHistoryEntity(
        summary: allData?.toEntity(),
        chips: chips?.toEntity(),
        items: items?.map((i) => i.toEntity()).toList() ?? const [],
        allItemsCount: allItemsCount,
        allPages: allPages,
        pageNumber: pageNumber,
      );
}

class BonusesSummaryModel {
  final int? activeBonuses;
  final int? blockedBonuses;
  final String? nearestExpirationDate;
  final int? totalExpiringBonuses;

  const BonusesSummaryModel({
    this.activeBonuses,
    this.blockedBonuses,
    this.nearestExpirationDate,
    this.totalExpiringBonuses,
  });

  factory BonusesSummaryModel.fromJson(Map<String, dynamic> json) =>
      BonusesSummaryModel(
        activeBonuses: json['active'] as int?,
        blockedBonuses: json['blocked'] as int?,
        nearestExpirationDate: json['nearest_expiration_date'] as String?,
        totalExpiringBonuses: json['expiration_total'] as int?,
      );

  BonusesSummaryEntity toEntity() => BonusesSummaryEntity(
        activeBonuses: activeBonuses,
        blockedBonuses: blockedBonuses,
        nearestExpirationDate: nearestExpirationDate,
        totalExpiringBonuses: totalExpiringBonuses,
      );
}

class ChipsSummaryModel {
  final int? activeChips;
  final int? blockedChips;
  final String? nearestExpirationDate;
  final int? totalExpiringChips;

  const ChipsSummaryModel({
    this.activeChips,
    this.blockedChips,
    this.nearestExpirationDate,
    this.totalExpiringChips,
  });

  factory ChipsSummaryModel.fromJson(Map<String, dynamic> json) =>
      ChipsSummaryModel(
        activeChips: json['active'] as int?,
        blockedChips: json['blocked'] as int?,
        nearestExpirationDate: json['nearest_expiration_date'] as String?,
        totalExpiringChips: json['expiration_total'] as int?,
      );

  ChipsSummaryEntity toEntity() => ChipsSummaryEntity(
        activeChips: activeChips,
        blockedChips: blockedChips,
        nearestExpirationDate: nearestExpirationDate,
        totalExpiringChips: totalExpiringChips,
      );
}

class OrderItemModel {
  final String? orderId;
  final bool? isOfflineOrder;
  final String? orderStatus;
  final String? orderStatusName;
  final String? actionDate;
  final String? activationDate;
  final String? expirationDate;
  final int? totalBonuses;
  final int? totalChips;
  final List<BonusProductModel>? products;

  const OrderItemModel({
    this.orderId,
    this.isOfflineOrder,
    this.orderStatus,
    this.orderStatusName,
    this.actionDate,
    this.activationDate,
    this.expirationDate,
    this.totalBonuses,
    this.totalChips,
    this.products,
  });

  factory OrderItemModel.fromJson(Map<String, dynamic> json) => OrderItemModel(
        orderId: json['order_id'] as String?,
        isOfflineOrder: json['is_offline'] as bool?,
        orderStatus: json['order_status'] as String?,
        orderStatusName: json['order_status_name'] as String?,
        actionDate: json['action_date'] as String?,
        activationDate: json['activation_date'] as String?,
        expirationDate: json['expiration_date'] as String?,
        totalBonuses: json['all_bonuses'] as int?,
        totalChips: json['all_chips'] as int?,
        products: (json['products'] as List<dynamic>?)
            ?.whereType<Map<String, dynamic>>()
            .map(BonusProductModel.fromJson)
            .toList(),
      );

  OrderItemEntity toEntity() => OrderItemEntity(
        orderId: orderId,
        isOfflineOrder: isOfflineOrder,
        orderStatus: orderStatus,
        orderStatusName: orderStatusName,
        actionDate: actionDate,
        activationDate: activationDate,
        expirationDate: expirationDate,
        totalBonuses: totalBonuses,
        totalChips: totalChips,
        products: products?.map((p) => p.toEntity()).toList() ?? const [],
      );
}

class BonusProductModel {
  final String? productName;
  final String? productCode;
  final String? productImageUrl;
  final int? quantity;
  final int? earnedBonuses;
  final int? spentBonuses;
  final int? earnedChips;

  const BonusProductModel({
    this.productName,
    this.productCode,
    this.productImageUrl,
    this.quantity,
    this.earnedBonuses,
    this.spentBonuses,
    this.earnedChips,
  });

  factory BonusProductModel.fromJson(Map<String, dynamic> json) =>
      BonusProductModel(
        productName: json['name'] as String?,
        productCode: json['code'] as String?,
        productImageUrl: json['image'] as String?,
        quantity: json['quantity'] as int?,
        earnedBonuses: json['earned_bonuses'] as int?,
        spentBonuses: json['spent_bonuses'] as int?,
        earnedChips: json['earned_chips'] as int?,
      );

  BonusProductEntity toEntity() => BonusProductEntity(
        productName: productName,
        productCode: productCode,
        productImageUrl: productImageUrl,
        quantity: quantity,
        earnedBonuses: earnedBonuses,
        spentBonuses: spentBonuses,
        earnedChips: earnedChips,
      );
}
