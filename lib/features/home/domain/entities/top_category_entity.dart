import 'package:equatable/equatable.dart';
import 'package:mechta_flutter/core/domain/entities/product_category_entity.dart';
import 'package:mechta_flutter/core/domain/entities/product_detail_entity.dart';

class TopCategoryEntity extends Equatable {
  final ProductCategoryEntity? category;
  final List<ProductDetailEntity> products;

  const TopCategoryEntity({
    this.category,
    this.products = const [],
  });

  @override
  List<Object?> get props => [category, products];
}
