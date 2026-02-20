import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mechta_flutter/features/search/domain/entities/search_entity.dart';
import 'package:mechta_flutter/features/search/domain/usecases/search_products.dart';

part 'search_event.dart';
part 'search_state.dart';

class SearchBloc extends Bloc<SearchEvent, SearchState> {
  final SearchProductsUseCase _searchProducts;
  final String regionId;

  Timer? _debounce;

  SearchBloc({
    required SearchProductsUseCase searchProducts,
    required this.regionId,
  })  : _searchProducts = searchProducts,
        super(const SearchState()) {
    on<SearchQueryChanged>(_onQueryChanged);
    on<SearchChipTapped>(_onChipTapped);
  }

  Future<void> _onQueryChanged(
    SearchQueryChanged event,
    Emitter<SearchState> emit,
  ) async {
    _debounce?.cancel();

    final text = event.text.trim();

    emit(state.copyWith(query: text, status: SearchStatus.loading));

    final completer = Completer<void>();
    _debounce = Timer(const Duration(milliseconds: 400), () async {
      try {
        final result = await _searchProducts(
          SearchParams(text: text, regionId: regionId),
        );
        if (!isClosed) {
          // Only emit if the query hasn't changed while we were waiting
          if (state.query == text) {
            emit(state.copyWith(
              status: SearchStatus.success,
              chips: result.chips,
              variants: result.variants,
              products: result.products,
              categories: result.categories,
              correction: result.correction.isNotEmpty ? result.correction : null,
            ));
          }
        }
      } catch (e) {
        if (!isClosed && state.query == text) {
          emit(state.copyWith(
            status: SearchStatus.failure,
            errorMessage: e.toString(),
          ));
        }
      }
      completer.complete();
    });
    await completer.future;
  }

  Future<void> _onChipTapped(
    SearchChipTapped event,
    Emitter<SearchState> emit,
  ) async {
    emit(state.copyWith(
      query: event.searchText,
      status: SearchStatus.loading,
    ));
    try {
      final result = await _searchProducts(
        SearchParams(text: event.searchText, regionId: regionId),
      );
      emit(state.copyWith(
        status: SearchStatus.success,
        chips: result.chips,
        variants: result.variants,
        products: result.products,
        categories: result.categories,
        correction: result.correction.isNotEmpty ? result.correction : null,
      ));
    } catch (e) {
      emit(state.copyWith(
        status: SearchStatus.failure,
        errorMessage: e.toString(),
      ));
    }
  }

  @override
  Future<void> close() {
    _debounce?.cancel();
    return super.close();
  }
}
