import 'package:mechta_flutter/core/usecase/usecase.dart';
import 'package:mechta_flutter/features/favorites/domain/repositories/favorites_repository.dart';

class ToggleFavoriteUseCase extends UseCase<void, String> {
  final FavoritesRepository repository;

  ToggleFavoriteUseCase(this.repository);

  @override
  Future<void> call(String productId) {
    return repository.toggleFavorite(productId);
  }
}
