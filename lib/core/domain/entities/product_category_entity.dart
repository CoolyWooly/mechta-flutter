import 'package:equatable/equatable.dart';

class ProductCategoryEntity extends Equatable {
  final String? name;
  final String? slug;
  final int? level;

  const ProductCategoryEntity({
    this.name,
    this.slug,
    this.level,
  });

  @override
  List<Object?> get props => [name, slug, level];
}
