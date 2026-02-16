import 'package:equatable/equatable.dart';

class CartItemEntity extends Equatable {
  final int productId;
  final String title;
  final double price;
  final int quantity;
  final String? imageUrl;

  const CartItemEntity({
    required this.productId,
    required this.title,
    required this.price,
    required this.quantity,
    this.imageUrl,
  });

  double get totalPrice => price * quantity;

  @override
  List<Object?> get props => [productId, title, price, quantity, imageUrl];
}
