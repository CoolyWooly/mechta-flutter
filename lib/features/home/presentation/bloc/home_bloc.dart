import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mechta_flutter/core/usecase/usecase.dart';
import 'package:mechta_flutter/features/catalog/domain/entities/brand_entity.dart';
import 'package:mechta_flutter/features/catalog/domain/usecases/get_popular_brands.dart';
import 'package:mechta_flutter/features/home/domain/entities/banner_entity.dart';
import 'package:mechta_flutter/features/home/domain/entities/news_entity.dart';
import 'package:mechta_flutter/features/home/domain/entities/popular_category_entity.dart';
import 'package:mechta_flutter/features/home/domain/entities/social_entity.dart';
import 'package:mechta_flutter/features/home/domain/entities/top_category_entity.dart';
import 'package:mechta_flutter/features/home/domain/usecases/get_banners.dart';
import 'package:mechta_flutter/features/home/domain/usecases/get_news.dart';
import 'package:mechta_flutter/features/home/domain/usecases/get_popular_categories.dart';
import 'package:mechta_flutter/features/home/domain/usecases/get_socials.dart';
import 'package:mechta_flutter/features/home/domain/usecases/get_top_categories.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final GetBannersUseCase _getBanners;
  final GetPopularBrandsUseCase _getPopularBrands;
  final GetPopularCategoriesUseCase _getPopularCategories;
  final GetNewsUseCase _getNews;
  final GetTopCategoriesUseCase _getTopCategories;
  final GetSocialsUseCase _getSocials;

  HomeBloc({
    required GetBannersUseCase getBanners,
    required GetPopularBrandsUseCase getPopularBrands,
    required GetPopularCategoriesUseCase getPopularCategories,
    required GetNewsUseCase getNews,
    required GetTopCategoriesUseCase getTopCategories,
    required GetSocialsUseCase getSocials,
  })  : _getBanners = getBanners,
        _getPopularBrands = getPopularBrands,
        _getPopularCategories = getPopularCategories,
        _getNews = getNews,
        _getTopCategories = getTopCategories,
        _getSocials = getSocials,
        super(const HomeState()) {
    on<HomeLoadRequested>(_onLoadRequested);
    on<HomeRefreshRequested>(_onRefreshRequested);
  }

  Future<void> _onLoadRequested(
    HomeLoadRequested event,
    Emitter<HomeState> emit,
  ) async {
    emit(state.copyWith(status: HomeStatus.loading));
    try {
      final results = await Future.wait([
        _getBanners(NoParams()),
        _getPopularBrands(NoParams()),
        _getPopularCategories(NoParams()),
        _getNews(NoParams()),
        _getTopCategories(NoParams()),
        _getSocials(NoParams()),
      ]);
      emit(state.copyWith(
        status: HomeStatus.success,
        banners: results[0] as List<BannerEntity>,
        brands: results[1] as List<BrandEntity>,
        categories: results[2] as List<PopularCategoryEntity>,
        news: results[3] as List<NewsEntity>,
        topCategories: results[4] as List<TopCategoryEntity>,
        socials: results[5] as List<SocialEntity>,
      ));
    } catch (e) {
      emit(state.copyWith(
        status: HomeStatus.failure,
        errorMessage: e.toString(),
      ));
    }
  }

  Future<void> _onRefreshRequested(
    HomeRefreshRequested event,
    Emitter<HomeState> emit,
  ) async {
    try {
      final results = await Future.wait([
        _getBanners(NoParams()),
        _getPopularBrands(NoParams()),
        _getPopularCategories(NoParams()),
        _getNews(NoParams()),
        _getTopCategories(NoParams()),
        _getSocials(NoParams()),
      ]);
      emit(state.copyWith(
        status: HomeStatus.success,
        banners: results[0] as List<BannerEntity>,
        brands: results[1] as List<BrandEntity>,
        categories: results[2] as List<PopularCategoryEntity>,
        news: results[3] as List<NewsEntity>,
        topCategories: results[4] as List<TopCategoryEntity>,
        socials: results[5] as List<SocialEntity>,
      ));
    } catch (e) {
      emit(state.copyWith(
        status: HomeStatus.failure,
        errorMessage: e.toString(),
      ));
    }
  }
}
