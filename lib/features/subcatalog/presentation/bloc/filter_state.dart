part of 'filter_bloc.dart';

enum FilterStatus { initial, loading, success, failure }

class FilterState extends Equatable {
  final FilterStatus status;
  final String slug;
  final int totalCount;
  final PriceRangeEntity? priceRange;
  final List<FilterPropertyEntity> properties;
  final Map<String, List<String>> selectedProperties;
  final double? selectedMinPrice;
  final double? selectedMaxPrice;
  final String? errorMessage;

  const FilterState({
    this.status = FilterStatus.initial,
    this.slug = '',
    this.totalCount = 0,
    this.priceRange,
    this.properties = const [],
    this.selectedProperties = const {},
    this.selectedMinPrice,
    this.selectedMaxPrice,
    this.errorMessage,
  });

  bool isPropertySelected(String propertySlug, String itemSlug) {
    return selectedProperties[propertySlug]?.contains(itemSlug) ?? false;
  }

  int get activeFilterCount {
    int count = 0;
    count += selectedProperties.values.fold(0, (sum, v) => sum + v.length);
    if (selectedMinPrice != null) count++;
    if (selectedMaxPrice != null) count++;
    return count;
  }

  FilterResult toResult() => FilterResult(
        properties: selectedProperties.isEmpty ? null : Map.from(selectedProperties),
        minPrice: selectedMinPrice,
        maxPrice: selectedMaxPrice,
      );

  FilterState copyWith({
    FilterStatus? status,
    String? slug,
    int? totalCount,
    PriceRangeEntity? priceRange,
    List<FilterPropertyEntity>? properties,
    Map<String, List<String>>? selectedProperties,
    String? errorMessage,
  }) {
    return FilterState(
      status: status ?? this.status,
      slug: slug ?? this.slug,
      totalCount: totalCount ?? this.totalCount,
      priceRange: priceRange ?? this.priceRange,
      properties: properties ?? this.properties,
      selectedProperties: selectedProperties ?? this.selectedProperties,
      selectedMinPrice: selectedMinPrice,
      selectedMaxPrice: selectedMaxPrice,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }

  @override
  List<Object?> get props => [
        status,
        slug,
        totalCount,
        priceRange,
        properties,
        selectedProperties,
        selectedMinPrice,
        selectedMaxPrice,
        errorMessage,
      ];
}
