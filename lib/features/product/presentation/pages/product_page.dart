import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mechta_flutter/app/di.dart';
import 'package:mechta_flutter/core/domain/entities/product_entity.dart';
import 'package:mechta_flutter/core/domain/entities/property_entity.dart';
import 'package:mechta_flutter/core/domain/entities/sticker_entity.dart';
import 'package:mechta_flutter/core/utils/picture_url_converter.dart';
import 'package:mechta_flutter/features/favorites/presentation/cubit/favorites_cubit.dart';
import 'package:mechta_flutter/features/cart/presentation/cubit/cart_cubit.dart';
import 'package:mechta_flutter/features/product/presentation/bloc/product_bloc.dart';
import 'package:mechta_flutter/l10n/app_localizations.dart';

class ProductPage extends StatelessWidget {
  final String slug;

  const ProductPage({
    required this.slug,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => sl<ProductBloc>()..add(ProductLoadRequested(slug)),
      child: _ProductView(slug: slug),
    );
  }
}

class _ProductView extends StatelessWidget {
  final String slug;

  const _ProductView({required this.slug});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductBloc, ProductState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: Text(state.product?.name ?? ''),
            actions: [
              if (state.product?.id != null)
                BlocBuilder<FavoritesCubit, FavoritesCubitState>(
                  buildWhen: (previous, current) =>
                      previous.isFavorite(state.product!.id) !=
                      current.isFavorite(state.product!.id),
                  builder: (context, favoritesState) {
                    final isFavorite = favoritesState.isFavorite(state.product!.id);
                    return IconButton(
                      icon: Icon(
                        isFavorite ? Icons.favorite : Icons.favorite_outline,
                        color: isFavorite ? Colors.red : null,
                      ),
                      onPressed: () {
                        context
                            .read<FavoritesCubit>()
                            .toggleFavorite(state.product!.id!);
                      },
                    );
                  },
                ),
            ],
          ),
          body: switch (state.status) {
            ProductStatus.initial || ProductStatus.loading => const Center(
                child: CircularProgressIndicator(),
              ),
            ProductStatus.failure => Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(state.errorMessage ?? AppLocalizations.of(context)!.loadingError),
                    const SizedBox(height: 16),
                    ElevatedButton(
                      onPressed: () => context
                          .read<ProductBloc>()
                          .add(ProductLoadRequested(slug)),
                      child: Text(AppLocalizations.of(context)!.retry),
                    ),
                  ],
                ),
              ),
            ProductStatus.success => _ProductContent(product: state.product!),
          },
          bottomNavigationBar: state.status == ProductStatus.success
              ? _BottomBar(product: state.product!)
              : null,
        );
      },
    );
  }
}

class _BottomBar extends StatelessWidget {
  final ProductEntity product;

  const _BottomBar({required this.product});

  @override
  Widget build(BuildContext context) {
    final isAvailable = product.availability == 'available';
    final l10n = AppLocalizations.of(context)!;

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: BlocBuilder<CartCubit, CartCubitState>(
          buildWhen: (previous, current) =>
              previous.isInCart(product.numericId) !=
              current.isInCart(product.numericId),
          builder: (context, cartState) {
            final isInCart = cartState.isInCart(product.numericId);

            return FilledButton.icon(
              onPressed: isAvailable && !isInCart
                  ? () {
                      if (product.numericId != null) {
                        context.read<CartCubit>().addToCart(product.numericId!);
                      }
                    }
                  : null,
              icon: Icon(isInCart ? Icons.shopping_cart : Icons.add_shopping_cart),
              label: Text(
                !isAvailable
                    ? l10n.outOfStock
                    : isInCart
                        ? l10n.inCart
                        : l10n.addToCartWithPrice(_formatPrice(product.prices?.finalPrice)),
              ),
            );
          },
        ),
      ),
    );
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
      children: [
        // Image gallery
        if (product.images.isNotEmpty) _ImageGallery(images: product.images),
        if (product.images.isEmpty)
          Container(
            height: 250,
            color: Theme.of(context).colorScheme.surfaceContainerHighest,
            child: Icon(Icons.image, size: 64,
                color: Theme.of(context).colorScheme.onSurfaceVariant),
          ),

        Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Stickers
              if (product.stickers.isNotEmpty)
                Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Wrap(
                    spacing: 6,
                    runSpacing: 4,
                    children: product.stickers
                        .map((s) => _StickerChip(sticker: s))
                        .toList(),
                  ),
                ),

              // Name
              Text(
                product.name ?? '',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(height: 4),
              if (product.code != null)
                Text(
                  AppLocalizations.of(context)!.productCode(product.code!),
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        color: Theme.of(context).colorScheme.onSurfaceVariant,
                      ),
                ),

              const SizedBox(height: 12),

              // Price
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  if (product.prices?.finalPrice != null)
                    Text(
                      '${_formatPrice(product.prices!.finalPrice!)} ₸',
                      style:
                          Theme.of(context).textTheme.headlineSmall?.copyWith(
                                fontWeight: FontWeight.bold,
                              ),
                    ),
                  if (hasDiscount) ...[
                    const SizedBox(width: 8),
                    Text(
                      '${_formatPrice(product.prices!.basePrice!)} ₸',
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                            decoration: TextDecoration.lineThrough,
                            color:
                                Theme.of(context).colorScheme.onSurfaceVariant,
                          ),
                    ),
                  ],
                ],
              ),

              // Availability
              const SizedBox(height: 8),
              _AvailabilityBadge(availability: product.availability),

              // Trade-in
              if (product.tradeInAvailable == true) ...[
                const SizedBox(height: 8),
                Row(
                  children: [
                    Icon(Icons.swap_horiz,
                        size: 18,
                        color: Theme.of(context).colorScheme.primary),
                    const SizedBox(width: 4),
                    Text(
                      AppLocalizations.of(context)!.tradeInAvailable,
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            color: Theme.of(context).colorScheme.primary,
                          ),
                    ),
                  ],
                ),
              ],

              // Main properties
              if (product.mainProperties.isNotEmpty) ...[
                const SizedBox(height: 24),
                Text(
                  AppLocalizations.of(context)!.specifications,
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                ),
                const SizedBox(height: 8),
                ...product.mainProperties
                    .map((p) => _PropertyRow(property: p)),
              ],

              // Description / preview
              if (product.preview != null) ...[
                const SizedBox(height: 24),
                Text(
                  AppLocalizations.of(context)!.description,
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                ),
                const SizedBox(height: 8),
                Text(
                  product.preview!,
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ],

              const SizedBox(height: 24),
            ],
          ),
        ),
      ],
    );
  }
}

