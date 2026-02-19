import 'package:dio/dio.dart';
import 'package:mechta_flutter/core/error/exceptions.dart';
import 'package:mechta_flutter/features/brand/data/models/brand_response_model.dart';

abstract class BrandRemoteDataSource {
  Future<BrandResponseModel> getBrand(String brand);
}

class BrandRemoteDataSourceImpl implements BrandRemoteDataSource {
  final Dio dio;

  BrandRemoteDataSourceImpl({required this.dio});

  @override
  Future<BrandResponseModel> getBrand(String brand) async {
    try {
      final response = await dio.get('api/v2/brand-zone/$brand');

      final data = response.data['data'] as Map<String, dynamic>;
      return BrandResponseModel.fromJson(data);
    } on DioException catch (e) {
      throw ServerException(
        message: e.message ?? 'Unknown error',
        statusCode: e.response?.statusCode,
      );
    }
  }
}
