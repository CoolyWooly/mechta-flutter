part of 'search_bloc.dart';

enum SearchStatus { initial, loading, success, failure }

class SearchState extends Equatable {
  final SearchStatus status;
  final String query;
  final List<SearchChipEntity> chips;
  final List<SearchVariantEntity> variants;
  final List<SearchProductEntity> products;
  final List<SearchCategoryEntity> categories;
  final String? correction;
  final String? errorMessage;

  const SearchState({
    this.status = SearchStatus.initial,
    this.query = '',
    this.chips = const [],
    this.variants = const [],
    this.products = const [],
    this.categories = const [],
    this.correction,
    this.errorMessage,
  });

  SearchState copyWith({
    SearchStatus? status,
    String? query,
    List<SearchChipEntity>? chips,
    List<SearchVariantEntity>? variants,
    List<SearchProductEntity>? products,
    List<SearchCategoryEntity>? categories,
    String? correction,
    String? errorMessage,
  }) {
    return SearchState(
      status: status ?? this.status,
      query: query ?? this.query,
      chips: chips ?? this.chips,
      variants: variants ?? this.variants,
      products: products ?? this.products,
      categories: categories ?? this.categories,
      correction: correction ?? this.correction,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }

  @override
  List<Object?> get props => [
        status,
        query,
        chips,
        variants,
        products,
        categories,
        correction,
        errorMessage,
      ];
}
