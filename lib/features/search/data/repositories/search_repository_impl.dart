import 'package:mechta_flutter/features/search/data/datasources/search_remote_data_source.dart';
import 'package:mechta_flutter/features/search/domain/entities/search_entity.dart';
import 'package:mechta_flutter/features/search/domain/repositories/search_repository.dart';

class SearchRepositoryImpl implements SearchRepository {
  final SearchRemoteDataSource remoteDataSource;

  SearchRepositoryImpl({required this.remoteDataSource});

  @override
  Future<SearchResultEntity> search(String text, String regionId) async {
    final response = await remoteDataSource.autocomplete(text, regionId);
    return SearchResultEntity(
      text: response.text,
      correction: response.correction,
      chips: response.taps
          .map((t) => SearchChipEntity(label: t.label, searchText: t.searchText))
          .toList(),
      variants: response.variants
          .map((v) => SearchVariantEntity(text: v.text))
          .toList(),
      products: response.products
          .map((p) => SearchProductEntity(
                id: p.id,
                available: p.available,
                name: p.name,
                brand: p.brand,
                price: p.price,
                imageUrl: p.imageUrl,
                link: p.link,
                code: p.code,
              ))
          .toList(),
      categories: response.categories
          .map((c) => SearchCategoryEntity(
                id: c.id,
                name: c.name,
                direct: c.direct,
                link: c.link,
              ))
          .toList(),
    );
  }
}
