import 'package:mechta_flutter/core/usecase/usecase.dart';
import 'package:mechta_flutter/features/city/domain/entities/city_entity.dart';
import 'package:mechta_flutter/features/city/domain/repositories/city_repository.dart';

class GetCitiesUseCase extends UseCase<List<CityEntity>, NoParams> {
  final CityRepository repository;

  GetCitiesUseCase(this.repository);

  @override
  Future<List<CityEntity>> call(NoParams params) {
    return repository.getCities();
  }
}
