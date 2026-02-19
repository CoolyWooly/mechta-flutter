import 'package:equatable/equatable.dart';

class FiltersEntity extends Equatable {
  final int totalCount;
  final PriceRangeEntity? priceRange;
  final List<FilterPropertyEntity> properties;

  const FiltersEntity({
    required this.totalCount,
    this.priceRange,
    this.properties = const [],
  });

  @override
  List<Object?> get props => [totalCount, priceRange, properties];
}

class PriceRangeEntity extends Equatable {
  final int? minPrice;
  final int? maxPrice;

  const PriceRangeEntity({this.minPrice, this.maxPrice});

  @override
  List<Object?> get props => [minPrice, maxPrice];
}

class FilterPropertyEntity extends Equatable {
  final String name;
  final String slug;
  final String? type;
  final List<FilterItemEntity> items;

  const FilterPropertyEntity({
    required this.name,
    required this.slug,
    this.type,
    this.items = const [],
  });

  @override
  List<Object?> get props => [name, slug, type, items];
}

class FilterItemEntity extends Equatable {
  final String value;
  final String slug;
  final int count;

  const FilterItemEntity({
    required this.value,
    required this.slug,
    required this.count,
  });

  @override
  List<Object?> get props => [value, slug, count];
}

class FilterResult {
  final Map<String, List<String>>? properties;
  final double? minPrice;
  final double? maxPrice;

  const FilterResult({this.properties, this.minPrice, this.maxPrice});

  bool get hasActiveFilters =>
      (properties?.isNotEmpty ?? false) ||
      minPrice != null ||
      maxPrice != null;
}
