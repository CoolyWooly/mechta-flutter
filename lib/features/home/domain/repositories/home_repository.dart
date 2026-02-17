import 'package:mechta_flutter/features/home/domain/entities/banner_entity.dart';
import 'package:mechta_flutter/features/home/domain/entities/news_entity.dart';
import 'package:mechta_flutter/features/home/domain/entities/popular_category_entity.dart';
import 'package:mechta_flutter/features/home/domain/entities/social_entity.dart';
import 'package:mechta_flutter/features/home/domain/entities/top_category_entity.dart';

abstract class HomeRepository {
  Future<List<BannerEntity>> getBanners();
  Future<List<PopularCategoryEntity>> getPopularCategories();
  Future<List<NewsEntity>> getNews();
  Future<List<TopCategoryEntity>> getTopCategories();
  Future<List<SocialEntity>> getSocials();
}
