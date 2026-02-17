import 'package:mechta_flutter/core/domain/entities/product_entity.dart';
import 'package:mechta_flutter/core/usecase/usecase.dart';
import 'package:mechta_flutter/features/favorites/domain/repositories/favorites_repository.dart';

class GetFavoritesUseCase extends UseCase<List<ProductEntity>, NoParams> {
  final FavoritesRepository repository;

  GetFavoritesUseCase(this.repository);

  @override
  Future<List<ProductEntity>> call(NoParams params) {
    return repository.getFavorites();
  }
}
