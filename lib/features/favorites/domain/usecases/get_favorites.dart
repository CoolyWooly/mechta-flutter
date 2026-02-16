import 'package:mechta_flutter/core/usecase/usecase.dart';
import 'package:mechta_flutter/features/favorites/domain/entities/favorite_entity.dart';
import 'package:mechta_flutter/features/favorites/domain/repositories/favorites_repository.dart';

class GetFavoritesUseCase extends UseCase<List<FavoriteEntity>, NoParams> {
  final FavoritesRepository repository;

  GetFavoritesUseCase(this.repository);

  @override
  Future<List<FavoriteEntity>> call(NoParams params) {
    return repository.getFavorites();
  }
}
