import 'package:equatable/equatable.dart';
import 'package:mechta_flutter/features/promotions/domain/entities/promotion_entity.dart';

class PromotionsResultEntity extends Equatable {
  final List<PromotionEntity> promotions;
  final int totalCount;

  const PromotionsResultEntity({
    required this.promotions,
    required this.totalCount,
  });

  @override
  List<Object?> get props => [promotions, totalCount];
}
