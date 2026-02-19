import 'package:equatable/equatable.dart';

class BonusesHistoryEntity extends Equatable {
  final BonusesSummaryEntity? summary;
  final ChipsSummaryEntity? chips;
  final List<OrderItemEntity> items;
  final int? allItemsCount;
  final int? allPages;
  final int? pageNumber;

  const BonusesHistoryEntity({
    this.summary,
    this.chips,
    this.items = const [],
    this.allItemsCount,
    this.allPages,
    this.pageNumber,
  });

  @override
  List<Object?> get props =>
      [summary, chips, items, allItemsCount, allPages, pageNumber];
}

class BonusesSummaryEntity extends Equatable {
  final int? activeBonuses;
  final int? blockedBonuses;
  final String? nearestExpirationDate;
  final int? totalExpiringBonuses;

  const BonusesSummaryEntity({
    this.activeBonuses,
    this.blockedBonuses,
    this.nearestExpirationDate,
    this.totalExpiringBonuses,
  });

  @override
  List<Object?> get props =>
      [activeBonuses, blockedBonuses, nearestExpirationDate, totalExpiringBonuses];
}

class ChipsSummaryEntity extends Equatable {
  final int? activeChips;
  final int? blockedChips;
  final String? nearestExpirationDate;
  final int? totalExpiringChips;

  const ChipsSummaryEntity({
    this.activeChips,
    this.blockedChips,
    this.nearestExpirationDate,
    this.totalExpiringChips,
  });

  @override
  List<Object?> get props =>
      [activeChips, blockedChips, nearestExpirationDate, totalExpiringChips];
}

class OrderItemEntity extends Equatable {
  final String? orderId;
  final bool? isOfflineOrder;
  final String? orderStatus;
  final String? orderStatusName;
  final String? actionDate;
  final String? activationDate;
  final String? expirationDate;
  final int? totalBonuses;
  final int? totalChips;
  final List<BonusProductEntity> products;

  const OrderItemEntity({
    this.orderId,
    this.isOfflineOrder,
    this.orderStatus,
    this.orderStatusName,
    this.actionDate,
    this.activationDate,
    this.expirationDate,
    this.totalBonuses,
    this.totalChips,
    this.products = const [],
  });

  @override
  List<Object?> get props => [
        orderId,
        isOfflineOrder,
        orderStatus,
        orderStatusName,
        actionDate,
        activationDate,
        expirationDate,
        totalBonuses,
        totalChips,
        products,
      ];
}

class BonusProductEntity extends Equatable {
  final String? productName;
  final String? productCode;
  final String? productImageUrl;
  final int? quantity;
  final int? earnedBonuses;
  final int? spentBonuses;
  final int? earnedChips;

  const BonusProductEntity({
    this.productName,
    this.productCode,
    this.productImageUrl,
    this.quantity,
    this.earnedBonuses,
    this.spentBonuses,
    this.earnedChips,
  });

  @override
  List<Object?> get props => [
        productName,
        productCode,
        productImageUrl,
        quantity,
        earnedBonuses,
        spentBonuses,
        earnedChips,
      ];
}
