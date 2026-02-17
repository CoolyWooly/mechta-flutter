part of 'subcatalog_bloc.dart';

abstract class SubcatalogEvent extends Equatable {
  const SubcatalogEvent();

  @override
  List<Object?> get props => [];
}

class SubcatalogLoadRequested extends SubcatalogEvent {
  final String slug;
  final int page;
  final double? minPrice;
  final double? maxPrice;
  final String? orderBy;
  final String? direction;
  final Map<String, List<String>>? properties;

  const SubcatalogLoadRequested({
    required this.slug,
    this.page = 1,
    this.minPrice,
    this.maxPrice,
    this.orderBy,
    this.direction,
    this.properties,
  });

  @override
  List<Object?> get props => [slug, page, minPrice, maxPrice, orderBy, direction, properties];
}

class SubcatalogNextPageRequested extends SubcatalogEvent {
  const SubcatalogNextPageRequested();
}
