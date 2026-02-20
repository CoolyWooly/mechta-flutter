part of 'cart_bloc.dart';

abstract class CartEvent extends Equatable {
  const CartEvent();

  @override
  List<Object?> get props => [];
}

class CartLoadRequested extends CartEvent {
  final bool isSilent;

  const CartLoadRequested({this.isSilent = false});

  @override
  List<Object?> get props => [isSilent];
}

class CartAddToCartRequested extends CartEvent {
  final int productId;

  const CartAddToCartRequested({required this.productId});

  @override
  List<Object?> get props => [productId];
}

class CartChangeQuantityRequested extends CartEvent {
  final int productId;
  final int quantity;

  const CartChangeQuantityRequested({
    required this.productId,
    required this.quantity,
  });

  @override
  List<Object?> get props => [productId, quantity];
}

class CartDeleteItemRequested extends CartEvent {
  final int productId;

  const CartDeleteItemRequested({required this.productId});

  @override
  List<Object?> get props => [productId];
}

