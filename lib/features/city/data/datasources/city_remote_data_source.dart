import 'package:dio/dio.dart';
import 'package:mechta_flutter/core/error/exceptions.dart';
import 'package:mechta_flutter/features/city/data/models/city_model.dart';

abstract class CityRemoteDataSource {
  Future<List<CityModel>> getCities();
}

class CityRemoteDataSourceImpl implements CityRemoteDataSource {
  final Dio dio;

  CityRemoteDataSourceImpl({required this.dio});

  @override
  Future<List<CityModel>> getCities() async {
    try {
      final response = await dio.get('api/v2/header/cities');
      final List<dynamic> data = response.data['data']['cities'];
      return data
          .map((json) => CityModel.fromJson(json as Map<String, dynamic>))
          .toList();
    } on DioException catch (e) {
      throw ServerException(
        message: e.message ?? 'Unknown error',
        statusCode: e.response?.statusCode,
      );
    }
  }
}
