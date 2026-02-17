import 'package:mechta_flutter/core/domain/entities/product_entity.dart';

abstract class ProductRepository {
  Future<ProductEntity> getProduct(int id);
}
