import 'package:equatable/equatable.dart';
import 'package:mechta_flutter/core/usecase/usecase.dart';
import 'package:mechta_flutter/features/search/domain/entities/search_entity.dart';
import 'package:mechta_flutter/features/search/domain/repositories/search_repository.dart';

class SearchProductsUseCase extends UseCase<SearchResultEntity, SearchParams> {
  final SearchRepository repository;

  SearchProductsUseCase(this.repository);

  @override
  Future<SearchResultEntity> call(SearchParams params) {
    return repository.search(params.text, params.regionId);
  }
}

class SearchParams extends Equatable {
  final String text;
  final String regionId;

  const SearchParams({required this.text, required this.regionId});

  @override
  List<Object?> get props => [text, regionId];
}
