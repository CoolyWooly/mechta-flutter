import 'package:mechta_flutter/core/error/exceptions.dart';
import 'package:mechta_flutter/features/filter/data/datasources/filter_remote_data_source.dart';
import 'package:mechta_flutter/features/filter/domain/entities/filter_entity.dart';
import 'package:mechta_flutter/features/filter/domain/repositories/filter_repository.dart';
import 'package:mechta_flutter/features/filter/domain/usecases/get_filters.dart';

class FilterRepositoryImpl implements FilterRepository {
  final FilterRemoteDataSource remoteDataSource;

  FilterRepositoryImpl({required this.remoteDataSource});

  @override
  Future<FiltersEntity> getFilters(FilterParams params) async {
    try {
      final response = await remoteDataSource.getFilters(params);

      final properties = response.properties
              ?.where((p) => p.name != null && p.slug != null)
              .map((p) => FilterPropertyEntity(
                    name: p.name!,
                    slug: p.slug!,
                    type: p.type,
                    items: p.items
                            ?.where((i) => i.value != null && i.slug != null)
                            .map((i) => FilterItemEntity(
                                  value: i.value!,
                                  slug: i.slug!,
                                  count: i.count ?? 0,
                                ))
                            .toList() ??
                        const [],
                  ))
              .toList() ??
          const [];

      return FiltersEntity(
        totalCount: response.totalCount ?? 0,
        priceRange: response.priceRange != null
            ? PriceRangeEntity(
                minPrice: response.priceRange!.minPrice,
                maxPrice: response.priceRange!.maxPrice,
              )
            : null,
        properties: properties,
      );
    } on ServerException {
      rethrow;
    }
  }
}
