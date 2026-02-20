part of 'search_bloc.dart';

abstract class SearchEvent extends Equatable {
  const SearchEvent();

  @override
  List<Object?> get props => [];
}

class SearchQueryChanged extends SearchEvent {
  final String text;

  const SearchQueryChanged(this.text);

  @override
  List<Object?> get props => [text];
}

class SearchChipTapped extends SearchEvent {
  final String searchText;

  const SearchChipTapped(this.searchText);

  @override
  List<Object?> get props => [searchText];
}
