import 'package:mechta_flutter/features/favorites/domain/repositories/favorites_repository.dart';

class IsFavoriteUseCase {
  final FavoritesRepository repository;

  IsFavoriteUseCase(this.repository);

  bool call(String productId) {
    return repository.isFavorite(productId);
  }
}
