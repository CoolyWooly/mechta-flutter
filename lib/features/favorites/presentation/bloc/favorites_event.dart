part of 'favorites_bloc.dart';

abstract class FavoritesEvent extends Equatable {
  const FavoritesEvent();

  @override
  List<Object?> get props => [];
}

class FavoritesLoadRequested extends FavoritesEvent {
  const FavoritesLoadRequested();
}

class FavoriteToggleRequested extends FavoritesEvent {
  final String productId;

  const FavoriteToggleRequested(this.productId);

  @override
  List<Object?> get props => [productId];
}
