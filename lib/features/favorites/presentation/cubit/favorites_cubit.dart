import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mechta_flutter/features/favorites/domain/usecases/toggle_favorite.dart';
import 'package:mechta_flutter/features/favorites/domain/repositories/favorites_repository.dart';

class FavoritesCubitState {
  final Set<String> favoriteIds;

  const FavoritesCubitState({
    this.favoriteIds = const {},
  });

  bool isFavorite(String? productId) {
    if (productId == null) return false;
    return favoriteIds.contains(productId);
  }

  FavoritesCubitState copyWith({
    Set<String>? favoriteIds,
  }) {
    return FavoritesCubitState(
      favoriteIds: favoriteIds ?? this.favoriteIds,
    );
  }
}

class FavoritesCubit extends Cubit<FavoritesCubitState> {
  final FavoritesRepository repository;
  final ToggleFavoriteUseCase toggleFavoriteUseCase;
  
  FavoritesCubit({
    required this.repository,
    required this.toggleFavoriteUseCase,
  }) : super(const FavoritesCubitState());

  void init() {
    // В идеале repository должен отдавать синхронно из кэша (SharedPreferences)
    // Но так как у нас нет прямого метода getFavoriteIds в domain, мы можем
    // либо добавить его, либо просто загружать избранное с сервера.
    // Пока сделаем загрузку при старте или инициализацию через LocalDataSource.
  }

  Future<void> loadFavorites() async {
    try {
      final favorites = await repository.getFavorites();
      final ids = favorites.map((e) => e.id).whereType<String>().toSet();
      emit(state.copyWith(favoriteIds: ids));
    } catch (_) {
      // Игнорируем ошибку при начальной загрузке
    }
  }

  Future<void> toggleFavorite(String productId) async {
    // Optimistic update
    final currentIds = Set<String>.from(state.favoriteIds);
    final isFav = currentIds.contains(productId);
    
    if (isFav) {
      currentIds.remove(productId);
    } else {
      currentIds.add(productId);
    }
    
    emit(state.copyWith(favoriteIds: currentIds));
    
    try {
      await toggleFavoriteUseCase(productId);
      // Если нужно, можем перечитать актуальный стейт, 
      // но optimistic update уже отразил изменения.
    } catch (_) {
      // Rollback on error
      final revertedIds = Set<String>.from(state.favoriteIds);
      if (isFav) {
        revertedIds.add(productId);
      } else {
        revertedIds.remove(productId);
      }
      emit(state.copyWith(favoriteIds: revertedIds));
    }
  }
}
