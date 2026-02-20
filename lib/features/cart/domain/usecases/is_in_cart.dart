import 'package:mechta_flutter/features/cart/domain/repositories/cart_repository.dart';

class IsInCartUseCase {
  final CartRepository repository;

  IsInCartUseCase(this.repository);

  bool call(String productId) {
    return repository.isInCart(productId);
  }
}
