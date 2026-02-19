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
import 'package:mechta_flutter/features/cart/data/datasources/cart_local_data_source.dart';
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
import 'package:mechta_flutter/features/subcatalog/data/datasources/filter_remote_data_source.dart';
import 'package:mechta_flutter/features/subcatalog/data/repositories/filter_repository_impl.dart';
import 'package:mechta_flutter/features/subcatalog/domain/repositories/filter_repository.dart';
import 'package:mechta_flutter/features/subcatalog/domain/usecases/get_filters.dart';
import 'package:mechta_flutter/features/subcatalog/presentation/bloc/filter_bloc.dart';

// Product
import 'package:mechta_flutter/features/product/data/datasources/product_remote_data_source.dart';
import 'package:mechta_flutter/features/product/data/repositories/product_repository_impl.dart';
import 'package:mechta_flutter/features/product/domain/repositories/product_repository.dart';
import 'package:mechta_flutter/features/product/domain/usecases/get_product.dart';
import 'package:mechta_flutter/features/product/presentation/bloc/product_bloc.dart';

// Brand Detail
import 'package:mechta_flutter/features/brand_detail/data/datasources/brand_detail_remote_data_source.dart';
import 'package:mechta_flutter/features/brand_detail/data/repositories/brand_detail_repository_impl.dart';
import 'package:mechta_flutter/features/brand_detail/domain/repositories/brand_detail_repository.dart';
import 'package:mechta_flutter/features/brand_detail/domain/usecases/get_brand_detail.dart';
import 'package:mechta_flutter/features/brand_detail/presentation/bloc/brand_detail_bloc.dart';

// Promotions
import 'package:mechta_flutter/features/promotions/data/datasources/promotions_remote_data_source.dart';
import 'package:mechta_flutter/features/promotions/data/repositories/promotions_repository_impl.dart';
import 'package:mechta_flutter/features/promotions/domain/repositories/promotions_repository.dart';
import 'package:mechta_flutter/features/promotions/domain/usecases/get_promotion_detail.dart';
import 'package:mechta_flutter/features/promotions/domain/usecases/get_promotions.dart';
import 'package:mechta_flutter/features/promotions/presentation/bloc/promotion_detail_bloc.dart';
import 'package:mechta_flutter/features/promotions/presentation/bloc/promotions_bloc.dart';

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
  _registerBrandDetailFeature();
  _registerPromotionsFeature();
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
  sl.registerLazySingleton<CartLocalDataSource>(
    () => CartLocalDataSourceImpl(sharedPreferences: sl()),
  );
  sl.registerLazySingleton<CartRepository>(
    () => CartRepositoryImpl(localDataSource: sl()),
  );
  sl.registerLazySingleton(() => GetCartItemsUseCase(sl()));
  sl.registerFactory(() => CartBloc(getCartItems: sl()));
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
      ));
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

void _registerBrandDetailFeature() {
  sl.registerLazySingleton<BrandDetailRemoteDataSource>(
    () => BrandDetailRemoteDataSourceImpl(dio: sl()),
  );
  sl.registerLazySingleton<BrandDetailRepository>(
    () => BrandDetailRepositoryImpl(remoteDataSource: sl()),
  );
  sl.registerLazySingleton(() => GetBrandDetailUseCase(sl()));
  sl.registerFactory(() => BrandDetailBloc(getBrandDetail: sl()));
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
