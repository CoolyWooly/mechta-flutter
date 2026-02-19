import 'package:mechta_flutter/features/shops/domain/entities/shops_entity.dart';

abstract class ShopsRepository {
  Future<List<CityShopsEntity>> getShops();
}
