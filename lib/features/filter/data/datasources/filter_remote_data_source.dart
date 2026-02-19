import 'package:dio/dio.dart';
import 'package:mechta_flutter/core/error/exceptions.dart';
import 'package:mechta_flutter/features/filter/data/models/filter_response_model.dart';
import 'package:mechta_flutter/features/filter/domain/usecases/get_filters.dart';

abstract class FilterRemoteDataSource {
  Future<FiltersResponseModel> getFilters(FilterParams params);
}

class FilterRemoteDataSourceImpl implements FilterRemoteDataSource {
  final Dio dio;

  FilterRemoteDataSourceImpl({required this.dio});

  @override
  Future<FiltersResponseModel> getFilters(FilterParams params) async {
    try {
      final queryParameters = <String, dynamic>{
        'slug': params.slug,
      };
      if (params.query != null && params.query!.isNotEmpty) {
        queryParameters['query'] = params.query;
      }
      if (params.minPrice != null && params.minPrice! > 0) {
        queryParameters['minPrice'] = params.minPrice;
      }
      if (params.maxPrice != null && params.maxPrice! > 0) {
        queryParameters['maxPrice'] = params.maxPrice;
      }
      if (params.properties != null) {
        for (final entry in params.properties!.entries) {
          queryParameters['properties[${entry.key}][]'] = entry.value;
        }
      }

      final response = await dio.get(
        'api/v3/catalog/filter',
        queryParameters: queryParameters,
      );

      return FiltersResponseModel.fromJson(response.data as Map<String, dynamic>);
    } on DioException catch (e) {
      throw ServerException(
        message: e.message ?? 'Unknown error',
        statusCode: e.response?.statusCode,
      );
    }
  }
}
