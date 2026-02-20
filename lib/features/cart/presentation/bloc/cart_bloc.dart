import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mechta_flutter/core/usecase/usecase.dart';
import 'package:mechta_flutter/features/cart/domain/entities/cart_item_entity.dart';
import 'package:mechta_flutter/features/cart/domain/repositories/cart_repository.dart';
import 'package:mechta_flutter/features/cart/domain/usecases/get_cart_items.dart';

part 'cart_event.dart';
part 'cart_state.dart';

class CartBloc extends Bloc<CartEvent, CartState> {
  final GetCartUseCase _getCart;
  final CartRepository _repository;

  CartBloc({
    required GetCartUseCase getCart,
    required CartRepository repository,
  })  : _getCart = getCart,
        _repository = repository,
        super(const CartState()) {
    on<CartLoadRequested>(_onLoadRequested);
  }

  Future<void> _onLoadRequested(
    CartLoadRequested event,
    Emitter<CartState> emit,
  ) async {
    emit(state.copyWith(status: CartStatus.loading));
    try {
      final isAuth = await _repository.isAuthenticated();
      if (!isAuth) {
        emit(state.copyWith(
          status: CartStatus.unauthenticated,
          isAuthenticated: false,
        ));
        return;
      }
      final cart = await _getCart(NoParams());
      emit(state.copyWith(
        status: CartStatus.success,
        cart: cart,
        isAuthenticated: true,
      ));
    } catch (e) {
      emit(state.copyWith(
        status: CartStatus.failure,
        errorMessage: e.toString(),
      ));
    }
  }
}
