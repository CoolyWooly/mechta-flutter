import 'package:dio/dio.dart';
import 'package:mechta_flutter/core/error/exceptions.dart';
import 'package:mechta_flutter/features/bonuses/data/models/bonuses_history_model.dart';

abstract class BonusesRemoteDataSource {
  Future<BonusesHistoryModel> getBonusesHistory({
    required int page,
    required int limit,
  });
}

class BonusesRemoteDataSourceImpl implements BonusesRemoteDataSource {
  final Dio dio;

  BonusesRemoteDataSourceImpl({required this.dio});

  @override
  Future<BonusesHistoryModel> getBonusesHistory({
    required int page,
    required int limit,
  }) async {
    try {
      final response = await dio.get(
        'api/v2/personal/bonuses-history',
        queryParameters: {'page': page, 'limit': limit},
      );
      final data = response.data['data'] as Map<String, dynamic>;
      return BonusesHistoryModel.fromJson(data);
    } on DioException catch (e) {
      throw ServerException(
        message: e.message ?? 'Unknown error',
        statusCode: e.response?.statusCode,
      );
    }
  }
}
