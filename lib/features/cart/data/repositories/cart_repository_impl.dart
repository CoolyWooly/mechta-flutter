import 'package:mechta_flutter/core/error/exceptions.dart';
import 'package:mechta_flutter/core/error/failures.dart';
import 'package:mechta_flutter/features/auth/data/datasources/auth_local_data_source.dart';
import 'package:mechta_flutter/features/cart/data/datasources/cart_remote_data_source.dart';
import 'package:mechta_flutter/features/cart/domain/entities/cart_item_entity.dart';
import 'package:mechta_flutter/features/cart/domain/repositories/cart_repository.dart';

class CartRepositoryImpl implements CartRepository {
  final CartRemoteDataSource remoteDataSource;
  final AuthLocalDataSource authLocalDataSource;

  CartRepositoryImpl({
    required this.remoteDataSource,
    required this.authLocalDataSource,
  });

  @override
  Future<bool> isAuthenticated() async {
    final token = await authLocalDataSource.getToken();
    return token != null && token.isNotEmpty;
  }

  @override
  Future<CartEntity> getCart() async {
    try {
      final model = await remoteDataSource.getCart();
      return model.toEntity();
    } on ServerException catch (e) {
      throw ServerFailure(e.message);
    }
  }
}
