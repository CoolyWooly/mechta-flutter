part of 'subcatalog_bloc.dart';

enum SubcatalogStatus { initial, loading, success, failure }

class SubcatalogState extends Equatable {
  final SubcatalogStatus status;
  final List<ProductEntity> products;
  final int totalCount;
  final int page;
  final bool hasReachedMax;
  final String slug;
  final double? minPrice;
  final double? maxPrice;
  final String? orderBy;
  final String? direction;
  final Map<String, List<String>>? properties;
  final String? errorMessage;
  final List<CategoryChildEntity> children;
  final String? categoryName;

  const SubcatalogState({
    this.status = SubcatalogStatus.initial,
    this.products = const [],
    this.totalCount = 0,
    this.page = 1,
    this.hasReachedMax = false,
    this.slug = '',
    this.minPrice,
    this.maxPrice,
    this.orderBy,
    this.direction,
    this.properties,
    this.errorMessage,
    this.children = const [],
    this.categoryName,
  });

  SubcatalogState copyWith({
    SubcatalogStatus? status,
    List<ProductEntity>? products,
    int? totalCount,
    int? page,
    bool? hasReachedMax,
    String? slug,
    double? minPrice,
    double? maxPrice,
    String? orderBy,
    String? direction,
    Map<String, List<String>>? properties,
    String? errorMessage,
    List<CategoryChildEntity>? children,
    String? categoryName,
  }) {
    return SubcatalogState(
      status: status ?? this.status,
      products: products ?? this.products,
      totalCount: totalCount ?? this.totalCount,
      page: page ?? this.page,
      hasReachedMax: hasReachedMax ?? this.hasReachedMax,
      slug: slug ?? this.slug,
      minPrice: minPrice ?? this.minPrice,
      maxPrice: maxPrice ?? this.maxPrice,
      orderBy: orderBy ?? this.orderBy,
      direction: direction ?? this.direction,
      properties: properties ?? this.properties,
      errorMessage: errorMessage ?? this.errorMessage,
      children: children ?? this.children,
      categoryName: categoryName ?? this.categoryName,
    );
  }

  @override
  List<Object?> get props => [
        status,
        products,
        totalCount,
        page,
        hasReachedMax,
        slug,
        minPrice,
        maxPrice,
        orderBy,
        direction,
        properties,
        errorMessage,
        children,
        categoryName,
      ];
}
