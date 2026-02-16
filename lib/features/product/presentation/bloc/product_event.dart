part of 'product_bloc.dart';

abstract class ProductEvent extends Equatable {
  const ProductEvent();

  @override
  List<Object?> get props => [];
}

class ProductLoadRequested extends ProductEvent {
  final int productId;

  const ProductLoadRequested(this.productId);

  @override
  List<Object?> get props => [productId];
}
