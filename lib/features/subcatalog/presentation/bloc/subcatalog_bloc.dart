import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mechta_flutter/core/domain/entities/product_entity.dart';
import 'package:mechta_flutter/features/subcatalog/domain/entities/category_entity.dart';
import 'package:mechta_flutter/features/subcatalog/domain/usecases/get_category_children.dart';
import 'package:mechta_flutter/features/subcatalog/domain/usecases/get_subcatalog.dart';

part 'subcatalog_event.dart';
part 'subcatalog_state.dart';

class SubcatalogBloc extends Bloc<SubcatalogEvent, SubcatalogState> {
  final GetSubcatalogUseCase _getSubcatalog;
  final GetCategoryChildrenUseCase _getCategoryChildren;

  SubcatalogBloc({
    required GetSubcatalogUseCase getSubcatalog,
    required GetCategoryChildrenUseCase getCategoryChildren,
  })  : _getSubcatalog = getSubcatalog,
        _getCategoryChildren = getCategoryChildren,
        super(const SubcatalogState()) {
    on<SubcatalogLoadRequested>(_onLoadRequested);
    on<SubcatalogNextPageRequested>(_onNextPageRequested);
    on<SubcatalogCategoryChildrenRequested>(_onCategoryChildrenRequested);
  }

  Future<void> _onLoadRequested(
    SubcatalogLoadRequested event,
    Emitter<SubcatalogState> emit,
  ) async {
    emit(state.copyWith(
      status: SubcatalogStatus.loading,
      slug: event.slug,
      minPrice: event.minPrice,
      maxPrice: event.maxPrice,
      orderBy: event.orderBy,
      direction: event.direction,
      properties: event.properties,
      products: const [],
      page: 1,
      hasReachedMax: false,
    ));
    try {
      final result = await _getSubcatalog(SubcatalogParams(
        slug: event.slug,
        page: event.page,
        minPrice: event.minPrice,
        maxPrice: event.maxPrice,
        orderBy: event.orderBy,
        direction: event.direction,
        properties: event.properties,
      ));
      emit(state.copyWith(
        status: SubcatalogStatus.success,
        products: result.products,
        page: event.page,
        totalCount: result.totalCount,
        hasReachedMax: result.products.length >= result.totalCount,
      ));
    } catch (e) {
      emit(state.copyWith(
        status: SubcatalogStatus.failure,
        errorMessage: e.toString(),
      ));
    }
  }

  Future<void> _onNextPageRequested(
    SubcatalogNextPageRequested event,
    Emitter<SubcatalogState> emit,
  ) async {
    if (state.hasReachedMax || state.status == SubcatalogStatus.loading) return;

    final nextPage = state.page + 1;
    emit(state.copyWith(status: SubcatalogStatus.loading));
    try {
      final result = await _getSubcatalog(SubcatalogParams(
        slug: state.slug,
        page: nextPage,
        minPrice: state.minPrice,
        maxPrice: state.maxPrice,
        orderBy: state.orderBy,
        direction: state.direction,
        properties: state.properties,
      ));
      final allProducts = [...state.products, ...result.products];
      emit(state.copyWith(
        status: SubcatalogStatus.success,
        products: allProducts,
        page: nextPage,
        totalCount: result.totalCount,
        hasReachedMax: allProducts.length >= result.totalCount,
      ));
    } catch (e) {
      emit(state.copyWith(
        status: SubcatalogStatus.failure,
        errorMessage: e.toString(),
      ));
    }
  }

  Future<void> _onCategoryChildrenRequested(
    SubcatalogCategoryChildrenRequested event,
    Emitter<SubcatalogState> emit,
  ) async {
    try {
      final info = await _getCategoryChildren(event.slug);
      emit(state.copyWith(
        children: info.children,
        categoryName: info.name,
      ));
    } catch (_) {
      // Silently ignore — children are optional
    }
  }
}
