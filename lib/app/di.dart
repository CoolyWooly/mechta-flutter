import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:uuid/uuid.dart';
import 'package:mechta_flutter/core/data/datasources/seo_remote_data_source.dart';
import 'package:mechta_flutter/core/navigation/app_link_handler.dart';
import 'package:mechta_flutter/core/navigation/seo_navigator.dart';
import 'package:mechta_flutter/core/network/dio_client.dart';

// Home
import 'package:mechta_flutter/features/home/data/datasources/home_remote_data_source.dart';
import 'package:mechta_flutter/features/home/data/repositories/home_repository_impl.dart';
import 'package:mechta_flutter/features/home/domain/repositories/home_repository.dart';
import 'package:mechta_flutter/features/home/domain/usecases/get_banners.dart';
import 'package:mechta_flutter/features/home/domain/usecases/get_news.dart';
import 'package:mechta_flutter/features/home/domain/usecases/get_socials.dart';
import 'package:mechta_flutter/features/home/domain/usecases/get_top_categories.dart';
import 'package:mechta_flutter/features/home/presentation/bloc/home_bloc.dart';

// Catalog
import 'package:mechta_flutter/features/catalog/data/datasources/catalog_remote_data_source.dart';
import 'package:mechta_flutter/features/catalog/data/repositories/catalog_repository_impl.dart';
import 'package:mechta_flutter/features/catalog/domain/repositories/catalog_repository.dart';
import 'package:mechta_flutter/features/catalog/domain/usecases/get_categories.dart';
import 'package:mechta_flutter/features/catalog/domain/usecases/get_popular_brands.dart';
import 'package:mechta_flutter/features/home/domain/usecases/get_popular_categories.dart';
import 'package:mechta_flutter/features/catalog/presentation/bloc/catalog_bloc.dart';

// Cart
import 'package:mechta_flutter/features/cart/data/datasources/cart_remote_data_source.dart';
import 'package:mechta_flutter/features/cart/data/repositories/cart_repository_impl.dart';
import 'package:mechta_flutter/features/cart/domain/repositories/cart_repository.dart';
import 'package:mechta_flutter/features/cart/domain/usecases/get_cart_items.dart';
import 'package:mechta_flutter/features/cart/presentation/bloc/cart_bloc.dart';

// Favorites
import 'package:mechta_flutter/features/favorites/data/datasources/favorites_local_data_source.dart';
import 'package:mechta_flutter/features/favorites/data/datasources/favorites_remote_data_source.dart';
import 'package:mechta_flutter/features/favorites/data/repositories/favorites_repository_impl.dart';
import 'package:mechta_flutter/features/favorites/domain/repositories/favorites_repository.dart';
import 'package:mechta_flutter/features/favorites/domain/usecases/get_favorites.dart';
import 'package:mechta_flutter/features/favorites/domain/usecases/is_favorite.dart';
import 'package:mechta_flutter/features/favorites/domain/usecases/toggle_favorite.dart';
import 'package:mechta_flutter/features/favorites/presentation/bloc/favorites_bloc.dart';

// Auth
import 'package:mechta_flutter/features/auth/data/datasources/auth_local_data_source.dart';
import 'package:mechta_flutter/features/auth/data/datasources/auth_remote_data_source.dart';
import 'package:mechta_flutter/features/auth/data/repositories/auth_repository_impl.dart';
import 'package:mechta_flutter/features/auth/domain/repositories/auth_repository.dart';
import 'package:mechta_flutter/features/auth/domain/usecases/login.dart';
import 'package:mechta_flutter/features/auth/domain/usecases/send_sms.dart';
import 'package:mechta_flutter/features/auth/presentation/bloc/auth_bloc.dart';

// City
import 'package:mechta_flutter/features/city/data/datasources/city_local_data_source.dart';
import 'package:mechta_flutter/features/city/data/datasources/city_remote_data_source.dart';
import 'package:mechta_flutter/features/city/data/repositories/city_repository_impl.dart';
import 'package:mechta_flutter/features/city/domain/repositories/city_repository.dart';
import 'package:mechta_flutter/features/city/domain/usecases/get_cities.dart';
import 'package:mechta_flutter/features/city/domain/usecases/get_selected_city.dart';
import 'package:mechta_flutter/features/city/domain/usecases/save_city.dart';
import 'package:mechta_flutter/features/city/presentation/bloc/city_bloc.dart';

