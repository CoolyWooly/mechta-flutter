import 'package:mechta_flutter/features/search/domain/entities/search_entity.dart';

abstract class SearchRepository {
  Future<SearchResultEntity> search(String text, String regionId);
}