class _ImageGallery extends StatefulWidget {
  final List<String> images;

  const _ImageGallery({required this.images});

  @override
  State<_ImageGallery> createState() => _ImageGalleryState();
}

class _ImageGalleryState extends State<_ImageGallery> {
  final _controller = PageController();
  int _current = 0;
  Timer? _autoScrollTimer;

  @override
  void initState() {
    super.initState();
    if (widget.images.length > 1) {
      _autoScrollTimer = Timer.periodic(const Duration(seconds: 5), (_) {
        if (!mounted) return;
        final next = (_current + 1) % widget.images.length;
        _controller.animateToPage(next,
            duration: const Duration(milliseconds: 400),
            curve: Curves.easeInOut);
      });
    }
  }

  @override
  void dispose() {
    _autoScrollTimer?.cancel();
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Column(
      children: [
        AspectRatio(
          aspectRatio: 1,
          child: PageView.builder(
            controller: _controller,
            itemCount: widget.images.length,
            onPageChanged: (i) => setState(() => _current = i),
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(16),
                child: Image.network(
                  PictureUrlConverter.getCompressed(
                      widget.images[index], 600),
                  fit: BoxFit.contain,
                  errorBuilder: (context, error, stackTrace) => Icon(
                    Icons.image_not_supported_outlined,
                    size: 64,
                    color: colorScheme.onSurfaceVariant,
                  ),
                ),
              );
            },
          ),
        ),
        if (widget.images.length > 1)
          Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                widget.images.length,
                (i) => AnimatedContainer(
                  duration: const Duration(milliseconds: 300),
                  margin: const EdgeInsets.symmetric(horizontal: 3),
                  width: _current == i ? 20 : 6,
                  height: 6,
                  decoration: BoxDecoration(
                    color: _current == i
                        ? colorScheme.primary
                        : colorScheme.outlineVariant,
                    borderRadius: BorderRadius.circular(3),
                  ),
                ),
              ),
            ),
          ),
      ],
    );
  }
}

class _StickerChip extends StatelessWidget {
  final StickerEntity sticker;

  const _StickerChip({required this.sticker});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primaryContainer,
        borderRadius: BorderRadius.circular(4),
      ),
      child: Text(
        sticker.name ?? '',
        style: Theme.of(context).textTheme.labelSmall?.copyWith(
              color: Theme.of(context).colorScheme.onPrimaryContainer,
            ),
      ),
    );
  }
}

class _AvailabilityBadge extends StatelessWidget {
  final String? availability;

  const _AvailabilityBadge({required this.availability});

  @override
  Widget build(BuildContext context) {
    final isAvailable = availability == 'available';
    final colorScheme = Theme.of(context).colorScheme;

    return Row(
      children: [
        Icon(
          isAvailable ? Icons.check_circle : Icons.cancel,
          size: 16,
          color: isAvailable ? Colors.green : colorScheme.error,
        ),
        const SizedBox(width: 4),
        Text(
          isAvailable ? AppLocalizations.of(context)!.inStock : AppLocalizations.of(context)!.outOfStock,
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                color: isAvailable ? Colors.green : colorScheme.error,
              ),
        ),
      ],
    );
  }
}

class _PropertyRow extends StatelessWidget {
  final PropertyEntity property;

  const _PropertyRow({required this.property});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 2,
            child: Text(
              property.name ?? '',
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: colorScheme.onSurfaceVariant,
                  ),
            ),
          ),
          const SizedBox(width: 8),
          Expanded(
            flex: 3,
            child: Text(
              property.value ?? '',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ),
        ],
      ),
    );
  }
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
