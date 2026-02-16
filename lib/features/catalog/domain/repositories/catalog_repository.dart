import 'package:mechta_flutter/features/catalog/domain/entities/brand_entity.dart';
import 'package:mechta_flutter/features/catalog/domain/entities/category_entity.dart';

abstract class CatalogRepository {
  Future<List<CategoryEntity>> getCategories();
  Future<List<BrandEntity>> getPopularBrands();
}
