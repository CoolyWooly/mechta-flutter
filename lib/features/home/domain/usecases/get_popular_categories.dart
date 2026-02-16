import 'package:mechta_flutter/core/usecase/usecase.dart';
import 'package:mechta_flutter/features/home/domain/entities/popular_category_entity.dart';
import 'package:mechta_flutter/features/home/domain/repositories/home_repository.dart';

class GetPopularCategoriesUseCase
    extends UseCase<List<PopularCategoryEntity>, NoParams> {
  final HomeRepository repository;

  GetPopularCategoriesUseCase(this.repository);

  @override
  Future<List<PopularCategoryEntity>> call(NoParams params) {
    return repository.getPopularCategories();
  }
}
