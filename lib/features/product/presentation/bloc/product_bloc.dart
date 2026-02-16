import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mechta_flutter/features/product/domain/entities/product_entity.dart';
import 'package:mechta_flutter/features/product/domain/usecases/get_product.dart';

part 'product_event.dart';
part 'product_state.dart';

class ProductBloc extends Bloc<ProductEvent, ProductState> {
  final GetProductUseCase _getProduct;

  ProductBloc({required GetProductUseCase getProduct})
      : _getProduct = getProduct,
        super(const ProductState()) {
    on<ProductLoadRequested>(_onLoadRequested);
  }

  Future<void> _onLoadRequested(
    ProductLoadRequested event,
    Emitter<ProductState> emit,
  ) async {
    emit(state.copyWith(status: ProductStatus.loading));
    try {
      final product = await _getProduct(event.productId);
      emit(state.copyWith(
        status: ProductStatus.success,
        product: product,
      ));
    } catch (e) {
      emit(state.copyWith(
        status: ProductStatus.failure,
        errorMessage: e.toString(),
      ));
    }
  }
}
