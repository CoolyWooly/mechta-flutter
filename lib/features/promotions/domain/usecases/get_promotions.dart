import 'package:equatable/equatable.dart';
import 'package:mechta_flutter/core/usecase/usecase.dart';
import 'package:mechta_flutter/features/promotions/domain/entities/promotions_result_entity.dart';
import 'package:mechta_flutter/features/promotions/domain/repositories/promotions_repository.dart';

class GetPromotionsUseCase
    extends UseCase<PromotionsResultEntity, PromotionsParams> {
  final PromotionsRepository repository;

  GetPromotionsUseCase(this.repository);

  @override
  Future<PromotionsResultEntity> call(PromotionsParams params) {
    return repository.getPromotions(params);
  }
}

class PromotionsParams extends Equatable {
  final int page;
  final int pageLimit;
  final String? typeCode;
  final String? order;

  const PromotionsParams({
    this.page = 1,
    this.pageLimit = 20,
    this.typeCode,
    this.order,
  });

  @override
  List<Object?> get props => [page, pageLimit, typeCode, order];
}
