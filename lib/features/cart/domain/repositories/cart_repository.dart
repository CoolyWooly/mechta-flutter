import 'package:mechta_flutter/features/cart/domain/entities/cart_item_entity.dart';

abstract class CartRepository {
  Future<CartEntity> getCart();
  Future<bool> isAuthenticated();
  Future<void> syncCartProducts(Map<String, int> products);
  bool isInCart(String productId);
  int getQuantity(String productId);
  Map<String, int> getCartProductQuantities();
  Future<void> addToCart(int productId);
  Future<void> changeQuantity(int productId, int quantity);
  Future<void> deleteFromCart(int productId);
  Future<void> syncBasketOnLogin();
}
