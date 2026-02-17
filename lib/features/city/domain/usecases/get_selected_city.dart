import 'package:mechta_flutter/core/usecase/usecase.dart';
import 'package:mechta_flutter/features/city/domain/entities/city_entity.dart';
import 'package:mechta_flutter/features/city/domain/repositories/city_repository.dart';

class GetSelectedCityUseCase extends UseCase<CityEntity?, NoParams> {
  final CityRepository repository;

  GetSelectedCityUseCase(this.repository);

  @override
  Future<CityEntity?> call(NoParams params) {
    return repository.getSelectedCity();
  }
}
