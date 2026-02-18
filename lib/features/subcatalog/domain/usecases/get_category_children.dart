import 'package:mechta_flutter/core/usecase/usecase.dart';
import 'package:mechta_flutter/features/subcatalog/domain/entities/category_entity.dart';
import 'package:mechta_flutter/features/subcatalog/domain/repositories/subcatalog_repository.dart';

class GetCategoryChildrenUseCase extends UseCase<CategoryInfoEntity, String> {
  final SubcatalogRepository repository;

  GetCategoryChildrenUseCase(this.repository);

  @override
  Future<CategoryInfoEntity> call(String slug) {
    return repository.getCategory(slug);
  }
}
