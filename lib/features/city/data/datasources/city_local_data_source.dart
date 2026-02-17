import 'dart:convert';

import 'package:mechta_flutter/features/city/data/models/city_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class CityLocalDataSource {
  Future<void> saveCity(CityModel city);
  CityModel? getCity();
  String? getCityCode();
}

class CityLocalDataSourceImpl implements CityLocalDataSource {
  static const _selectedCityKey = 'selected_city';

  static const _defaultCityJson = {
    'code': 's1',
    'kaspiCode': '710000000',
    'name': 'Астана',
    'phones': ['+7 747 440 40 40'],
    'coordinates': {'lat': 71.415784, 'lon': 51.145953},
  };

  final SharedPreferences sharedPreferences;

  CityLocalDataSourceImpl({required this.sharedPreferences}) {
    _ensureDefaultCity();
  }

  void _ensureDefaultCity() {
    if (!sharedPreferences.containsKey(_selectedCityKey)) {
      sharedPreferences.setString(
        _selectedCityKey,
        jsonEncode(_defaultCityJson),
      );
    }
  }

  @override
  Future<void> saveCity(CityModel city) async {
    final jsonString = jsonEncode(city.toJson());
    await sharedPreferences.setString(_selectedCityKey, jsonString);
  }

  @override
  CityModel? getCity() {
    final jsonString = sharedPreferences.getString(_selectedCityKey);
    if (jsonString == null) return null;
    final json = jsonDecode(jsonString) as Map<String, dynamic>;
    return CityModel.fromJson(json);
  }

  @override
  String? getCityCode() {
    final city = getCity();
    return city?.code;
  }
}
