import 'package:mechta_flutter/features/subcatalog/domain/entities/subcatalog_products_entity.dart';
import 'package:mechta_flutter/features/subcatalog/domain/usecases/get_subcatalog_products.dart';

abstract class SubcatalogRepository {
  Future<SubcatalogProductsEntity> getProducts(SubcatalogParams params);
}
