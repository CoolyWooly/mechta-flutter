import 'package:mechta_flutter/core/usecase/usecase.dart';
import 'package:mechta_flutter/core/domain/entities/product_entity.dart';
import 'package:mechta_flutter/features/product/domain/repositories/product_repository.dart';

class GetProductUseCase extends UseCase<ProductEntity, String> {
  final ProductRepository repository;

  GetProductUseCase(this.repository);

  @override
  Future<ProductEntity> call(String slug) {
    return repository.getProduct(slug);
  }
}
