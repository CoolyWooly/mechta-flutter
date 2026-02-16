import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:mechta_flutter/core/network/dio_client.dart';

// Home
import 'package:mechta_flutter/features/home/data/datasources/home_remote_data_source.dart';
import 'package:mechta_flutter/features/home/data/repositories/home_repository_impl.dart';
import 'package:mechta_flutter/features/home/domain/repositories/home_repository.dart';
import 'package:mechta_flutter/features/home/domain/usecases/get_banners.dart';
import 'package:mechta_flutter/features/home/domain/usecases/get_news.dart';
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
import 'package:mechta_flutter/features/favorites/data/repositories/favorites_repository_impl.dart';
import 'package:mechta_flutter/features/favorites/domain/repositories/favorites_repository.dart';
import 'package:mechta_flutter/features/favorites/domain/usecases/get_favorites.dart';
import 'package:mechta_flutter/features/favorites/presentation/bloc/favorites_bloc.dart';

// Profile
import 'package:mechta_flutter/features/profile/data/datasources/profile_local_data_source.dart';
import 'package:mechta_flutter/features/profile/data/repositories/profile_repository_impl.dart';
import 'package:mechta_flutter/features/profile/domain/repositories/profile_repository.dart';
import 'package:mechta_flutter/features/profile/domain/usecases/get_profile.dart';
import 'package:mechta_flutter/features/profile/presentation/bloc/profile_bloc.dart';

// Product
import 'package:mechta_flutter/features/product/data/datasources/product_remote_data_source.dart';
import 'package:mechta_flutter/features/product/data/repositories/product_repository_impl.dart';
import 'package:mechta_flutter/features/product/domain/repositories/product_repository.dart';
import 'package:mechta_flutter/features/product/domain/usecases/get_product.dart';
import 'package:mechta_flutter/features/product/presentation/bloc/product_bloc.dart';

final sl = GetIt.instance;

Future<void> configureDependencies() async {
  // ---- External ----
  final sharedPreferences = await SharedPreferences.getInstance();
  sl.registerLazySingleton<SharedPreferences>(() => sharedPreferences);

  // ---- Core ----
  sl.registerLazySingleton<Dio>(() => createDio());

  // ---- Features ----
  _registerHomeFeature();
  _registerCatalogFeature();
  _registerCartFeature();
  _registerFavoritesFeature();
  _registerProfileFeature();
  _registerProductFeature();
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
  sl.registerFactory(() => HomeBloc(
        getBanners: sl(),
        getPopularBrands: sl(),
        getPopularCategories: sl(),
        getNews: sl(),
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
  sl.registerLazySingleton<FavoritesRepository>(
    () => FavoritesRepositoryImpl(localDataSource: sl()),
  );
  sl.registerLazySingleton(() => GetFavoritesUseCase(sl()));
  sl.registerFactory(() => FavoritesBloc(getFavorites: sl()));
}

void _registerProfileFeature() {
  sl.registerLazySingleton<ProfileLocalDataSource>(
    () => ProfileLocalDataSourceImpl(sharedPreferences: sl()),
  );
  sl.registerLazySingleton<ProfileRepository>(
    () => ProfileRepositoryImpl(localDataSource: sl()),
  );
  sl.registerLazySingleton(() => GetProfileUseCase(sl()));
  sl.registerFactory(() => ProfileBloc(getProfile: sl()));
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
