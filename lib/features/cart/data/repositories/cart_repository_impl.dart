import 'package:mechta_flutter/features/cart/data/datasources/cart_local_data_source.dart';
import 'package:mechta_flutter/features/cart/domain/entities/cart_item_entity.dart';
import 'package:mechta_flutter/features/cart/domain/repositories/cart_repository.dart';

class CartRepositoryImpl implements CartRepository {
  final CartLocalDataSource localDataSource;

  CartRepositoryImpl({required this.localDataSource});

  @override
  Future<List<CartItemEntity>> getCartItems() async {
    final models = await localDataSource.getCartItems();
    return models.map((m) => m.toEntity()).toList();
  }
}
