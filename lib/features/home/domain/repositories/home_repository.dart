import 'package:mechta_flutter/features/home/domain/entities/banner_entity.dart';

abstract class HomeRepository {
  Future<List<BannerEntity>> getBanners();
}
