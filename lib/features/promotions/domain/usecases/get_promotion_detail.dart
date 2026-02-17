import 'package:mechta_flutter/core/usecase/usecase.dart';
import 'package:mechta_flutter/features/promotions/domain/entities/promotion_detail_entity.dart';
import 'package:mechta_flutter/features/promotions/domain/repositories/promotions_repository.dart';

class GetPromotionDetailUseCase
    extends UseCase<PromotionDetailEntity, String> {
  final PromotionsRepository repository;

  GetPromotionDetailUseCase(this.repository);

  @override
  Future<PromotionDetailEntity> call(String code) {
    return repository.getPromotionDetail(code);
  }
}
