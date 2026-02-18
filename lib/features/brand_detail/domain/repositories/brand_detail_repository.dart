import 'package:mechta_flutter/features/brand_detail/domain/entities/brand_detail_entity.dart';

abstract class BrandDetailRepository {
  Future<BrandDetailEntity> getBrandDetail(String brand);
}
