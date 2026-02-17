import 'package:mechta_flutter/core/usecase/usecase.dart';
import 'package:mechta_flutter/features/city/domain/entities/city_entity.dart';
import 'package:mechta_flutter/features/city/domain/repositories/city_repository.dart';

class SaveCityUseCase extends UseCase<void, CityEntity> {
  final CityRepository repository;

  SaveCityUseCase(this.repository);

  @override
  Future<void> call(CityEntity params) {
    return repository.saveCity(params);
  }
}
