import 'package:equatable/equatable.dart';
import 'package:mechta_flutter/core/usecase/usecase.dart';
import 'package:mechta_flutter/features/filter/domain/entities/filter_entity.dart';
import 'package:mechta_flutter/features/filter/domain/repositories/filter_repository.dart';

class GetFiltersUseCase extends UseCase<FiltersEntity, FilterParams> {
  final FilterRepository repository;

  GetFiltersUseCase(this.repository);

  @override
  Future<FiltersEntity> call(FilterParams params) => repository.getFilters(params);
}

class FilterParams extends Equatable {
  final String slug;
  final String? query;
  final Map<String, List<String>>? properties;
  final int? minPrice;
  final int? maxPrice;

  const FilterParams({
    required this.slug,
    this.query,
    this.properties,
    this.minPrice,
    this.maxPrice,
  });

  @override
  List<Object?> get props => [slug, query, properties, minPrice, maxPrice];
}
