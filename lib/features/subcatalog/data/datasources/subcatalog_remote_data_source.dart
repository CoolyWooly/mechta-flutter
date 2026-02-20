import 'package:dio/dio.dart';
import 'package:mechta_flutter/core/error/exceptions.dart';
import 'package:mechta_flutter/features/subcatalog/data/models/category_response_model.dart';
import 'package:mechta_flutter/features/subcatalog/data/models/search_category_response_model.dart';
import 'package:mechta_flutter/features/subcatalog/data/models/subcatalog_response_model.dart';
import 'package:mechta_flutter/features/subcatalog/domain/usecases/get_subcatalog.dart';

abstract class SubcatalogRemoteDataSource {
  Future<SubcatalogResponseModel> getSubcatalog(SubcatalogParams params);
  Future<CategoryResponseModel> getCategory(String slug);
  Future<SearchCategoryResponseModel> searchCategory(String query);
}

class SubcatalogRemoteDataSourceImpl implements SubcatalogRemoteDataSource {
  final Dio dio;

  SubcatalogRemoteDataSourceImpl({required this.dio});

  @override
  Future<SubcatalogResponseModel> getSubcatalog(SubcatalogParams params) async {
    try {
      final queryParameters = <String, dynamic>{
        'page': params.page,
        'pageSize': params.pageSize,
        'slug': params.slug,
      };

      if (params.minPrice != null) {
        queryParameters['minPrice'] = params.minPrice;
      }
      if (params.maxPrice != null) {
        queryParameters['maxPrice'] = params.maxPrice;
      }
      if (params.orderBy != null) {
        queryParameters['orderBy'] = params.orderBy;
      }
      if (params.direction != null) {
        queryParameters['direction'] = params.direction;
      }
      if (params.properties != null) {
        for (final entry in params.properties!.entries) {
          queryParameters['properties[${entry.key}][]'] = entry.value;
        }
      }
      if (params.query != null && params.query!.isNotEmpty) {
        queryParameters['query'] = params.query;
      }

      final response = await dio.get(
        'api/v3/catalog/products',
        queryParameters: queryParameters,
      );

      return SubcatalogResponseModel.fromJson(
        response.data as Map<String, dynamic>,
      );
    } on DioException catch (e) {
      throw ServerException(
        message: e.message ?? 'Unknown error',
        statusCode: e.response?.statusCode,
      );
    }
  }

  @override
  Future<CategoryResponseModel> getCategory(String slug) async {
    try {
      final response = await dio.get(
        'api/v3/catalog/category',
        queryParameters: {'slug': slug},
      );

      return CategoryResponseModel.fromJson(
        response.data as Map<String, dynamic>,
      );
    } on DioException catch (e) {
      throw ServerException(
        message: e.message ?? 'Unknown error',
        statusCode: e.response?.statusCode,
      );
    }
  }

  @override
  Future<SearchCategoryResponseModel> searchCategory(String query) async {
    try {
      final response = await dio.get(
        'api/v3/catalog/search',
        queryParameters: {'query': query},
      );

      return SearchCategoryResponseModel.fromJson(
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
