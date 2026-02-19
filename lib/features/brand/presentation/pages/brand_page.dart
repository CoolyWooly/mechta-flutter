import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mechta_flutter/app/di.dart';
import 'package:mechta_flutter/core/navigation/app_link_handler.dart';
import 'package:mechta_flutter/core/domain/entities/product_entity.dart';
import 'package:mechta_flutter/core/utils/picture_url_converter.dart';
import 'package:mechta_flutter/features/brand/domain/entities/brand_entity.dart';
import 'package:mechta_flutter/features/brand/presentation/bloc/brand_bloc.dart';
import 'package:mechta_flutter/features/favorites/domain/usecases/is_favorite.dart';
import 'package:mechta_flutter/features/favorites/domain/usecases/toggle_favorite.dart';
import 'package:mechta_flutter/features/promotions/domain/entities/promotion_entity.dart';
import 'package:mechta_flutter/l10n/app_localizations.dart';

class BrandPage extends StatelessWidget {
  final String brand;
  final String? title;

  const BrandPage({super.key, required this.brand, this.title});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) =>
          sl<BrandBloc>()..add(BrandLoadRequested(brand: brand)),
      child: _BrandView(brand: brand, title: title),
    );
  }
}

class _BrandView extends StatelessWidget {
  final String brand;
  final String? title;

  const _BrandView({required this.brand, this.title});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    return Scaffold(
      appBar: AppBar(title: Text(title ?? brand)),
      body: BlocBuilder<BrandBloc, BrandState>(
        builder: (context, state) {
          return switch (state.status) {
            BrandStatus.initial || BrandStatus.loading =>
              const Center(child: CircularProgressIndicator()),
            BrandStatus.failure => Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(state.errorMessage ?? l10n.loadingError),
                    const SizedBox(height: 16),
                    ElevatedButton(
                      onPressed: () => context.read<BrandBloc>().add(
                            BrandLoadRequested(brand: brand),
                          ),
                      child: Text(l10n.retry),
                    ),
                  ],
                ),
              ),
            BrandStatus.success => _BrandContent(
                brand: state.brand!,
              ),
          };
        },
      ),
    );
  }
}

class _BrandContent extends StatelessWidget {
  final BrandEntity brand;

  const _BrandContent({required this.brand});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final allProducts = [
      ...brand.newProducts,
      ...brand.recommendedProducts,
    ];

    return ListView(
      children: [
        // Banner
        if (brand.banners.isNotEmpty) _BannerSection(banners: brand.banners),

        // Products (new + recommended)
        if (allProducts.isNotEmpty) ...[
          _SectionHeader(title: l10n.products),
          SizedBox(
            height: 260,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              itemCount: allProducts.length,
              itemBuilder: (context, index) =>
                  _ProductCard(product: allProducts[index]),
            ),
          ),
        ],

        // Categories
        if (brand.categories.isNotEmpty) ...[
          _SectionHeader(title: l10n.catalog),
          ...brand.categories.map(
            (cat) => _BrandCategoryTile(category: cat),
          ),
        ],

        // Promotions
        if (brand.promotions.isNotEmpty) ...[
          _SectionHeader(title: l10n.promotions),
          ...brand.promotions.map(
            (promo) => _PromotionCard(promotion: promo),
          ),
        ],

        const SizedBox(height: 16),
      ],
    );
  }
}

class _SectionHeader extends StatelessWidget {
  final String title;

  const _SectionHeader({required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 24, 16, 12),
      child: Text(
        title,
        style: Theme.of(context)
            .textTheme
            .titleLarge
            ?.copyWith(fontWeight: FontWeight.bold),
      ),
    );
  }
}

class _BannerSection extends StatelessWidget {
  final List<BrandBannerEntity> banners;

  const _BannerSection({required this.banners});

