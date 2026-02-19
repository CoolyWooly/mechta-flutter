import 'package:dio/dio.dart';
import 'package:mechta_flutter/core/error/exceptions.dart';
import 'package:mechta_flutter/features/shops/data/models/shops_model.dart';

abstract class ShopsRemoteDataSource {
  Future<ShopsResponseModel> getShops();
}

class ShopsRemoteDataSourceImpl implements ShopsRemoteDataSource {
  final Dio dio;

  ShopsRemoteDataSourceImpl({required this.dio});

  @override
  Future<ShopsResponseModel> getShops() async {
    try {
      final response = await dio.get('api/v2/shops');
      final data = response.data['data'] as Map<String, dynamic>;
      return ShopsResponseModel.fromJson(data);
    } on DioException catch (e) {
      throw ServerException(
        message: e.message ?? 'Unknown error',
        statusCode: e.response?.statusCode,
      );
    }
  }
}
