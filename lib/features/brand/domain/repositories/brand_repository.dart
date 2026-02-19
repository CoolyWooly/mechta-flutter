import 'package:mechta_flutter/features/brand/domain/entities/brand_entity.dart';

abstract class BrandRepository {
  Future<BrandEntity> getBrand(String brand);
}
