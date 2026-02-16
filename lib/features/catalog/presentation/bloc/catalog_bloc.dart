import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mechta_flutter/core/usecase/usecase.dart';
import 'package:mechta_flutter/features/catalog/domain/entities/brand_entity.dart';
import 'package:mechta_flutter/features/catalog/domain/entities/category_entity.dart';
import 'package:mechta_flutter/features/catalog/domain/usecases/get_categories.dart';
import 'package:mechta_flutter/features/catalog/domain/usecases/get_popular_brands.dart';

part 'catalog_event.dart';
part 'catalog_state.dart';

class CatalogBloc extends Bloc<CatalogEvent, CatalogState> {
  final GetCategoriesUseCase _getCategories;
  final GetPopularBrandsUseCase _getPopularBrands;

  CatalogBloc({
    required GetCategoriesUseCase getCategories,
    required GetPopularBrandsUseCase getPopularBrands,
  })  : _getCategories = getCategories,
        _getPopularBrands = getPopularBrands,
        super(const CatalogState()) {
    on<CatalogLoadRequested>(_onLoadRequested);
  }

  Future<void> _onLoadRequested(
    CatalogLoadRequested event,
    Emitter<CatalogState> emit,
  ) async {
    emit(state.copyWith(status: CatalogStatus.loading));
    try {
      final results = await Future.wait([
        _getCategories(NoParams()),
        _getPopularBrands(NoParams()),
      ]);
      final categories = results[0] as List<CategoryEntity>;
      final brands = results[1] as List<BrandEntity>;

      emit(state.copyWith(
        status: CatalogStatus.success,
        categories: categories,
        brands: brands,
      ));
    } catch (e) {
      emit(state.copyWith(
        status: CatalogStatus.failure,
        errorMessage: e.toString(),
      ));
    }
  }
}
