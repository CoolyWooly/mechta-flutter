import 'package:dio/dio.dart';
import 'package:mechta_flutter/core/data/models/product_model.dart';
import 'package:mechta_flutter/core/error/exceptions.dart';

abstract class ProductRemoteDataSource {
  Future<ProductModel> getProduct(int id);
}

class ProductRemoteDataSourceImpl implements ProductRemoteDataSource {
  final Dio dio;

  ProductRemoteDataSourceImpl({required this.dio});

  @override
  Future<ProductModel> getProduct(int id) async {
    try {
      final response = await dio.get('/products/$id');
      return ProductModel.fromJson(
        response.data['data'] as Map<String, dynamic>,
      );
    } on DioException catch (e) {
      throw ServerException(
        message: e.message ?? 'Unknown error',
        statusCode: e.response?.statusCode,
      );
    }
  }
}
