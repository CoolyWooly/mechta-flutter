import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mechta_flutter/core/domain/entities/product_entity.dart';
import 'package:mechta_flutter/core/utils/picture_url_converter.dart';
import 'package:mechta_flutter/features/favorites/presentation/cubit/favorites_cubit.dart';
import 'package:mechta_flutter/features/cart/presentation/cubit/cart_cubit.dart';

enum ProductCardViewMode { vertical, horizontal }

class ProductCard extends StatelessWidget {
  final ProductEntity product;
  final ProductCardViewMode mode;
  final VoidCallback? onTap;

  const ProductCard({
    super.key,
    required this.product,
    this.mode = ProductCardViewMode.vertical,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    final hasDiscount = product.prices?.basePrice != null &&
        product.prices?.finalPrice != null &&
        product.prices!.basePrice! > product.prices!.finalPrice!;
    final imageUrl = product.images.isNotEmpty ? product.images.first : null;

    return Material(
      color: colorScheme.surfaceContainerLow,
      borderRadius: BorderRadius.circular(12),
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: onTap,
        child: mode == ProductCardViewMode.vertical
            ? _buildVerticalLayout(context, colorScheme, textTheme, imageUrl, hasDiscount)
            : _buildHorizontalLayout(context, colorScheme, textTheme, imageUrl, hasDiscount),
      ),
    );
  }

  Widget _buildVerticalLayout(
    BuildContext context,
    ColorScheme colorScheme,
    TextTheme textTheme,
    String? imageUrl,
    bool hasDiscount,
  ) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: _buildImageSection(context, colorScheme, imageUrl, true),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(8, 0, 8, 8),
          child: _buildInfoSection(context, colorScheme, textTheme, hasDiscount, true),
        ),
      ],
    );
  }

  Widget _buildHorizontalLayout(
    BuildContext context,
    ColorScheme colorScheme,
    TextTheme textTheme,
    String? imageUrl,
    bool hasDiscount,
  ) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SizedBox(
          width: 140,
          child: _buildImageSection(context, colorScheme, imageUrl, false),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(12, 12, 12, 12),
            child: _buildInfoSection(context, colorScheme, textTheme, hasDiscount, false),
          ),
        ),
      ],
    );
  }

  Widget _buildImageSection(
    BuildContext context,
    ColorScheme colorScheme,
    String? imageUrl,
    bool isVertical,
  ) {
    return Stack(
      children: [
        Center(
          child: imageUrl != null
              ? Image.network(
                  PictureUrlConverter.getCompressed(imageUrl, 300),
                  fit: BoxFit.contain,
                  errorBuilder: (context, error, stackTrace) => Icon(
                    Icons.image_not_supported_outlined,
                    size: 48,
                    color: colorScheme.onSurfaceVariant,
                  ),
                )
              : Icon(
                  Icons.image_not_supported_outlined,
                  size: 48,
                  color: colorScheme.onSurfaceVariant,
                ),
        ),
        Positioned(
          top: 4,
          right: 4,
          child: BlocBuilder<FavoritesCubit, FavoritesCubitState>(
            buildWhen: (previous, current) =>
                previous.isFavorite(product.id) != current.isFavorite(product.id),
            builder: (context, favoritesState) {
              final isFavorite = favoritesState.isFavorite(product.id);
              return IconButton(
                icon: Icon(
                  isFavorite ? Icons.favorite : Icons.favorite_outline,
                  color: isFavorite ? Colors.red : colorScheme.onSurfaceVariant,
                  size: 22,
                ),
                onPressed: () {
                  if (product.id != null) {
                    context.read<FavoritesCubit>().toggleFavorite(product.id!);
                  }
                },
                style: IconButton.styleFrom(
                  backgroundColor: colorScheme.surface.withValues(alpha: 0.8),
                  padding: const EdgeInsets.all(6),
                  minimumSize: const Size(34, 34),
                ),
              );
            },
          ),
        ),
      ],
    );
  }

  Widget _buildInfoSection(
    BuildContext context,
    ColorScheme colorScheme,
    TextTheme textTheme,
    bool hasDiscount,
    bool isVertical,
  ) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: isVertical ? MainAxisAlignment.start : MainAxisAlignment.center,
      children: [
        Text(
          product.name ?? '',
          style: textTheme.bodySmall,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
        const SizedBox(height: 4),
        if (hasDiscount) ...[
          Text(
            '${product.prices!.basePrice!} \u20b8',
            style: textTheme.bodySmall?.copyWith(
              decoration: TextDecoration.lineThrough,
              color: colorScheme.onSurfaceVariant,
            ),
          ),
        ],
        if (!isVertical) const Spacer(),
        if (isVertical) const SizedBox(height: 4),
        Row(
          children: [
            Expanded(
              child: product.prices?.finalPrice != null
                  ? Text(
                      '${product.prices!.finalPrice!} \u20b8',
                      style: textTheme.titleSmall?.copyWith(
                        fontWeight: FontWeight.w700,
                        color: hasDiscount ? colorScheme.error : colorScheme.onSurface,
                      ),
                    )
                  : const SizedBox.shrink(),
            ),
            BlocBuilder<CartCubit, CartCubitState>(
              buildWhen: (previous, current) =>
                  previous.isInCart(product.numericId) !=
                  current.isInCart(product.numericId),
              builder: (context, cartState) {
                final isInCart = cartState.isInCart(product.numericId);
                return SizedBox(
                  width: 34,
                  height: 34,
                  child: IconButton(
                    padding: EdgeInsets.zero,
                    icon: Icon(
                      isInCart ? Icons.shopping_cart : Icons.add_shopping_cart,
                      color: isInCart ? colorScheme.primary : colorScheme.onSurfaceVariant,
                      size: 20,
                    ),
                    onPressed: isInCart
                        ? null
                        : () {
                            if (product.numericId != null) {
                              context.read<CartCubit>().addToCart(product.numericId!);
                            }
                          },
                    style: IconButton.styleFrom(
                      backgroundColor: isInCart
                          ? colorScheme.primaryContainer
                          : colorScheme.surfaceContainerHighest,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ],
    );
  }
}
