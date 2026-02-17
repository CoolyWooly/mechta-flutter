import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mechta_flutter/app/di.dart';
import 'package:mechta_flutter/features/cart/presentation/bloc/cart_bloc.dart';
import 'package:mechta_flutter/l10n/app_localizations.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => sl<CartBloc>()..add(const CartLoadRequested()),
      child: const _CartView(),
    );
  }
}

class _CartView extends StatelessWidget {
  const _CartView();

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    return Scaffold(
      appBar: AppBar(title: Text(l10n.cart)),
      body: BlocBuilder<CartBloc, CartState>(
        builder: (context, state) {
          return switch (state.status) {
            CartStatus.initial || CartStatus.loading => const Center(
                child: CircularProgressIndicator(),
              ),
            CartStatus.failure => Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(state.errorMessage ?? l10n.loadingError),
                    const SizedBox(height: 16),
                    ElevatedButton(
                      onPressed: () => context
                          .read<CartBloc>()
                          .add(const CartLoadRequested()),
                      child: Text(l10n.retry),
                    ),
                  ],
                ),
              ),
            CartStatus.success => state.items.isEmpty
                ? Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(Icons.shopping_cart_outlined,
                            size: 64, color: Colors.grey),
                        const SizedBox(height: 16),
                        Text(
                          l10n.emptyCart,
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                      ],
                    ),
                  )
                : ListView.builder(
                    itemCount: state.items.length,
                    itemBuilder: (context, index) {
                      final item = state.items[index];
                      return ListTile(
                        title: Text(item.title),
                        subtitle: Text('${item.quantity} x ${item.price} ₸'),
                        trailing: Text('${item.totalPrice} ₸'),
                        onTap: () => context
                            .go('/cart/product/${item.productId}'),
                      );
                    },
                  ),
          };
        },
      ),
    );
  }
}
