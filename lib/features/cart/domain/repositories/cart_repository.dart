import 'package:mechta_flutter/features/cart/domain/entities/cart_item_entity.dart';

abstract class CartRepository {
  Future<CartEntity> getCart();
  Future<bool> isAuthenticated();
}
