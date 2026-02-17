import 'package:dio/dio.dart';
import 'package:mechta_flutter/core/error/exceptions.dart';
import 'package:mechta_flutter/features/promotions/data/models/promotion_detail_model.dart';
import 'package:mechta_flutter/features/promotions/data/models/promotion_model.dart';
import 'package:mechta_flutter/features/promotions/domain/usecases/get_promotions.dart';

abstract class PromotionsRemoteDataSource {
  Future<({List<PromotionModel> promotions, int totalCount})> getPromotions(
      PromotionsParams params);
  Future<PromotionDetailModel> getPromotionDetail(String code);
}

class PromotionsRemoteDataSourceImpl implements PromotionsRemoteDataSource {
  final Dio dio;

  PromotionsRemoteDataSourceImpl({required this.dio});

  @override
  Future<({List<PromotionModel> promotions, int totalCount})> getPromotions(
      PromotionsParams params) async {
    try {
      final queryParameters = <String, dynamic>{
        'page': params.page,
        'page_limit': params.pageLimit,
      };
      if (params.typeCode != null) {
        queryParameters['type_code'] = params.typeCode;
      }
      if (params.order != null) {
        queryParameters['order'] = params.order;
      }

      final response = await dio.get(
        'api/v2/actions',
        queryParameters: queryParameters,
      );

      final data = response.data['data'] as Map<String, dynamic>;
      final List<dynamic> actions = data['actions'] ?? [];
      final totalCount = data['total_count'] as int? ?? 0;

      final promotions = actions
          .where((json) => json != null)
          .map((json) => PromotionModel.fromJson(json as Map<String, dynamic>))
          .toList();

      return (promotions: promotions, totalCount: totalCount);
    } on DioException catch (e) {
      throw ServerException(
        message: e.message ?? 'Unknown error',
        statusCode: e.response?.statusCode,
      );
    }
  }

  @override
  Future<PromotionDetailModel> getPromotionDetail(String code) async {
    try {
      final response = await dio.get('api/v2/actions/$code');
      final data = response.data['data'] as Map<String, dynamic>;
      return PromotionDetailModel.fromJson(data);
    } on DioException catch (e) {
      throw ServerException(
        message: e.message ?? 'Unknown error',
        statusCode: e.response?.statusCode,
      );
    }
  }
}
