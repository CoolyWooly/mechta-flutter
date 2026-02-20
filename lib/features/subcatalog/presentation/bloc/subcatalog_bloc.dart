import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mechta_flutter/core/domain/entities/product_entity.dart';
import 'package:mechta_flutter/features/cart/domain/repositories/cart_repository.dart';
import 'package:mechta_flutter/features/subcatalog/domain/entities/category_entity.dart';
import 'package:mechta_flutter/features/subcatalog/domain/repositories/subcatalog_repository.dart';
import 'package:mechta_flutter/features/subcatalog/domain/usecases/get_category_children.dart';
import 'package:mechta_flutter/features/subcatalog/domain/usecases/get_subcatalog.dart';

part 'subcatalog_event.dart';
part 'subcatalog_state.dart';

class SubcatalogBloc extends Bloc<SubcatalogEvent, SubcatalogState> {
  final GetSubcatalogUseCase _getSubcatalog;
  final GetCategoryChildrenUseCase _getCategoryChildren;
  final SubcatalogRepository _repository;
  final CartRepository _cartRepository;

  SubcatalogBloc({
    required GetSubcatalogUseCase getSubcatalog,
    required GetCategoryChildrenUseCase getCategoryChildren,
    required SubcatalogRepository repository,
    required CartRepository cartRepository,
  })  : _getSubcatalog = getSubcatalog,
        _getCategoryChildren = getCategoryChildren,
        _repository = repository,
        _cartRepository = cartRepository,
        super(const SubcatalogState()) {
    on<SubcatalogLoadRequested>(_onLoadRequested);
    on<SubcatalogNextPageRequested>(_onNextPageRequested);
    on<SubcatalogCategoryChildrenRequested>(_onCategoryChildrenRequested);
    on<SubcatalogSearchCategoryChanged>(_onSearchCategoryChanged);
    on<SubcatalogAddToCartRequested>(_onAddToCartRequested);
  }

  Map<String, int> _loadCartQuantities() {
    try {
      return _cartRepository.getCartProductQuantities();
    } catch (_) {
      return {};
    }
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
      query: event.query,
      products: const [],
      page: 1,
      hasReachedMax: false,
    ));
    try {
      var slug = event.slug;

      // If coming from search, fetch available categories
      if (event.query != null && event.query!.isNotEmpty) {
        final searchResult = await _repository.searchCategory(event.query!);
        if (slug == 'search-results' && searchResult.slug != null && searchResult.slug!.isNotEmpty) {
          slug = searchResult.slug!;
        }
        emit(state.copyWith(
          slug: slug,
          categoryName: event.query,
          availableCategories: searchResult.availableCategories,
        ));
      }

      final result = await _getSubcatalog(SubcatalogParams(
        slug: slug,
        page: event.page,
        minPrice: event.minPrice,
        maxPrice: event.maxPrice,
        orderBy: event.orderBy,
        direction: event.direction,
        properties: event.properties,
        query: event.query,
      ));
      emit(state.copyWith(
        status: SubcatalogStatus.success,
        products: result.products,
        page: event.page,
        totalCount: result.totalCount,
        hasReachedMax: result.products.length >= result.totalCount,
        cartProductQuantities: _loadCartQuantities(),
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
        query: state.query,
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

  Future<void> _onSearchCategoryChanged(
    SubcatalogSearchCategoryChanged event,
    Emitter<SubcatalogState> emit,
  ) async {
    emit(state.copyWith(
      status: SubcatalogStatus.loading,
      slug: event.slug,
      products: const [],
      page: 1,
      hasReachedMax: false,
    ));
    try {
      final result = await _getSubcatalog(SubcatalogParams(
        slug: event.slug,
        page: 1,
        query: state.query,
      ));
      emit(state.copyWith(
        status: SubcatalogStatus.success,
        products: result.products,
        page: 1,
        totalCount: result.totalCount,
        hasReachedMax: result.products.length >= result.totalCount,
        cartProductQuantities: _loadCartQuantities(),
      ));
    } catch (e) {
      emit(state.copyWith(
        status: SubcatalogStatus.failure,
        errorMessage: e.toString(),
      ));
    }
  }

  Future<void> _onAddToCartRequested(
    SubcatalogAddToCartRequested event,
    Emitter<SubcatalogState> emit,
  ) async {
    // Optimistic update
    final updatedQuantities = Map<String, int>.from(state.cartProductQuantities);
    updatedQuantities[event.productId.toString()] = 1;
    emit(state.copyWith(cartProductQuantities: updatedQuantities));
    
    try {
      await _cartRepository.addToCart(event.productId);
      // Refresh cart quantities from local storage after successful add
      emit(state.copyWith(cartProductQuantities: _loadCartQuantities()));
    } catch (_) {
      // Rollback on error
      final rolledBack = Map<String, int>.from(state.cartProductQuantities);
      rolledBack.remove(event.productId.toString());
      emit(state.copyWith(cartProductQuantities: rolledBack));
    }
  }
}

