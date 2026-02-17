import 'package:dio/dio.dart';
import 'package:mechta_flutter/core/error/exceptions.dart';
import 'package:mechta_flutter/features/home/data/models/banner_model.dart';
import 'package:mechta_flutter/features/home/data/models/news_model.dart';
import 'package:mechta_flutter/features/home/data/models/popular_category_model.dart';
import 'package:mechta_flutter/features/home/data/models/social_model.dart';
import 'package:mechta_flutter/features/home/data/models/top_category_model.dart';

abstract class HomeRemoteDataSource {
  Future<List<BannerModel>> getBanners();
  Future<List<PopularCategoryModel>> getPopularCategories();
  Future<List<NewsModel>> getNews();
  Future<List<TopCategoryModel>> getTopCategories();
  Future<List<SocialModel>> getSocials();
}

class HomeRemoteDataSourceImpl implements HomeRemoteDataSource {
  final Dio dio;

  HomeRemoteDataSourceImpl({required this.dio});

  @override
  Future<List<BannerModel>> getBanners() async {
    try {
      final response = await dio.get('api/v3/publications/banners');
      final List<dynamic> data = response.data;
      return data
          .map((json) => BannerModel.fromJson(json as Map<String, dynamic>))
          .toList();
    } on DioException catch (e) {
      throw ServerException(
        message: e.message ?? 'Unknown error',
        statusCode: e.response?.statusCode,
      );
    }
  }

  @override
  Future<List<PopularCategoryModel>> getPopularCategories() async {
    try {
      final response = await dio.get('api/v3/popular/categories');
      final List<dynamic> data = response.data;
      return data
          .map((json) =>
              PopularCategoryModel.fromJson(json as Map<String, dynamic>))
          .toList();
    } on DioException catch (e) {
      throw ServerException(
        message: e.message ?? 'Unknown error',
        statusCode: e.response?.statusCode,
      );
    }
  }

  @override
  Future<List<NewsModel>> getNews() async {
    try {
      final response = await dio.get('api/v2/news');
      final List<dynamic> data = response.data['data']['news'];
      return data
          .map((json) => NewsModel.fromJson(json as Map<String, dynamic>))
          .toList();
    } on DioException catch (e) {
      throw ServerException(
        message: e.message ?? 'Unknown error',
        statusCode: e.response?.statusCode,
      );
    }
  }

  @override
  Future<List<SocialModel>> getSocials() async {
    try {
      final response = await dio.get('api/v3/footer');
      final List<dynamic> data = response.data['contacts']['socials'];
      return data
          .map((json) => SocialModel.fromJson(json as Map<String, dynamic>))
          .toList();
    } on DioException catch (e) {
      throw ServerException(
        message: e.message ?? 'Unknown error',
        statusCode: e.response?.statusCode,
      );
    }
  }

  @override
  Future<List<TopCategoryModel>> getTopCategories() async {
    try {
      final response = await dio.get('api/v3/popular/top-categories');
      final List<dynamic> data = response.data;
      return data
          .map((json) =>
              TopCategoryModel.fromJson(json as Map<String, dynamic>))
          .toList();
    } on DioException catch (e) {
      throw ServerException(
        message: e.message ?? 'Unknown error',
        statusCode: e.response?.statusCode,
      );
    }
  }
}
