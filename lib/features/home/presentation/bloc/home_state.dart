part of 'home_bloc.dart';

enum HomeStatus { initial, loading, success, failure }

class HomeState extends Equatable {
  final HomeStatus status;
  final List<BannerEntity> banners;
  final List<BrandEntity> brands;
  final List<PopularCategoryEntity> categories;
  final List<NewsEntity> news;
  final String? errorMessage;

  const HomeState({
    this.status = HomeStatus.initial,
    this.banners = const [],
    this.brands = const [],
    this.categories = const [],
    this.news = const [],
    this.errorMessage,
  });

  HomeState copyWith({
    HomeStatus? status,
    List<BannerEntity>? banners,
    List<BrandEntity>? brands,
    List<PopularCategoryEntity>? categories,
    List<NewsEntity>? news,
    String? errorMessage,
  }) {
    return HomeState(
      status: status ?? this.status,
      banners: banners ?? this.banners,
      brands: brands ?? this.brands,
      categories: categories ?? this.categories,
      news: news ?? this.news,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }

  @override
  List<Object?> get props =>
      [status, banners, brands, categories, news, errorMessage];
}
