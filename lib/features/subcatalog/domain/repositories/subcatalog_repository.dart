import 'package:mechta_flutter/features/subcatalog/domain/entities/category_entity.dart';
import 'package:mechta_flutter/features/subcatalog/domain/entities/subcatalog_entity.dart';
import 'package:mechta_flutter/features/subcatalog/domain/usecases/get_subcatalog.dart';

abstract class SubcatalogRepository {
  Future<SubcatalogEntity> getSubcatalog(SubcatalogParams params);
  Future<CategoryInfoEntity> getCategory(String slug);
  Future<SearchCategoryResult> searchCategory(String query);
}

class SearchCategoryResult {
  final String? slug;
  final List<AvailableCategoryEntity> availableCategories;

  const SearchCategoryResult({
    this.slug,
    this.availableCategories = const [],
  });
}
