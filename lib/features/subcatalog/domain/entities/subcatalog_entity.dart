import 'package:equatable/equatable.dart';
import 'package:mechta_flutter/core/domain/entities/product_entity.dart';

class SubcatalogEntity extends Equatable {
  final List<ProductEntity> products;
  final int totalCount;

  const SubcatalogEntity({
    required this.products,
    required this.totalCount,
  });

  @override
  List<Object?> get props => [products, totalCount];
}
