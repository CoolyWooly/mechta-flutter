import 'package:dio/dio.dart';
import 'package:mechta_flutter/core/error/exceptions.dart';
import 'package:mechta_flutter/features/brand_detail/data/models/brand_detail_response_model.dart';

abstract class BrandDetailRemoteDataSource {
  Future<BrandDetailResponseModel> getBrandDetail(String brand);
}

class BrandDetailRemoteDataSourceImpl implements BrandDetailRemoteDataSource {
  final Dio dio;

  BrandDetailRemoteDataSourceImpl({required this.dio});

  @override
  Future<BrandDetailResponseModel> getBrandDetail(String brand) async {
    try {
      final response = await dio.get('api/v2/brand-zone/$brand');

      final data = response.data['data'] as Map<String, dynamic>;
      return BrandDetailResponseModel.fromJson(data);
    } on DioException catch (e) {
      throw ServerException(
        message: e.message ?? 'Unknown error',
        statusCode: e.response?.statusCode,
      );
    }
  }
}
