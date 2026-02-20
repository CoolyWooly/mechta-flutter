import 'package:dio/dio.dart';
import 'package:mechta_flutter/core/error/exceptions.dart';
import 'package:mechta_flutter/features/cart/data/models/cart_item_model.dart';

abstract class CartRemoteDataSource {
  Future<CartResponseModel> getCart();
  Future<CartResponseModel> getCartForUnauthenticated(List<Map<String, dynamic>> products);
  Future<void> addToCart(int productId);
  Future<void> changeQuantity(int productId, int quantity);
  Future<void> deleteFromCart(int productId);
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
      throw ServerException.fromDioException(e);
    }
  }

  @override
  Future<CartResponseModel> getCartForUnauthenticated(List<Map<String, dynamic>> products) async {
    try {
      final response = await dio.post(
        'api/v2/basket',
        data: {
          'basket': {
            'products': products
          }
        },
      );
      if (response.statusCode == 204 || response.data == null) {
        return const CartResponseModel();
      }
      final data = response.data;
      if (data is Map<String, dynamic>) {
        final payload = data.containsKey('data') && data['data'] is Map<String, dynamic>
            ? data['data'] as Map<String, dynamic>
            : data;
        return CartResponseModel.fromJson(payload);
      }
      return const CartResponseModel();
    } on DioException catch (e) {
      throw ServerException.fromDioException(e);
    }
  }

  @override
  Future<void> addToCart(int productId) async {
    try {
      await dio.post(
        'api/v2/basket/add',
        data: {
          'product_id': productId,
          'tradein': null,
          'gifts': null,
        },
      );
    } on DioException catch (e) {
      throw ServerException.fromDioException(e);
    }
  }
  @override
  Future<void> changeQuantity(int productId, int quantity) async {
    try {
      await dio.post(
        'api/v2/basket/change_quantity',
        data: {
          'product_id': productId,
          'quantity': quantity,
        },
      );
    } on DioException catch (e) {
      throw ServerException.fromDioException(e);
    }
  }

  @override
  Future<void> deleteFromCart(int productId) async {
    try {
      await dio.post(
        'api/v2/basket/delete',
        data: {
          'product_id': productId,
        },
      );
    } on DioException catch (e) {
      throw ServerException.fromDioException(e);
    }
  }
}
