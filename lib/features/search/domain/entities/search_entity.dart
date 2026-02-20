import 'package:equatable/equatable.dart';

class SearchResultEntity extends Equatable {
  final String text;
  final String correction;
  final List<SearchChipEntity> chips;
  final List<SearchVariantEntity> variants;
  final List<SearchProductEntity> products;
  final List<SearchCategoryEntity> categories;

  const SearchResultEntity({
    required this.text,
    required this.correction,
    required this.chips,
    required this.variants,
    required this.products,
    required this.categories,
  });

  @override
  List<Object?> get props => [text, correction, chips, variants, products, categories];
}

class SearchChipEntity extends Equatable {
  final String label;
  final String searchText;

  const SearchChipEntity({
    required this.label,
    required this.searchText,
  });

  @override
  List<Object?> get props => [label, searchText];
}

class SearchVariantEntity extends Equatable {
  final String text;

  const SearchVariantEntity({required this.text});

  @override
  List<Object?> get props => [text];
}

class SearchProductEntity extends Equatable {
  final String id;
  final bool available;
  final String name;
  final String brand;
  final String price;
  final String imageUrl;
  final String link;
  final String? code;

  const SearchProductEntity({
    required this.id,
    required this.available,
    required this.name,
    required this.brand,
    required this.price,
    required this.imageUrl,
    required this.link,
    this.code,
  });

  @override
  List<Object?> get props => [id, available, name, brand, price, imageUrl, link, code];
}

class SearchCategoryEntity extends Equatable {
  final String id;
  final String name;
  final bool direct;
  final String link;

  const SearchCategoryEntity({
    required this.id,
    required this.name,
    required this.direct,
    required this.link,
  });

  @override
  List<Object?> get props => [id, name, direct, link];
}
