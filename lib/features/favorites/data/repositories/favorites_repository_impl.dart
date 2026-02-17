import 'package:mechta_flutter/core/domain/entities/product_entity.dart';
import 'package:mechta_flutter/core/error/exceptions.dart';
import 'package:mechta_flutter/core/error/failures.dart';
import 'package:mechta_flutter/features/favorites/data/datasources/favorites_local_data_source.dart';
import 'package:mechta_flutter/features/favorites/data/datasources/favorites_remote_data_source.dart';
import 'package:mechta_flutter/features/favorites/domain/repositories/favorites_repository.dart';

class FavoritesRepositoryImpl implements FavoritesRepository {
  final FavoritesRemoteDataSource remoteDataSource;
  final FavoritesLocalDataSource localDataSource;

  FavoritesRepositoryImpl({
    required this.remoteDataSource,
    required this.localDataSource,
  });

  @override
  Future<List<ProductEntity>> getFavorites() async {
    try {
      final models = await remoteDataSource.getFavorites();
      final entities = models.map((m) => m.toEntity()).toList();
      final ids = entities.map((e) => e.id).whereType<String>().toSet();
      await localDataSource.saveFavoriteIds(ids);
      return entities;
    } on ServerException catch (e) {
      throw ServerFailure(e.message);
    }
  }

  @override
  Future<void> toggleFavorite(String productId) async {
    try {
      if (localDataSource.isFavorite(productId)) {
        await remoteDataSource.removeFavorite(productId);
        await localDataSource.removeId(productId);
      } else {
        await remoteDataSource.addFavorite(productId);
        await localDataSource.addId(productId);
      }
    } on ServerException catch (e) {
      throw ServerFailure(e.message);
    }
  }

  @override
  bool isFavorite(String productId) {
    return localDataSource.isFavorite(productId);
  }
}
