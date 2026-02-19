import 'package:mechta_flutter/features/subcatalog/domain/entities/filter_entity.dart';
import 'package:mechta_flutter/features/subcatalog/domain/usecases/get_filters.dart';

abstract class FilterRepository {
  Future<FiltersEntity> getFilters(FilterParams params);
}