// Profile
import 'package:mechta_flutter/features/profile/data/datasources/profile_local_data_source.dart';
import 'package:mechta_flutter/features/profile/data/datasources/profile_remote_data_source.dart';
import 'package:mechta_flutter/features/profile/data/repositories/profile_repository_impl.dart';
import 'package:mechta_flutter/features/profile/domain/repositories/profile_repository.dart';
import 'package:mechta_flutter/features/profile/domain/usecases/fetch_profile.dart';
import 'package:mechta_flutter/features/profile/domain/usecases/get_profile.dart';
import 'package:mechta_flutter/features/profile/domain/usecases/logout.dart';
import 'package:mechta_flutter/features/profile/presentation/bloc/profile_bloc.dart';

// Subcatalog
import 'package:mechta_flutter/features/subcatalog/data/datasources/subcatalog_remote_data_source.dart';
import 'package:mechta_flutter/features/subcatalog/data/repositories/subcatalog_repository_impl.dart';
import 'package:mechta_flutter/features/subcatalog/domain/repositories/subcatalog_repository.dart';
import 'package:mechta_flutter/features/subcatalog/domain/usecases/get_category_children.dart';
import 'package:mechta_flutter/features/subcatalog/domain/usecases/get_subcatalog.dart';
import 'package:mechta_flutter/features/subcatalog/presentation/bloc/subcatalog_bloc.dart';

// Filter
import 'package:mechta_flutter/features/filter/data/datasources/filter_remote_data_source.dart';
import 'package:mechta_flutter/features/filter/data/repositories/filter_repository_impl.dart';
import 'package:mechta_flutter/features/filter/domain/repositories/filter_repository.dart';
import 'package:mechta_flutter/features/filter/domain/usecases/get_filters.dart';
import 'package:mechta_flutter/features/filter/presentation/bloc/filter_bloc.dart';

// Product
import 'package:mechta_flutter/features/product/data/datasources/product_remote_data_source.dart';
import 'package:mechta_flutter/features/product/data/repositories/product_repository_impl.dart';
import 'package:mechta_flutter/features/product/domain/repositories/product_repository.dart';
import 'package:mechta_flutter/features/product/domain/usecases/get_product.dart';
import 'package:mechta_flutter/features/product/presentation/bloc/product_bloc.dart';

// Shops
import 'package:mechta_flutter/features/shops/data/datasources/shops_remote_data_source.dart';
import 'package:mechta_flutter/features/shops/data/repositories/shops_repository_impl.dart';
import 'package:mechta_flutter/features/shops/domain/repositories/shops_repository.dart';
import 'package:mechta_flutter/features/shops/domain/usecases/get_shops.dart';
import 'package:mechta_flutter/features/shops/presentation/bloc/shops_bloc.dart';

// Bonuses
import 'package:mechta_flutter/features/bonuses/data/datasources/bonuses_remote_data_source.dart';
import 'package:mechta_flutter/features/bonuses/data/repositories/bonuses_repository_impl.dart';
import 'package:mechta_flutter/features/bonuses/domain/repositories/bonuses_repository.dart';
import 'package:mechta_flutter/features/bonuses/domain/usecases/get_bonuses_history.dart';
import 'package:mechta_flutter/features/bonuses/presentation/bloc/bonuses_bloc.dart';

// Brand
import 'package:mechta_flutter/features/brand/data/datasources/brand_remote_data_source.dart';
import 'package:mechta_flutter/features/brand/data/repositories/brand_repository_impl.dart';
import 'package:mechta_flutter/features/brand/domain/repositories/brand_repository.dart';
import 'package:mechta_flutter/features/brand/domain/usecases/get_brand.dart';
import 'package:mechta_flutter/features/brand/presentation/bloc/brand_bloc.dart';

