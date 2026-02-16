import 'package:mechta_flutter/core/usecase/usecase.dart';
import 'package:mechta_flutter/features/cart/domain/entities/cart_item_entity.dart';
import 'package:mechta_flutter/features/cart/domain/repositories/cart_repository.dart';

class GetCartItemsUseCase extends UseCase<List<CartItemEntity>, NoParams> {
  final CartRepository repository;

  GetCartItemsUseCase(this.repository);

  @override
  Future<List<CartItemEntity>> call(NoParams params) {
    return repository.getCartItems();
  }
}
