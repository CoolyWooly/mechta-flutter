import 'package:mechta_flutter/core/error/exceptions.dart';
import 'package:mechta_flutter/core/error/failures.dart';
import 'package:mechta_flutter/features/city/data/datasources/city_local_data_source.dart';
import 'package:mechta_flutter/features/city/data/datasources/city_remote_data_source.dart';
import 'package:mechta_flutter/features/city/data/models/city_model.dart';
import 'package:mechta_flutter/features/city/domain/entities/city_entity.dart';
import 'package:mechta_flutter/features/city/domain/repositories/city_repository.dart';

class CityRepositoryImpl implements CityRepository {
  final CityRemoteDataSource remoteDataSource;
  final CityLocalDataSource localDataSource;

  CityRepositoryImpl({
    required this.remoteDataSource,
    required this.localDataSource,
  });

  @override
  Future<List<CityEntity>> getCities() async {
    try {
      final models = await remoteDataSource.getCities();
      return models.map((m) => m.toEntity()).toList();
    } on ServerException catch (e) {
      throw ServerFailure(e.message);
    }
  }

  @override
  Future<void> saveCity(CityEntity city) async {
    final model = CityModel.fromEntity(city);
    await localDataSource.saveCity(model);
  }

  @override
  Future<CityEntity?> getSelectedCity() async {
    final model = localDataSource.getCity();
    return model?.toEntity();
  }
}