// Promotions
import 'package:mechta_flutter/features/promotions/data/datasources/promotions_remote_data_source.dart';
import 'package:mechta_flutter/features/promotions/data/repositories/promotions_repository_impl.dart';
import 'package:mechta_flutter/features/promotions/domain/repositories/promotions_repository.dart';
import 'package:mechta_flutter/features/promotions/domain/usecases/get_promotion_detail.dart';
import 'package:mechta_flutter/features/promotions/domain/usecases/get_promotions.dart';
import 'package:mechta_flutter/features/promotions/presentation/bloc/promotion_detail_bloc.dart';
import 'package:mechta_flutter/features/promotions/presentation/bloc/promotions_bloc.dart';

// Search
import 'package:mechta_flutter/features/search/data/datasources/search_remote_data_source.dart';
import 'package:mechta_flutter/features/search/data/repositories/search_repository_impl.dart';
import 'package:mechta_flutter/features/search/domain/repositories/search_repository.dart';
import 'package:mechta_flutter/features/search/domain/usecases/search_products.dart';
import 'package:mechta_flutter/features/search/presentation/bloc/search_bloc.dart';

final sl = GetIt.instance;

Future<void> configureDependencies() async {
  // ---- External ----
  final sharedPreferences = await SharedPreferences.getInstance();
  sl.registerLazySingleton<SharedPreferences>(() => sharedPreferences);

  // ---- Core ----
  final deviceId = _getOrCreateDeviceId(sharedPreferences);
  sl.registerLazySingleton<Dio>(
    () => createDio(deviceId: deviceId, sharedPreferences: sharedPreferences),
  );
  sl.registerLazySingleton<SeoRemoteDataSource>(
    () => SeoRemoteDataSourceImpl(dio: sl()),
  );
  sl.registerLazySingleton(() => SeoNavigator(dataSource: sl()));
  sl.registerLazySingleton(() => AppLinkHandler(seoNavigator: sl()));

  // ---- Features ----
  _registerCityFeature();
  _registerAuthFeature();
  _registerHomeFeature();
  _registerCatalogFeature();
  _registerSubcatalogFeature();
  _registerFilterFeature();
  _registerCartFeature();
  _registerFavoritesFeature();
  _registerProfileFeature();
  _registerProductFeature();
  _registerShopsFeature();
  _registerBonusesFeature();
  _registerBrandFeature();
  _registerPromotionsFeature();
  _registerSearchFeature();
}

const _deviceIdKey = 'device_id';

String _getOrCreateDeviceId(SharedPreferences prefs) {
  var id = prefs.getString(_deviceIdKey);
  if (id == null) {
    id = const Uuid().v4();
    prefs.setString(_deviceIdKey, id);
  }
  return id;
}

void _registerCityFeature() {
  sl.registerLazySingleton<CityRemoteDataSource>(
    () => CityRemoteDataSourceImpl(dio: sl()),
  );
  sl.registerLazySingleton<CityLocalDataSource>(
    () => CityLocalDataSourceImpl(sharedPreferences: sl()),
  );
  sl.registerLazySingleton<CityRepository>(
    () => CityRepositoryImpl(
      remoteDataSource: sl(),
      localDataSource: sl(),
    ),
  );
  sl.registerLazySingleton(() => GetCitiesUseCase(sl()));
  sl.registerLazySingleton(() => SaveCityUseCase(sl()));
  sl.registerLazySingleton(() => GetSelectedCityUseCase(sl()));
  sl.registerFactory(() => CityBloc(
        getCities: sl(),
        saveCity: sl(),
        getSelectedCity: sl(),
      ));
}

void _registerAuthFeature() {
  sl.registerLazySingleton<AuthRemoteDataSource>(
    () => AuthRemoteDataSourceImpl(dio: sl()),
  );
  sl.registerLazySingleton<AuthLocalDataSource>(
    () => AuthLocalDataSourceImpl(sharedPreferences: sl()),
  );
  sl.registerLazySingleton<AuthRepository>(
    () => AuthRepositoryImpl(
      remoteDataSource: sl(),
      localDataSource: sl(),
    ),
  );
  sl.registerLazySingleton(() => SendSmsUseCase(sl()));
  sl.registerLazySingleton(() => LoginUseCase(sl()));
  sl.registerFactory(() => AuthBloc(sendSms: sl(), login: sl()));
}

