import 'package:equatable/equatable.dart';
import 'package:mechta_flutter/core/usecase/usecase.dart';
import 'package:mechta_flutter/features/subcatalog/domain/entities/subcatalog_products_entity.dart';
import 'package:mechta_flutter/features/subcatalog/domain/repositories/subcatalog_repository.dart';

class GetSubcatalogProductsUseCase
    extends UseCase<SubcatalogProductsEntity, SubcatalogParams> {
  final SubcatalogRepository repository;

  GetSubcatalogProductsUseCase(this.repository);

  @override
  Future<SubcatalogProductsEntity> call(SubcatalogParams params) {
    return repository.getProducts(params);
  }
}

class SubcatalogParams extends Equatable {
  final String slug;
  final int page;
  final int pageSize;
  final double? minPrice;
  final double? maxPrice;
  final String? orderBy;
  final String? direction;
  final Map<String, List<String>>? properties;

  const SubcatalogParams({
    required this.slug,
    this.page = 1,
    this.pageSize = 20,
    this.minPrice,
    this.maxPrice,
    this.orderBy,
    this.direction,
    this.properties,
  });

  @override
  List<Object?> get props => [
        slug,
        page,
        pageSize,
        minPrice,
        maxPrice,
        orderBy,
        direction,
        properties,
      ];
}
