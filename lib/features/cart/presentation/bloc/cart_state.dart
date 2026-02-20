part of 'cart_bloc.dart';

enum CartStatus { initial, loading, success, failure, unauthenticated }

class CartState extends Equatable {
  final CartStatus status;
  final CartEntity? cart;
  final bool isAuthenticated;
  final String? errorMessage;

  const CartState({
    this.status = CartStatus.initial,
    this.cart,
    this.isAuthenticated = false,
    this.errorMessage,
  });

  List<CartItemEntity> get items => cart?.items ?? [];
  CartPricesEntity? get totalPrices => cart?.totalPrices;

  CartState copyWith({
    CartStatus? status,
    CartEntity? cart,
    bool? isAuthenticated,
    String? errorMessage,
  }) {
    return CartState(
      status: status ?? this.status,
      cart: cart ?? this.cart,
      isAuthenticated: isAuthenticated ?? this.isAuthenticated,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }

  @override
  List<Object?> get props => [status, cart, isAuthenticated, errorMessage];
}