  @override
  Widget build(BuildContext context) {
    final banner = banners.first;
    final image = banner.imageMobile ?? banner.imageTablet ?? banner.imageDesktop;
    if (image == null) return const SizedBox.shrink();

    return Padding(
      padding: const EdgeInsets.all(16),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Image.network(
          image,
          fit: BoxFit.cover,
          errorBuilder: (context, error, stackTrace) => const SizedBox.shrink(),
        ),
      ),
    );
  }
}

class _ProductCard extends StatefulWidget {
  final ProductEntity product;

  const _ProductCard({required this.product});

  @override
  State<_ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<_ProductCard> {
  late bool _isFavorite;

  @override
  void initState() {
    super.initState();
    _isFavorite =
        widget.product.id != null && sl<IsFavoriteUseCase>()(widget.product.id!);
  }

  Future<void> _toggleFavorite() async {
    if (widget.product.id == null) return;
    setState(() => _isFavorite = !_isFavorite);
    try {
      await sl<ToggleFavoriteUseCase>()(widget.product.id!);
    } catch (_) {
      if (mounted) setState(() => _isFavorite = !_isFavorite);
    }
  }

  @override
  Widget build(BuildContext context) {
    final product = widget.product;
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    final hasDiscount = product.prices?.basePrice != null &&
        product.prices?.finalPrice != null &&
        product.prices!.basePrice! > product.prices!.finalPrice!;
    final imageUrl = product.images.isNotEmpty ? product.images.first : null;

    return Container(
      width: 160,
      margin: const EdgeInsets.only(right: 12),
      child: Material(
        color: colorScheme.surfaceContainerLow,
        borderRadius: BorderRadius.circular(12),
        clipBehavior: Clip.antiAlias,
        child: InkWell(
          onTap: () {
            final uri = GoRouterState.of(context).uri;
            context.go('${uri.path}/product/${product.slug}');
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
                          _isFavorite ? Icons.favorite : Icons.favorite_outline,
                          color: _isFavorite
                              ? Colors.red
                              : colorScheme.onSurfaceVariant,
                          size: 20,
                        ),
                        onPressed: _toggleFavorite,
                        style: IconButton.styleFrom(
                          backgroundColor:
                              colorScheme.surface.withValues(alpha: 0.8),
                          padding: const EdgeInsets.all(4),
                          minimumSize: const Size(30, 30),
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
                    if (hasDiscount)
                      Text(
                        '${product.prices!.basePrice!} \u20b8',
                        style: textTheme.bodySmall?.copyWith(
                          decoration: TextDecoration.lineThrough,
                          color: colorScheme.onSurfaceVariant,
                        ),
                      ),
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
      ),
    );
  }
}

class _BrandCategoryTile extends StatelessWidget {
  final BrandCategoryEntity category;

  const _BrandCategoryTile({required this.category});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(category.categoryName ?? category.name ?? ''),
      trailing: const Icon(Icons.chevron_right),
      onTap: () {
        final url = category.url;
        if (url == null || url.isEmpty) return;
        sl<AppLinkHandler>().handle(
          context,
          'https://www.mechta.kz/$url',
        );
      },
    );
  }
}

class _PromotionCard extends StatelessWidget {
  final PromotionEntity promotion;

  const _PromotionCard({required this.promotion});

  void _onTap(BuildContext context) {
    final code = promotion.code;
    if (code == null || code.isEmpty) return;
    final uri = GoRouterState.of(context).uri;
    context.go('${uri.path}/promotion/$code');
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: InkWell(
        onTap: () => _onTap(context),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (promotion.imageSrc != null)
              AspectRatio(
                aspectRatio: 16 / 9,
                child: Image.network(
                  promotion.imageSrc!,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) =>
                      const SizedBox(),
                ),
              ),
            Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (promotion.name != null)
                    Text(
                      promotion.name!,
                      style: Theme.of(context)
                          .textTheme
                          .titleMedium
                          ?.copyWith(fontWeight: FontWeight.bold),
                    ),
                  if (promotion.previewText != null) ...[
                    const SizedBox(height: 4),
                    Text(
                      promotion.previewText!,
                      style: Theme.of(context).textTheme.bodyMedium,
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
