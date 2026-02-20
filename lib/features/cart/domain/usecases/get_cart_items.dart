import 'package:mechta_flutter/core/usecase/usecase.dart';
import 'package:mechta_flutter/features/cart/domain/entities/cart_item_entity.dart';
import 'package:mechta_flutter/features/cart/domain/repositories/cart_repository.dart';

class GetCartUseCase extends UseCase<CartEntity, NoParams> {
  final CartRepository repository;

  GetCartUseCase(this.repository);

  @override
  Future<CartEntity> call(NoParams params) {
    return repository.getCart();
  }
}
