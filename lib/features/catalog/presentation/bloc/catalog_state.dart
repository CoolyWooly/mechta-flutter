part of 'catalog_bloc.dart';

enum CatalogStatus { initial, loading, success, failure }

class CatalogState extends Equatable {
  final CatalogStatus status;
  final List<CategoryEntity> categories;
  final List<BrandEntity> brands;
  final String? errorMessage;

  const CatalogState({
    this.status = CatalogStatus.initial,
    this.categories = const [],
    this.brands = const [],
    this.errorMessage,
  });

  CatalogState copyWith({
    CatalogStatus? status,
    List<CategoryEntity>? categories,
    List<BrandEntity>? brands,
    String? errorMessage,
  }) {
    return CatalogState(
      status: status ?? this.status,
      categories: categories ?? this.categories,
      brands: brands ?? this.brands,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }

  @override
  List<Object?> get props => [status, categories, brands, errorMessage];
}
