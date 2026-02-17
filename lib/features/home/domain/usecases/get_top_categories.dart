import 'package:mechta_flutter/core/usecase/usecase.dart';
import 'package:mechta_flutter/features/home/domain/entities/top_category_entity.dart';
import 'package:mechta_flutter/features/home/domain/repositories/home_repository.dart';

class GetTopCategoriesUseCase extends UseCase<List<TopCategoryEntity>, NoParams> {
  final HomeRepository repository;

  GetTopCategoriesUseCase(this.repository);

  @override
  Future<List<TopCategoryEntity>> call(NoParams params) {
    return repository.getTopCategories();
  }
}
