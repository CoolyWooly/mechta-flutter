import 'package:equatable/equatable.dart';

class ProductEntity extends Equatable {
  final int id;
  final String title;
  final String? description;
  final double price;
  final double? oldPrice;
  final String? imageUrl;
  final List<String> images;
  final bool inStock;

  const ProductEntity({
    required this.id,
    required this.title,
    this.description,
    required this.price,
    this.oldPrice,
    this.imageUrl,
    this.images = const [],
    this.inStock = true,
  });

  bool get hasDiscount => oldPrice != null && oldPrice! > price;

  @override
  List<Object?> get props => [
        id,
        title,
        description,
        price,
        oldPrice,
        imageUrl,
        images,
        inStock,
      ];
}
