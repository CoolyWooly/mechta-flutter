import 'package:mechta_flutter/features/city/domain/entities/city_entity.dart';

abstract class CityRepository {
  Future<List<CityEntity>> getCities();
  Future<void> saveCity(CityEntity city);
  Future<CityEntity?> getSelectedCity();
}
