import 'package:mechta_flutter/features/filter/domain/entities/filter_entity.dart';
import 'package:mechta_flutter/features/filter/domain/usecases/get_filters.dart';

abstract class FilterRepository {
  Future<FiltersEntity> getFilters(FilterParams params);
}
