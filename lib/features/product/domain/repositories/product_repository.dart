import 'package:mechta_flutter/features/product/domain/entities/product_entity.dart';

abstract class ProductRepository {
  Future<ProductEntity> getProduct(int id);
}
