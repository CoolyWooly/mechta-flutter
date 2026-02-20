import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';

abstract class CartLocalDataSource {
  Map<String, int> getCartProductQuantities();
  Future<void> saveCartProductQuantities(Map<String, int> quantities);
  bool isInCart(String productId);
  int getQuantity(String productId);
  Future<void> updateQuantity(String productId, int quantity);
  Future<void> removeProduct(String productId);
  Future<void> clearCart();
}

class CartLocalDataSourceImpl implements CartLocalDataSource {
  static const _key = 'cart_product_quantities';
  final SharedPreferences sharedPreferences;

  CartLocalDataSourceImpl({required this.sharedPreferences});

  @override
  Map<String, int> getCartProductQuantities() {
    final jsonString = sharedPreferences.getString(_key);
    if (jsonString != null && jsonString.isNotEmpty) {
      try {
        final decoded = jsonDecode(jsonString) as Map<String, dynamic>;
        return decoded.map((key, value) => MapEntry(key, value as int));
      } catch (_) {
        return {};
      }
    }
    return {};
  }

  @override
  Future<void> saveCartProductQuantities(Map<String, int> quantities) async {
    final jsonString = jsonEncode(quantities);
    await sharedPreferences.setString(_key, jsonString);
  }

  @override
  bool isInCart(String productId) {
    return getCartProductQuantities().containsKey(productId);
  }

  @override
  int getQuantity(String productId) {
    return getCartProductQuantities()[productId] ?? 0;
  }

  @override
  Future<void> updateQuantity(String productId, int quantity) async {
    final quantities = getCartProductQuantities();
    quantities[productId] = quantity;
    await saveCartProductQuantities(quantities);
  }

  @override
  Future<void> removeProduct(String productId) async {
    final quantities = getCartProductQuantities();
    quantities.remove(productId);
    await saveCartProductQuantities(quantities);
  }
  
  @override
  Future<void> clearCart() async {
    await sharedPreferences.remove(_key);
  }
}
