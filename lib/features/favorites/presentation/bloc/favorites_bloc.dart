import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mechta_flutter/core/domain/entities/product_entity.dart';
import 'package:mechta_flutter/core/usecase/usecase.dart';
import 'package:mechta_flutter/features/favorites/domain/usecases/get_favorites.dart';
import 'package:mechta_flutter/features/favorites/domain/usecases/toggle_favorite.dart';

part 'favorites_event.dart';
part 'favorites_state.dart';

class FavoritesBloc extends Bloc<FavoritesEvent, FavoritesState> {
  final GetFavoritesUseCase _getFavorites;
  final ToggleFavoriteUseCase _toggleFavorite;

  FavoritesBloc({
    required GetFavoritesUseCase getFavorites,
    required ToggleFavoriteUseCase toggleFavorite,
  })  : _getFavorites = getFavorites,
        _toggleFavorite = toggleFavorite,
        super(const FavoritesState()) {
    on<FavoritesLoadRequested>(_onLoadRequested);
    on<FavoriteToggleRequested>(_onToggleRequested);
  }

  Future<void> _onLoadRequested(
    FavoritesLoadRequested event,
    Emitter<FavoritesState> emit,
  ) async {
    emit(state.copyWith(status: FavoritesStatus.loading));
    try {
      final favorites = await _getFavorites(NoParams());
      final ids = favorites
          .map((p) => p.id)
          .whereType<String>()
          .toSet();
      emit(state.copyWith(
        status: FavoritesStatus.success,
        favorites: favorites,
        favoriteIds: ids,
      ));
    } catch (e) {
      emit(state.copyWith(
        status: FavoritesStatus.failure,
        errorMessage: e.toString(),
      ));
    }
  }

  Future<void> _onToggleRequested(
    FavoriteToggleRequested event,
    Emitter<FavoritesState> emit,
  ) async {
    final wasFavorite = state.favoriteIds.contains(event.productId);
    // Optimistic update
    final newIds = Set<String>.from(state.favoriteIds);
    if (wasFavorite) {
      newIds.remove(event.productId);
    } else {
      newIds.add(event.productId);
    }
    final newFavorites = wasFavorite
        ? state.favorites.where((p) => p.id != event.productId).toList()
        : state.favorites;
    emit(state.copyWith(favoriteIds: newIds, favorites: newFavorites));

    try {
      await _toggleFavorite(event.productId);
    } catch (_) {
      // Revert on failure
      emit(state.copyWith(
        favoriteIds: state.favoriteIds,
        favorites: state.favorites,
      ));
    }
  }
}
