import 'package:equatable/equatable.dart';
import 'package:mechta_flutter/core/domain/entities/product_entity.dart';

class SubcatalogProductsEntity extends Equatable {
  final List<ProductEntity> products;
  final int totalCount;

  const SubcatalogProductsEntity({
    required this.products,
    required this.totalCount,
  });

  @override
  List<Object?> get props => [products, totalCount];
}
