import 'package:mechta_flutter/core/error/exceptions.dart';
import 'package:mechta_flutter/core/error/failures.dart';
import 'package:mechta_flutter/features/promotions/data/datasources/promotions_remote_data_source.dart';
import 'package:mechta_flutter/features/promotions/domain/entities/promotion_detail_entity.dart';
import 'package:mechta_flutter/features/promotions/domain/entities/promotions_result_entity.dart';
import 'package:mechta_flutter/features/promotions/domain/repositories/promotions_repository.dart';
import 'package:mechta_flutter/features/promotions/domain/usecases/get_promotions.dart';

class PromotionsRepositoryImpl implements PromotionsRepository {
  final PromotionsRemoteDataSource remoteDataSource;

  PromotionsRepositoryImpl({required this.remoteDataSource});

  @override
  Future<PromotionsResultEntity> getPromotions(PromotionsParams params) async {
    try {
      final result = await remoteDataSource.getPromotions(params);
      return PromotionsResultEntity(
        promotions: result.promotions.map((m) => m.toEntity()).toList(),
        totalCount: result.totalCount,
      );
    } on ServerException catch (e) {
      throw ServerFailure(e.message);
    }
  }

  @override
  Future<PromotionDetailEntity> getPromotionDetail(String code) async {
    try {
      final result = await remoteDataSource.getPromotionDetail(code);
      return result.toEntity();
    } on ServerException catch (e) {
      throw ServerFailure(e.message);
    }
  }
}
