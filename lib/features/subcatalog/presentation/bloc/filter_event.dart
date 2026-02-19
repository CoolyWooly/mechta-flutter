part of 'filter_bloc.dart';

abstract class FilterEvent extends Equatable {
  const FilterEvent();

  @override
  List<Object?> get props => [];
}

class FilterLoadRequested extends FilterEvent {
  final String slug;
  final Map<String, List<String>>? initialProperties;
  final double? initialMinPrice;
  final double? initialMaxPrice;

  const FilterLoadRequested({
    required this.slug,
    this.initialProperties,
    this.initialMinPrice,
    this.initialMaxPrice,
  });

  @override
  List<Object?> get props => [slug, initialProperties, initialMinPrice, initialMaxPrice];
}

class FilterPropertyToggled extends FilterEvent {
  final String propertySlug;
  final String itemSlug;

  const FilterPropertyToggled({
    required this.propertySlug,
    required this.itemSlug,
  });

  @override
  List<Object?> get props => [propertySlug, itemSlug];
}

class FilterMinPriceChanged extends FilterEvent {
  final double? price;

  const FilterMinPriceChanged(this.price);

  @override
  List<Object?> get props => [price];
}

class FilterMaxPriceChanged extends FilterEvent {
  final double? price;

  const FilterMaxPriceChanged(this.price);

  @override
  List<Object?> get props => [price];
}

class FilterReset extends FilterEvent {
  const FilterReset();
}
