import 'package:mechta_flutter/features/promotions/domain/entities/promotion_detail_entity.dart';
import 'package:mechta_flutter/features/promotions/domain/entities/promotions_result_entity.dart';
import 'package:mechta_flutter/features/promotions/domain/usecases/get_promotions.dart';

abstract class PromotionsRepository {
  Future<PromotionsResultEntity> getPromotions(PromotionsParams params);
  Future<PromotionDetailEntity> getPromotionDetail(String code);
}
