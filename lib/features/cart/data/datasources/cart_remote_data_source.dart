import 'package:dio/dio.dart';
import 'package:mechta_flutter/core/error/exceptions.dart';
import 'package:mechta_flutter/features/cart/data/models/cart_item_model.dart';

abstract class CartRemoteDataSource {
  Future<CartResponseModel> getCart();
}

class CartRemoteDataSourceImpl implements CartRemoteDataSource {
  final Dio dio;

  CartRemoteDataSourceImpl({required this.dio});

  @override
  Future<CartResponseModel> getCart() async {
    try {
      final response = await dio.get('api/v2/basket');
      if (response.statusCode == 204 || response.data == null) {
        return const CartResponseModel();
      }
      final data = response.data;
      if (data is Map<String, dynamic>) {
        // Handle BaseResponse wrapper: data might be in 'data' key
        final payload = data.containsKey('data') && data['data'] is Map<String, dynamic>
            ? data['data'] as Map<String, dynamic>
            : data;
        return CartResponseModel.fromJson(payload);
      }
      return const CartResponseModel();
    } on DioException catch (e) {
      throw ServerException(
        message: e.message ?? 'Unknown error',
        statusCode: e.response?.statusCode,
      );
    }
  }
}
