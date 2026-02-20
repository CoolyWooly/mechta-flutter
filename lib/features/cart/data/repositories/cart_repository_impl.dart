import 'package:mechta_flutter/core/error/exceptions.dart';
import 'package:mechta_flutter/core/error/failures.dart';
import 'package:mechta_flutter/features/auth/data/datasources/auth_local_data_source.dart';
import 'package:mechta_flutter/features/cart/data/datasources/cart_local_data_source.dart';
import 'package:mechta_flutter/features/cart/data/datasources/cart_remote_data_source.dart';
import 'package:mechta_flutter/features/cart/domain/entities/cart_item_entity.dart';
import 'package:mechta_flutter/features/cart/domain/repositories/cart_repository.dart';

class CartRepositoryImpl implements CartRepository {
  final CartRemoteDataSource remoteDataSource;
  final AuthLocalDataSource authLocalDataSource;
  final CartLocalDataSource localDataSource;

  CartRepositoryImpl({
    required this.remoteDataSource,
    required this.authLocalDataSource,
    required this.localDataSource,
  });

  @override
  Future<bool> isAuthenticated() async {
    final token = await authLocalDataSource.getToken();
    return token != null && token.isNotEmpty;
  }

  @override
  Future<CartEntity> getCart() async {
    final isAuth = await isAuthenticated();
    
    try {
      if (isAuth) {
        final model = await remoteDataSource.getCart();
        return model.toEntity();
      } else {
        final localMap = localDataSource.getCartProductQuantities();
        if (localMap.isEmpty) {
          return const CartEntity();
        }
        
        final products = localMap.entries.map((entry) => {
          'product_id': int.parse(entry.key),
          'quantity': entry.value,
          'gifts': null,
          'tradein': null,
        }).toList();
        
        final model = await remoteDataSource.getCartForUnauthenticated(products);
        return model.toEntity();
      }
    } on ServerException catch (e) {
      throw ServerFailure(e.message, e.errors);
    }
  }

  @override
  Future<void> syncCartProducts(Map<String, int> products) async {
    await localDataSource.saveCartProductQuantities(products);
  }

  @override
  Map<String, int> getCartProductQuantities() {
    return localDataSource.getCartProductQuantities();
  }

  @override
  int getQuantity(String productId) {
    return localDataSource.getQuantity(productId);
  }

  @override
  bool isInCart(String productId) {
    return localDataSource.isInCart(productId);
  }

  @override
  Future<void> addToCart(int productId) async {
    final isAuth = await isAuthenticated();
    if (isAuth) {
      try {
        await remoteDataSource.addToCart(productId);
        // We sync local too after success logic in Auth
        await localDataSource.updateQuantity(productId.toString(), 1);
      } on ServerException catch (e) {
        throw ServerFailure(e.message, e.errors);
      }
    } else {
      await localDataSource.updateQuantity(productId.toString(), 1);
    }
  }

  @override
  Future<void> changeQuantity(int productId, int quantity) async {
    final isAuth = await isAuthenticated();
    if (isAuth) {
      try {
        await remoteDataSource.changeQuantity(productId, quantity);
        await localDataSource.updateQuantity(productId.toString(), quantity);
      } on ServerException catch (e) {
        throw ServerFailure(e.message, e.errors);
      }
    } else {
      await localDataSource.updateQuantity(productId.toString(), quantity);
    }
  }

  @override
  Future<void> deleteFromCart(int productId) async {
    final isAuth = await isAuthenticated();
    if (isAuth) {
      try {
        await remoteDataSource.deleteFromCart(productId);
        await localDataSource.removeProduct(productId.toString());
      } on ServerException catch (e) {
        throw ServerFailure(e.message, e.errors);
      }
    } else {
      await localDataSource.removeProduct(productId.toString());
    }
  }

  @override
  Future<void> syncBasketOnLogin() async {
    final localMap = localDataSource.getCartProductQuantities();
    
    // 1. Push all offline items to server immediately after auth
    for (var entry in localMap.entries) {
      if (entry.value > 0) {
        try {
          await remoteDataSource.addToCart(int.parse(entry.key));
          if (entry.value > 1) {
            await remoteDataSource.changeQuantity(int.parse(entry.key), entry.value);
          }
        } catch (_) {
          // Ignore individual failures, we just want to push as much as we can
        }
      }
    }
    
    // 2. Fetch the newly merged remote cart for this user profile
    try {
      final remoteCartModel = await remoteDataSource.getCart();
      final entity = remoteCartModel.toEntity();
      
      // 3. Rebuild the local map reflecting exactly what's on the server
      final mergedMap = <String, int>{};
      for (final item in entity.items) {
        if (item.productId != null) {
          mergedMap[item.productId.toString()] = item.quantity;
        }
      }
      
      // 4. Save back to Local DB
      await localDataSource.saveCartProductQuantities(mergedMap);
    } catch (_) {
      // If fetching fails, leave local map intact for next attempt
    }
  }
}
