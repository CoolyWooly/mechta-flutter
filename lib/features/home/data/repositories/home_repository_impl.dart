import 'package:mechta_flutter/core/error/exceptions.dart';
import 'package:mechta_flutter/core/error/failures.dart';
import 'package:mechta_flutter/features/home/data/datasources/home_remote_data_source.dart';
import 'package:mechta_flutter/features/home/domain/entities/banner_entity.dart';
import 'package:mechta_flutter/features/home/domain/entities/news_entity.dart';
import 'package:mechta_flutter/features/home/domain/entities/popular_category_entity.dart';
import 'package:mechta_flutter/features/home/domain/entities/social_entity.dart';
import 'package:mechta_flutter/features/home/domain/entities/top_category_entity.dart';
import 'package:mechta_flutter/features/home/domain/repositories/home_repository.dart';

class HomeRepositoryImpl implements HomeRepository {
  final HomeRemoteDataSource remoteDataSource;

  HomeRepositoryImpl({required this.remoteDataSource});

  @override
  Future<List<BannerEntity>> getBanners() async {
    try {
      final models = await remoteDataSource.getBanners();
      return models.map((m) => m.toEntity()).toList();
    } on ServerException catch (e) {
      throw ServerFailure(e.message);
    }
  }

  @override
  Future<List<PopularCategoryEntity>> getPopularCategories() async {
    try {
      final models = await remoteDataSource.getPopularCategories();
      return models.map((m) => m.toEntity()).toList();
    } on ServerException catch (e) {
      throw ServerFailure(e.message);
    }
  }

  @override
  Future<List<NewsEntity>> getNews() async {
    try {
      final models = await remoteDataSource.getNews();
      return models.map((m) => m.toEntity()).toList();
    } on ServerException catch (e) {
      throw ServerFailure(e.message);
    }
  }

  @override
  Future<List<TopCategoryEntity>> getTopCategories() async {
    try {
      final models = await remoteDataSource.getTopCategories();
      return models.map((m) => m.toEntity()).toList();
    } on ServerException catch (e) {
      throw ServerFailure(e.message);
    }
  }

  @override
  Future<List<SocialEntity>> getSocials() async {
    try {
      final models = await remoteDataSource.getSocials();
      return models.map((m) => m.toEntity()).toList();
    } on ServerException catch (e) {
      throw ServerFailure(e.message);
    }
  }
}