void _registerHomeFeature() {
  sl.registerLazySingleton<HomeRemoteDataSource>(
    () => HomeRemoteDataSourceImpl(dio: sl()),
  );
  sl.registerLazySingleton<HomeRepository>(
    () => HomeRepositoryImpl(remoteDataSource: sl()),
  );
  sl.registerLazySingleton(() => GetBannersUseCase(sl()));
  sl.registerLazySingleton(() => GetPopularCategoriesUseCase(sl()));
  sl.registerLazySingleton(() => GetNewsUseCase(sl()));
  sl.registerLazySingleton(() => GetTopCategoriesUseCase(sl()));
  sl.registerLazySingleton(() => GetSocialsUseCase(sl()));
  sl.registerFactory(() => HomeBloc(
        getBanners: sl(),
        getPopularBrands: sl(),
        getPopularCategories: sl(),
        getNews: sl(),
        getTopCategories: sl(),
        getSocials: sl(),
      ));
}

void _registerCatalogFeature() {
  sl.registerLazySingleton<CatalogRemoteDataSource>(
    () => CatalogRemoteDataSourceImpl(dio: sl()),
  );
  sl.registerLazySingleton<CatalogRepository>(
    () => CatalogRepositoryImpl(remoteDataSource: sl()),
  );
  sl.registerLazySingleton(() => GetCategoriesUseCase(sl()));
  sl.registerLazySingleton(() => GetPopularBrandsUseCase(sl()));
  sl.registerFactory(
      () => CatalogBloc(getCategories: sl(), getPopularBrands: sl()));
}

void _registerCartFeature() {
  sl.registerLazySingleton<CartRemoteDataSource>(
    () => CartRemoteDataSourceImpl(dio: sl()),
  );
  sl.registerLazySingleton<CartRepository>(
    () => CartRepositoryImpl(
      remoteDataSource: sl(),
      authLocalDataSource: sl(),
    ),
  );
  sl.registerLazySingleton(() => GetCartUseCase(sl()));
  sl.registerFactory(() => CartBloc(getCart: sl(), repository: sl()));
}

void _registerFavoritesFeature() {
  sl.registerLazySingleton<FavoritesLocalDataSource>(
    () => FavoritesLocalDataSourceImpl(sharedPreferences: sl()),
  );
  sl.registerLazySingleton<FavoritesRemoteDataSource>(
    () => FavoritesRemoteDataSourceImpl(dio: sl()),
  );
  sl.registerLazySingleton<FavoritesRepository>(
    () => FavoritesRepositoryImpl(
      remoteDataSource: sl(),
      localDataSource: sl(),
    ),
  );
  sl.registerLazySingleton(() => GetFavoritesUseCase(sl()));
  sl.registerLazySingleton(() => ToggleFavoriteUseCase(sl()));
  sl.registerLazySingleton(() => IsFavoriteUseCase(sl()));
  sl.registerFactory(() => FavoritesBloc(
        getFavorites: sl(),
        toggleFavorite: sl(),
      ));
}

void _registerProfileFeature() {
  sl.registerLazySingleton<ProfileLocalDataSource>(
    () => ProfileLocalDataSourceImpl(sharedPreferences: sl()),
  );
  sl.registerLazySingleton<ProfileRemoteDataSource>(
    () => ProfileRemoteDataSourceImpl(dio: sl()),
  );
  sl.registerLazySingleton<ProfileRepository>(
    () => ProfileRepositoryImpl(
      localDataSource: sl(),
      remoteDataSource: sl(),
      authLocalDataSource: sl(),
      favoritesLocalDataSource: sl(),
    ),
  );
  sl.registerLazySingleton(() => GetProfileUseCase(sl()));
  sl.registerLazySingleton(() => FetchProfileUseCase(sl()));
  sl.registerLazySingleton(() => LogoutUseCase(sl()));
  sl.registerFactory(() => ProfileBloc(
        getProfile: sl(),
        fetchProfile: sl(),
        logout: sl(),
      ));
}

