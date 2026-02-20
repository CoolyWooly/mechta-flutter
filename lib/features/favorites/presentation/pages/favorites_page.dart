import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mechta_flutter/app/di.dart';
import 'package:mechta_flutter/core/domain/entities/product_entity.dart';
import 'package:mechta_flutter/core/widgets/product_card_skeleton.dart';
import 'package:mechta_flutter/core/utils/picture_url_converter.dart';
import 'package:mechta_flutter/features/favorites/presentation/bloc/favorites_bloc.dart';
import 'package:mechta_flutter/features/favorites/presentation/cubit/favorites_cubit.dart';
import 'package:mechta_flutter/l10n/app_localizations.dart';

class FavoritesPage extends StatelessWidget {
  const FavoritesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => sl<FavoritesBloc>()..add(const FavoritesLoadRequested()),
      child: const _FavoritesView(),
    );
  }
}

class _FavoritesView extends StatelessWidget {
  const _FavoritesView();

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    return Scaffold(
      appBar: AppBar(title: Text(l10n.favorites)),
      body: BlocBuilder<FavoritesBloc, FavoritesState>(
        builder: (context, state) {
          return switch (state.status) {
            FavoritesStatus.initial || FavoritesStatus.loading => GridView.builder(
                padding: const EdgeInsets.all(16),
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 12,
                  crossAxisSpacing: 12,
                  childAspectRatio: 0.65,
                ),
                itemCount: 6,
                itemBuilder: (context, index) => const ProductCardSkeleton(),
              ),
            FavoritesStatus.failure => Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(state.errorMessage ?? l10n.loadingError),
                    const SizedBox(height: 16),
                    ElevatedButton(
                      onPressed: () => context
                          .read<FavoritesBloc>()
                          .add(const FavoritesLoadRequested()),
                      child: Text(l10n.retry),
                    ),
                  ],
                ),
              ),
            FavoritesStatus.success => BlocBuilder<FavoritesCubit, FavoritesCubitState>(
                builder: (context, cubitState) {
                  final activeFavorites = state.favorites
                      .where((p) => cubitState.isFavorite(p.id))
                      .toList();

                  return RefreshIndicator(
                    onRefresh: () async {
                      context
                          .read<FavoritesBloc>()
                          .add(const FavoritesLoadRequested());
                      await context
                          .read<FavoritesBloc>()
                          .stream
                          .firstWhere((s) => s.status != FavoritesStatus.loading);
                    },
                    child: activeFavorites.isEmpty
                    ? ListView(
                        children: [
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.7,
                            child: Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Icon(Icons.favorite_outline,
                                      size: 64, color: Colors.grey),
                                  const SizedBox(height: 16),
                                  Text(
                                    l10n.noFavorites,
                                    style:
                                        Theme.of(context).textTheme.titleMedium,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      )
                    : GridView.builder(
                        padding: const EdgeInsets.all(16),
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          mainAxisSpacing: 12,
                          crossAxisSpacing: 12,
                          childAspectRatio: 0.65,
                        ),
                        itemCount: activeFavorites.length,
                        itemBuilder: (context, index) {
                          final product = activeFavorites[index];
                          return _ProductCard(
                            product: product,
                            isFavorite: true,
                            onToggleFavorite: () {
                              if (product.id != null) {
                                context.read<FavoritesCubit>().toggleFavorite(product.id!);
                              }
                            },
                          );
                        },
                      ),
                  );
                },
              ),
          };
        },
      ),
    );
  }
}

class _ProductCard extends StatelessWidget {
  final ProductEntity product;
  final bool isFavorite;
  final VoidCallback onToggleFavorite;

  const _ProductCard({
    required this.product,
    required this.isFavorite,
    required this.onToggleFavorite,
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
        onTap: () {
          context.go('/favorites/product/${product.slug}');
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Stack(
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
                    child: IconButton(
                      icon: Icon(
                        isFavorite ? Icons.favorite : Icons.favorite_outline,
                        color: isFavorite ? Colors.red : colorScheme.onSurfaceVariant,
                        size: 22,
                      ),
                      onPressed: onToggleFavorite,
                      style: IconButton.styleFrom(
                        backgroundColor: colorScheme.surface.withValues(alpha: 0.8),
                        padding: const EdgeInsets.all(6),
                        minimumSize: const Size(34, 34),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(8, 0, 8, 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
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
                  if (product.prices?.finalPrice != null)
                    Text(
                      '${product.prices!.finalPrice!} \u20b8',
                      style: textTheme.titleSmall?.copyWith(
                        fontWeight: FontWeight.w700,
                        color: hasDiscount
                            ? colorScheme.error
                            : colorScheme.onSurface,
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
}
