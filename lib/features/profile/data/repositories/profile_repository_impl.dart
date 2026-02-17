import 'package:mechta_flutter/core/error/exceptions.dart';
import 'package:mechta_flutter/core/error/failures.dart';
import 'package:mechta_flutter/features/auth/data/datasources/auth_local_data_source.dart';
import 'package:mechta_flutter/features/favorites/data/datasources/favorites_local_data_source.dart';
import 'package:mechta_flutter/features/profile/data/datasources/profile_local_data_source.dart';
import 'package:mechta_flutter/features/profile/data/datasources/profile_remote_data_source.dart';
import 'package:mechta_flutter/features/profile/domain/entities/profile_entity.dart';
import 'package:mechta_flutter/features/profile/domain/repositories/profile_repository.dart';

class ProfileRepositoryImpl implements ProfileRepository {
  final ProfileLocalDataSource localDataSource;
  final ProfileRemoteDataSource remoteDataSource;
  final AuthLocalDataSource authLocalDataSource;
  final FavoritesLocalDataSource favoritesLocalDataSource;

  ProfileRepositoryImpl({
    required this.localDataSource,
    required this.remoteDataSource,
    required this.authLocalDataSource,
    required this.favoritesLocalDataSource,
  });

  @override
  Future<ProfileEntity> getProfile() async {
    final model = await localDataSource.getProfile();
    return model.toEntity();
  }

  @override
  Future<ProfileEntity> fetchAndSaveProfile() async {
    try {
      final model = await remoteDataSource.getProfile();
      await localDataSource.saveProfile(model);
      return model.toEntity();
    } on ServerException catch (e) {
      throw ServerFailure(e.message);
    }
  }

  @override
  Future<void> logout() async {
    await authLocalDataSource.clearToken();
    await localDataSource.clearProfile();
    await favoritesLocalDataSource.saveFavoriteIds({});
  }
}