void _registerSubcatalogFeature() {
  sl.registerLazySingleton<SubcatalogRemoteDataSource>(
    () => SubcatalogRemoteDataSourceImpl(dio: sl()),
  );
  sl.registerLazySingleton<SubcatalogRepository>(
    () => SubcatalogRepositoryImpl(remoteDataSource: sl()),
  );
  sl.registerLazySingleton(() => GetSubcatalogUseCase(sl()));
  sl.registerLazySingleton(() => GetCategoryChildrenUseCase(sl()));
  sl.registerFactory(() => SubcatalogBloc(
        getSubcatalog: sl(),
        getCategoryChildren: sl(),
        repository: sl(),
      ));
}

void _registerShopsFeature() {
  sl.registerLazySingleton<ShopsRemoteDataSource>(
    () => ShopsRemoteDataSourceImpl(dio: sl()),
  );
  sl.registerLazySingleton<ShopsRepository>(
    () => ShopsRepositoryImpl(remoteDataSource: sl()),
  );
  sl.registerLazySingleton(() => GetShopsUseCase(sl()));
  sl.registerFactory(() => ShopsBloc(getShops: sl()));
}

void _registerBonusesFeature() {
  sl.registerLazySingleton<BonusesRemoteDataSource>(
        () => BonusesRemoteDataSourceImpl(dio: sl()),
  );
  sl.registerLazySingleton<BonusesRepository>(
        () => BonusesRepositoryImpl(remoteDataSource: sl()),
  );
  sl.registerLazySingleton(() => GetBonusesHistoryUseCase(sl()));
  sl.registerFactory(() => BonusesBloc(getBonusesHistory: sl()));
}

void _registerFilterFeature() {
  sl.registerLazySingleton<FilterRemoteDataSource>(
    () => FilterRemoteDataSourceImpl(dio: sl()),
  );
  sl.registerLazySingleton<FilterRepository>(
    () => FilterRepositoryImpl(remoteDataSource: sl()),
  );
  sl.registerLazySingleton(() => GetFiltersUseCase(sl()));
  sl.registerFactory(() => FilterBloc(getFilters: sl()));
}

void _registerBrandFeature() {
  sl.registerLazySingleton<BrandRemoteDataSource>(
    () => BrandRemoteDataSourceImpl(dio: sl()),
  );
  sl.registerLazySingleton<BrandRepository>(
    () => BrandRepositoryImpl(remoteDataSource: sl()),
  );
  sl.registerLazySingleton(() => GetBrandUseCase(sl()));
  sl.registerFactory(() => BrandBloc(getBrand: sl()));
}

void _registerPromotionsFeature() {
  sl.registerLazySingleton<PromotionsRemoteDataSource>(
    () => PromotionsRemoteDataSourceImpl(dio: sl()),
  );
  sl.registerLazySingleton<PromotionsRepository>(
    () => PromotionsRepositoryImpl(remoteDataSource: sl()),
  );
  sl.registerLazySingleton(() => GetPromotionsUseCase(sl()));
  sl.registerLazySingleton(() => GetPromotionDetailUseCase(sl()));
  sl.registerFactory(() => PromotionsBloc(getPromotions: sl()));
  sl.registerFactory(() => PromotionDetailBloc(getPromotionDetail: sl()));
}

void _registerProductFeature() {
  sl.registerLazySingleton<ProductRemoteDataSource>(
    () => ProductRemoteDataSourceImpl(dio: sl()),
  );
  sl.registerLazySingleton<ProductRepository>(
    () => ProductRepositoryImpl(remoteDataSource: sl()),
  );
  sl.registerLazySingleton(() => GetProductUseCase(sl()));
  sl.registerFactory(() => ProductBloc(getProduct: sl()));
}

void _registerSearchFeature() {
  sl.registerLazySingleton<SearchRemoteDataSource>(
    () => SearchRemoteDataSourceImpl(dio: sl()),
  );
  sl.registerLazySingleton<SearchRepository>(
    () => SearchRepositoryImpl(remoteDataSource: sl()),
  );
  sl.registerLazySingleton(() => SearchProductsUseCase(sl()));
  sl.registerFactory(() {
    final cityCode = sl<CityLocalDataSource>().getCityCode() ?? 's1';
    return SearchBloc(searchProducts: sl(), regionId: cityCode);
  });
}
