import 'package:mechta_flutter/features/favorites/domain/entities/favorite_entity.dart';

abstract class FavoritesRepository {
  Future<List<FavoriteEntity>> getFavorites();
}
