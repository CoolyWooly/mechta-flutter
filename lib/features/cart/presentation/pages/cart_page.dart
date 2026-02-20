import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mechta_flutter/features/cart/domain/entities/cart_item_entity.dart';
import 'package:mechta_flutter/features/cart/presentation/bloc/cart_bloc.dart';
import 'package:mechta_flutter/features/cart/presentation/cubit/cart_cubit.dart';
import 'package:mechta_flutter/l10n/app_localizations.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  void initState() {
    super.initState();
    context.read<CartBloc>().add(const CartLoadRequested(isSilent: true));
  }

  @override
  Widget build(BuildContext context) {
    return const _CartView();
  }
}

class _CartView extends StatelessWidget {
  const _CartView();

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    return Scaffold(
      appBar: AppBar(title: Text(l10n.cart)),
      body: BlocListener<CartCubit, CartCubitState>(
        listenWhen: (previous, current) =>
            previous.cartProductQuantities.length != current.cartProductQuantities.length,
        listener: (context, state) {
          context.read<CartBloc>().add(const CartLoadRequested());
        },
        child: BlocListener<CartBloc, CartState>(
          listenWhen: (previous, current) => current.errors != null && current.errors!.isNotEmpty,
          listener: (context, state) {
            final scaffoldMessenger = ScaffoldMessenger.of(context);
            scaffoldMessenger.clearSnackBars();
            scaffoldMessenger.showSnackBar(
              SnackBar(
                content: Text(state.errors!.join('\n')),
                backgroundColor: Theme.of(context).colorScheme.error,
              ),
            );
          },
          child: BlocBuilder<CartBloc, CartState>(
            builder: (context, state) {
            return switch (state.status) {
              CartStatus.initial || CartStatus.loading => const Center(
                  child: CircularProgressIndicator(),
                ),
              CartStatus.unauthenticated => _CartContent(state: state, l10n: l10n),
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
                  : _CartContent(state: state, l10n: l10n),
            };
          },
        ),
        ),
      ),
    );
  }
}


class _CartContent extends StatelessWidget {
  final CartState state;
  final AppLocalizations l10n;

  const _CartContent({required this.state, required this.l10n});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView.separated(
            padding: const EdgeInsets.all(16),
            itemCount: state.items.length,
            separatorBuilder: (context, index) => const SizedBox(height: 12),
            itemBuilder: (context, index) {
              return _CartItemCard(
                item: state.items[index],
                l10n: l10n,
                onTap: () {
                  final productId = state.items[index].productId;
                  if (productId != null) {
                    context.go('/cart/product/$productId');
                  }
                },
              );
            },
          ),
        ),
        if (state.totalPrices != null) _CartSummary(state: state, l10n: l10n),
      ],
    );
  }
}

class _CartItemCard extends StatelessWidget {
  final CartItemEntity item;
  final AppLocalizations l10n;
  final VoidCallback onTap;

