import 'package:dio/dio.dart';
import 'package:mechta_flutter/core/data/models/seo_response_model.dart';
import 'package:mechta_flutter/core/error/exceptions.dart';

abstract class SeoRemoteDataSource {
  Future<SeoResponseModel> resolve(String path);
}

class SeoRemoteDataSourceImpl implements SeoRemoteDataSource {
  final Dio dio;

  SeoRemoteDataSourceImpl({required this.dio});

  @override
  Future<SeoResponseModel> resolve(String path) async {
    try {
      final response = await dio.post(
        'https://www.mechta.kz/api/seo-resolve',
        data: {'path': path},
      );
      return SeoResponseModel.fromJson(
        response.data as Map<String, dynamic>,
      );
    } on DioException catch (e) {
      throw ServerException(
        message: e.message ?? 'Unknown error',
        statusCode: e.response?.statusCode,
      );
    }
  }
}
