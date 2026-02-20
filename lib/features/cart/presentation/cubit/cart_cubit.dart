import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mechta_flutter/features/cart/domain/repositories/cart_repository.dart';

class CartCubitState {
  final Map<String, int> cartProductQuantities;

  const CartCubitState({
    this.cartProductQuantities = const {},
  });

  bool isInCart(int? productId) {
    if (productId == null) return false;
    return cartProductQuantities.containsKey(productId.toString());
  }

  int getQuantity(int? productId) {
    if (productId == null) return 0;
    return cartProductQuantities[productId.toString()] ?? 0;
  }

  int get quantity {
    return cartProductQuantities.values.fold(0, (sum, val) => sum + val);
  }

  int get totalItems {
    return cartProductQuantities.values.fold(0, (sum, val) => sum + val);
  }

  CartCubitState copyWith({
    Map<String, int>? cartProductQuantities,
  }) {
    return CartCubitState(
      cartProductQuantities: cartProductQuantities ?? this.cartProductQuantities,
    );
  }
}

class CartCubit extends Cubit<CartCubitState> {
  final CartRepository repository;

  CartCubit({
    required this.repository,
  }) : super(const CartCubitState());

  void loadCartQuantities() {
    try {
      final quantities = repository.getCartProductQuantities();
      emit(state.copyWith(cartProductQuantities: quantities));
    } catch (_) {
      // Игнорируем ошибку при начальной загрузке
    }
  }

  Future<void> addToCart(int productId) async {
    // Optimistic update
    final currentQuantities = Map<String, int>.from(state.cartProductQuantities);
    
    if (!currentQuantities.containsKey(productId.toString())) {
      currentQuantities[productId.toString()] = 1;
      emit(state.copyWith(cartProductQuantities: currentQuantities));

      try {
        await repository.addToCart(productId);
        // Refresh cart quantities from local storage after successful add
        loadCartQuantities();
      } catch (_) {
        // Rollback on error
        final revertedQuantities = Map<String, int>.from(state.cartProductQuantities);
        revertedQuantities.remove(productId.toString());
        emit(state.copyWith(cartProductQuantities: revertedQuantities));
      }
    }
  }

  Future<void> changeQuantity(int productId, int quantity) async {
     final currentQuantities = Map<String, int>.from(state.cartProductQuantities);
     currentQuantities[productId.toString()] = quantity;
     emit(state.copyWith(cartProductQuantities: currentQuantities));
     
     try {
       await repository.changeQuantity(productId, quantity);
       loadCartQuantities();
     } catch (_) {
        final revertedQuantities = Map<String, int>.from(state.cartProductQuantities);
        if (revertedQuantities.containsKey(productId.toString())) {
           emit(state.copyWith(cartProductQuantities: revertedQuantities));
        }
     }
  }

  Future<void> removeFromCart(int productId) async {
    final currentQuantities = Map<String, int>.from(state.cartProductQuantities);
    currentQuantities.remove(productId.toString());
    emit(state.copyWith(cartProductQuantities: currentQuantities));

    try {
      await repository.deleteFromCart(productId);
      loadCartQuantities();
    } catch (_) {
       final revertedQuantities = Map<String, int>.from(state.cartProductQuantities);
       emit(state.copyWith(cartProductQuantities: revertedQuantities));
    }
  }
}
