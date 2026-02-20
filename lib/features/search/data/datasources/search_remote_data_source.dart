import 'package:dio/dio.dart';
import 'package:mechta_flutter/core/error/exceptions.dart';
import 'package:mechta_flutter/features/search/data/models/search_response_model.dart';

abstract class SearchRemoteDataSource {
  Future<SearchResponseModel> autocomplete(String text, String regionId);
}

class SearchRemoteDataSourceImpl implements SearchRemoteDataSource {
  final Dio dio;

  SearchRemoteDataSourceImpl({required this.dio});

  @override
  Future<SearchResponseModel> autocomplete(String text, String regionId) async {
    try {
      final response = await dio.get(
        'https://api.mdev.kz/loupe/autocomplete',
        queryParameters: {
          'text': text,
          'region_id': regionId,
        },
      );

      return SearchResponseModel.fromJson(
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
