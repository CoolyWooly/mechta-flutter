part of 'product_bloc.dart';

enum ProductStatus { initial, loading, success, failure }

class ProductState extends Equatable {
  final ProductStatus status;
  final ProductEntity? product;
  final String? errorMessage;

  const ProductState({
    this.status = ProductStatus.initial,
    this.product,
    this.errorMessage,
  });

  ProductState copyWith({
    ProductStatus? status,
    ProductEntity? product,
    String? errorMessage,
  }) {
    return ProductState(
      status: status ?? this.status,
      product: product ?? this.product,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }

  @override
  List<Object?> get props => [status, product, errorMessage];
}
