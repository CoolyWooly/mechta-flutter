import 'package:mechta_flutter/features/favorites/data/datasources/favorites_local_data_source.dart';
import 'package:mechta_flutter/features/favorites/domain/entities/favorite_entity.dart';
import 'package:mechta_flutter/features/favorites/domain/repositories/favorites_repository.dart';

class FavoritesRepositoryImpl implements FavoritesRepository {
  final FavoritesLocalDataSource localDataSource;

  FavoritesRepositoryImpl({required this.localDataSource});

  @override
  Future<List<FavoriteEntity>> getFavorites() async {
    final models = await localDataSource.getFavorites();
    return models.map((m) => m.toEntity()).toList();
  }
}
