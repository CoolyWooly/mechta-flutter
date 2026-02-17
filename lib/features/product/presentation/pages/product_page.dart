import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mechta_flutter/app/di.dart';
import 'package:mechta_flutter/core/domain/entities/product_entity.dart';
import 'package:mechta_flutter/features/product/presentation/bloc/product_bloc.dart';

class ProductPage extends StatelessWidget {
  final String productId;

  const ProductPage({
    required this.productId,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => sl<ProductBloc>()
        ..add(ProductLoadRequested(int.parse(productId))),
      child: const _ProductView(),
    );
  }
}

class _ProductView extends StatelessWidget {
  const _ProductView();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductBloc, ProductState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: Text(state.product?.name ?? 'Товар'),
          ),
          body: switch (state.status) {
            ProductStatus.initial || ProductStatus.loading => const Center(
                child: CircularProgressIndicator(),
              ),
            ProductStatus.failure => Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(state.errorMessage ?? 'Ошибка загрузки'),
                    const SizedBox(height: 16),
                    ElevatedButton(
                      onPressed: () {
                        final product = state.product;
                        if (product != null && product.numericId != null) {
                          context
                              .read<ProductBloc>()
                              .add(ProductLoadRequested(product.numericId!));
                        }
                      },
                      child: const Text('Повторить'),
                    ),
                  ],
                ),
              ),
            ProductStatus.success => _ProductContent(product: state.product!),
          },
          bottomNavigationBar: state.status == ProductStatus.success
              ? SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: FilledButton(
                      onPressed: () {
                        // TODO: add to cart
                      },
                      child: Text(
                        state.product!.availability == 'available'
                            ? 'В корзину — ${_formatPrice(state.product!.prices?.finalPrice)} ₸'
                            : 'Нет в наличии',
                      ),
                    ),
                  ),
                )
              : null,
        );
      },
    );
  }

  String _formatPrice(int? price) {
    if (price == null) return '0';
    final str = price.toString();
    final buffer = StringBuffer();
    for (var i = 0; i < str.length; i++) {
      if (i > 0 && (str.length - i) % 3 == 0) buffer.write(' ');
      buffer.write(str[i]);
    }
    return buffer.toString();
  }
}

class _ProductContent extends StatelessWidget {
  final ProductEntity product;

  const _ProductContent({required this.product});

  @override
  Widget build(BuildContext context) {
    final hasDiscount = product.prices?.basePrice != null &&
        product.prices?.finalPrice != null &&
        product.prices!.basePrice! > product.prices!.finalPrice!;

    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        Container(
          height: 250,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(12),
          ),
          child: const Icon(Icons.image, size: 64, color: Colors.grey),
        ),
        const SizedBox(height: 16),
        Text(
          product.name ?? '',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        const SizedBox(height: 8),
        Row(
          children: [
            if (product.prices?.finalPrice != null)
              Text(
                '${_formatPrice(product.prices!.finalPrice!)} ₸',
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
            if (hasDiscount) ...[
              const SizedBox(width: 8),
              Text(
                '${_formatPrice(product.prices!.basePrice!)} ₸',
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      decoration: TextDecoration.lineThrough,
                      color: Colors.grey,
                    ),
              ),
            ],
          ],
        ),
        const SizedBox(height: 16),
        if (product.preview != null) Text(product.preview!),
      ],
    );
  }

  String _formatPrice(int price) {
    final str = price.toString();
    final buffer = StringBuffer();
    for (var i = 0; i < str.length; i++) {
      if (i > 0 && (str.length - i) % 3 == 0) buffer.write(' ');
      buffer.write(str[i]);
    }
    return buffer.toString();
  }
}
