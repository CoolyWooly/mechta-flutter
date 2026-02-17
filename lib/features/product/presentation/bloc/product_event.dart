part of 'product_bloc.dart';

abstract class ProductEvent extends Equatable {
  const ProductEvent();

  @override
  List<Object?> get props => [];
}

class ProductLoadRequested extends ProductEvent {
  final String slug;

  const ProductLoadRequested(this.slug);

  @override
  List<Object?> get props => [slug];
}
