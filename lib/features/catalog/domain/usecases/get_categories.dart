import 'package:mechta_flutter/core/usecase/usecase.dart';
import 'package:mechta_flutter/features/catalog/domain/entities/category_entity.dart';
import 'package:mechta_flutter/features/catalog/domain/repositories/catalog_repository.dart';

class GetCategoriesUseCase extends UseCase<List<CategoryEntity>, NoParams> {
  final CatalogRepository repository;

  GetCategoriesUseCase(this.repository);

  @override
  Future<List<CategoryEntity>> call(NoParams params) {
    return repository.getCategories();
  }
}
