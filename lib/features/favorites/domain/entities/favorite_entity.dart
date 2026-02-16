import 'package:equatable/equatable.dart';

class FavoriteEntity extends Equatable {
  final int productId;
  final String title;
  final double price;
  final String? imageUrl;

  const FavoriteEntity({
    required this.productId,
    required this.title,
    required this.price,
    this.imageUrl,
  });

  @override
  List<Object?> get props => [productId, title, price, imageUrl];
}
