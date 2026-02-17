import 'package:mechta_flutter/core/domain/entities/product_entity.dart';

abstract class FavoritesRepository {
  Future<List<ProductEntity>> getFavorites();
  Future<void> toggleFavorite(String productId);
  bool isFavorite(String productId);
}