  const _CartItemCard({
    required this.item,
    required this.l10n,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final hasDiscount = item.prices?.hasDiscount ?? false;

    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(12),
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: theme.colorScheme.surface,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: theme.colorScheme.outlineVariant.withValues(alpha: 0.5),
          ),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Product image
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: SizedBox(
                width: 80,
                height: 80,
                child: item.preview != null
                    ? Image.network(
                        item.preview!,
                        fit: BoxFit.cover,
                        errorBuilder: (context, error, stackTrace) => Container(
                          color: Colors.grey.shade200,
                          child: const Icon(Icons.image_not_supported_outlined,
                              color: Colors.grey),
                        ),
                      )
                    : Container(
                        color: Colors.grey.shade200,
                        child: const Icon(Icons.image_outlined,
                            color: Colors.grey),
                      ),
              ),
            ),
            const SizedBox(width: 12),
            // Product info
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    item.name,
                    style: theme.textTheme.bodyMedium
                        ?.copyWith(fontWeight: FontWeight.w500),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 4),
                  if (item.isGift)
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 2),
                      decoration: BoxDecoration(
                        color: Colors.green.shade50,
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Text(
                        l10n.gift,
                        style: theme.textTheme.labelSmall
                            ?.copyWith(color: Colors.green.shade700),
                      ),
                    ),
                  const SizedBox(height: 8),
                  // Quantity controls
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: theme.colorScheme.surfaceContainerHighest,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Row(
                          children: [
                            IconButton(
                              icon: const Icon(Icons.remove, size: 18),
                              onPressed: () {
                                if (item.productId == null) return;
                                if (item.quantity > 1) {
                                  context.read<CartBloc>().add(
                                        CartChangeQuantityRequested(
                                          productId: item.productId!,
                                          quantity: item.quantity - 1,
                                        ),
                                      );
                                } else {
                                  context.read<CartBloc>().add(
                                        CartDeleteItemRequested(
                                          productId: item.productId!,
                                        ),
                                      );
                                }
                              },
                              constraints: const BoxConstraints(
                                minWidth: 32,
                                minHeight: 32,
                              ),
                              padding: EdgeInsets.zero,
                            ),
                            SizedBox(
                              width: 32,
                              child: Text(
                                '${item.quantity}',
                                textAlign: TextAlign.center,
                                style: theme.textTheme.bodyMedium?.copyWith(
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            IconButton(
                              icon: const Icon(Icons.add, size: 18),
                              onPressed: (item.catalogQuantity == null || item.quantity < item.catalogQuantity!) 
                                  ? () {
                                      if (item.productId == null) return;
                                      context.read<CartBloc>().add(
                                            CartChangeQuantityRequested(
                                              productId: item.productId!,
                                              quantity: item.quantity + 1,
                                            ),
                                          );
                                    }
                                  : null,
                              constraints: const BoxConstraints(
                                minWidth: 32,
                                minHeight: 32,
                              ),
                              padding: EdgeInsets.zero,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 4),
                  // Price row
                  if (item.priceSums != null) ...[
                    Row(
                      children: [
                        Text(
                          _formatPrice(item.priceSums!.discountedPrice),
                          style: theme.textTheme.titleSmall?.copyWith(
                            fontWeight: FontWeight.bold,
                            color: hasDiscount
                                ? Colors.red
                                : theme.colorScheme.onSurface,
                          ),
                        ),
                        if (hasDiscount) ...[
                          const SizedBox(width: 8),
                          Text(
                            _formatPrice(item.priceSums!.basePrice),
                            style: theme.textTheme.bodySmall?.copyWith(
                              decoration: TextDecoration.lineThrough,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ],
                    ),
                  ],
                  // Bonus info
                  if (item.bonus != null && item.bonus! > 0)
                    Padding(
                      padding: const EdgeInsets.only(top: 4),
                      child: Text(
                        '+${item.bonus} ${l10n.bonuses}',
                        style: theme.textTheme.labelSmall
                            ?.copyWith(color: Colors.orange),
                      ),
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  String _formatPrice(int price) {
    final formatted = price.toString().replaceAllMapped(
        RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'), (m) => '${m[1]} ');
    return '$formatted ₸';
  }
}

class _CartSummary extends StatelessWidget {
  final CartState state;
  final AppLocalizations l10n;

  const _CartSummary({required this.state, required this.l10n});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final prices = state.totalPrices!;
    final hasDiscount = prices.hasDiscount;

    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: theme.colorScheme.surface,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.08),
            offset: const Offset(0, -2),
            blurRadius: 8,
          ),
        ],
      ),
      child: SafeArea(
        top: false,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Discount row
            if (hasDiscount)
              Padding(
                padding: const EdgeInsets.only(bottom: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(l10n.discount,
                        style: theme.textTheme.bodyMedium),
                    Text(
                      '-${_formatPrice(prices.basePrice - prices.discountedPrice)}',
                      style: theme.textTheme.bodyMedium
                          ?.copyWith(color: Colors.red),
                    ),
                  ],
                ),
              ),
            // Coupons discount
            if (state.cart?.discountByCoupons != null &&
                state.cart!.discountByCoupons! > 0)
              Padding(
                padding: const EdgeInsets.only(bottom: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(l10n.couponDiscount,
                        style: theme.textTheme.bodyMedium),
                    Text(
                      '-${_formatPrice(state.cart!.discountByCoupons!)}',
                      style: theme.textTheme.bodyMedium
                          ?.copyWith(color: Colors.red),
                    ),
                  ],
                ),
              ),
            // Total
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(l10n.cartTotal,
                    style: theme.textTheme.titleMedium
                        ?.copyWith(fontWeight: FontWeight.bold)),
                Text(
                  _formatPrice(prices.discountedPrice),
                  style: theme.textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            // Checkout button
            SizedBox(
              width: double.infinity,
              child: FilledButton(
                onPressed: () {},
                child: Text(l10n.checkout),
              ),
            ),
          ],
        ),
      ),
    );
  }

  String _formatPrice(int price) {
    final formatted = price.toString().replaceAllMapped(
        RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'), (m) => '${m[1]} ');
    return '$formatted ₸';
  }
}
