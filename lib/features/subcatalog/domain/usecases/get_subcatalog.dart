import 'package:equatable/equatable.dart';
import 'package:mechta_flutter/core/usecase/usecase.dart';
import 'package:mechta_flutter/features/subcatalog/domain/entities/subcatalog_entity.dart';
import 'package:mechta_flutter/features/subcatalog/domain/repositories/subcatalog_repository.dart';

class GetSubcatalogUseCase extends UseCase<SubcatalogEntity, SubcatalogParams> {
  final SubcatalogRepository repository;

  GetSubcatalogUseCase(this.repository);

  @override
  Future<SubcatalogEntity> call(SubcatalogParams params) {
    return repository.getSubcatalog(params);
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
  final String? query;

  const SubcatalogParams({
    required this.slug,
    this.page = 1,
    this.pageSize = 20,
    this.minPrice,
    this.maxPrice,
    this.orderBy,
    this.direction,
    this.properties,
    this.query,
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
        query,
      ];
}
