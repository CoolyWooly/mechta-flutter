import 'package:dio/dio.dart';
import 'package:mechta_flutter/core/data/models/product_model.dart';
import 'package:mechta_flutter/core/error/exceptions.dart';

abstract class FavoritesRemoteDataSource {
  Future<List<ProductModel>> getFavorites();
  Future<void> addFavorite(String productId);
  Future<void> removeFavorite(String productId);
}

class FavoritesRemoteDataSourceImpl implements FavoritesRemoteDataSource {
  final Dio dio;

  FavoritesRemoteDataSourceImpl({required this.dio});

  @override
  Future<List<ProductModel>> getFavorites() async {
    try {
      final response = await dio.get('api/v3/favorites');
      if (response.statusCode == 204 || response.data == null) {
        return [];
      }
      final List<dynamic> data = response.data['products'] ?? [];
      return data
          .map((json) => ProductModel.fromJson(json as Map<String, dynamic>))
          .toList();
    } on DioException catch (e) {
      throw ServerException(
        message: e.message ?? 'Unknown error',
        statusCode: e.response?.statusCode,
      );
    }
  }

  @override
  Future<void> addFavorite(String productId) async {
    try {
      await dio.post('api/v3/favorites/add', data: {'productId': productId});
    } on DioException catch (e) {
      throw ServerException(
        message: e.message ?? 'Unknown error',
        statusCode: e.response?.statusCode,
      );
    }
  }

  @override
  Future<void> removeFavorite(String productId) async {
    try {
      await dio.post('api/v3/favorites/delete', data: {'productId': productId});
    } on DioException catch (e) {
      throw ServerException(
        message: e.message ?? 'Unknown error',
        statusCode: e.response?.statusCode,
      );
    }
  }
}
