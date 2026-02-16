import 'package:mechta_flutter/core/usecase/usecase.dart';
import 'package:mechta_flutter/features/catalog/domain/entities/brand_entity.dart';
import 'package:mechta_flutter/features/catalog/domain/repositories/catalog_repository.dart';

class GetPopularBrandsUseCase extends UseCase<List<BrandEntity>, NoParams> {
  final CatalogRepository repository;

  GetPopularBrandsUseCase(this.repository);

  @override
  Future<List<BrandEntity>> call(NoParams params) {
    return repository.getPopularBrands();
  }
}
