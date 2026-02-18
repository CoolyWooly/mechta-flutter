import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:mechta_flutter/app/di.dart';
import 'package:mechta_flutter/features/catalog/domain/entities/brand_entity.dart';
import 'package:mechta_flutter/features/catalog/domain/entities/category_entity.dart';
import 'package:mechta_flutter/features/catalog/presentation/bloc/catalog_bloc.dart';
import 'package:mechta_flutter/l10n/app_localizations.dart';

class CatalogPage extends StatelessWidget {
  const CatalogPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => sl<CatalogBloc>()..add(const CatalogLoadRequested()),
      child: const _CatalogView(),
    );
  }
}

class _CatalogView extends StatelessWidget {
  const _CatalogView();

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text(l10n.catalog),
          bottom: TabBar(
            tabs: [
              Tab(text: l10n.catalog),
              Tab(text: l10n.brands),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            // Existing Catalog content
            BlocBuilder<CatalogBloc, CatalogState>(
              builder: (context, state) {
                return switch (state.status) {
                  CatalogStatus.initial || CatalogStatus.loading =>
                    const Center(child: CircularProgressIndicator()),
                  CatalogStatus.failure => Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(state.errorMessage ?? l10n.loadingError),
                        const SizedBox(height: 16),
                        ElevatedButton(
                          onPressed: () => context.read<CatalogBloc>().add(
                            const CatalogLoadRequested(),
                          ),
                          child: Text(l10n.retry),
                        ),
                      ],
                    ),
                  ),
                  CatalogStatus.success => GridView.builder(
                    padding: const EdgeInsets.all(16),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                          mainAxisSpacing: 12,
                          crossAxisSpacing: 12,
                        ),
                    itemCount: state.categories.length,
                    itemBuilder: (context, index) {
                      return _CategoryCard(category: state.categories[index]);
                    },
                  ),
                };
              },
            ),
            // Brands content
            BlocBuilder<CatalogBloc, CatalogState>(
              builder: (context, state) {
                return switch (state.status) {
                  CatalogStatus.initial || CatalogStatus.loading =>
                    const Center(child: CircularProgressIndicator()),
                  CatalogStatus.failure => Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(state.errorMessage ?? l10n.loadingError),
                        const SizedBox(height: 16),
                        ElevatedButton(
                          onPressed: () => context.read<CatalogBloc>().add(
                            const CatalogLoadRequested(),
                          ),
                          child: Text(l10n.retry),
                        ),
                      ],
                    ),
                  ),
                  CatalogStatus.success => GridView.builder(
                    padding: const EdgeInsets.all(16),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                          mainAxisSpacing: 12,
                          crossAxisSpacing: 12,
                          childAspectRatio: 2,
                        ),
                    itemCount: state.brands.length,
                    itemBuilder: (context, index) {
                      return _BrandCard(brand: state.brands[index]);
                    },
                  ),
                };
              },
            ),
          ],
        ),
      ),
    );
  }
}

class _CategoryCard extends StatelessWidget {
  final CategoryEntity category;

  const _CategoryCard({required this.category});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Material(
      color: colorScheme.surfaceContainerLow,
      borderRadius: BorderRadius.circular(12),
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: () => context.go('/catalog/subcatalog/${category.url}'),
        child: Stack(
          children: [
            // Image — bottom right
            Positioned(
              bottom: 0,
              right: 0,
              width: 90,
              height: 90,
              child: Image.network(
                category.image,
                fit: BoxFit.contain,
                errorBuilder: (context, error, stackTrace) => Icon(
                  Icons.image_not_supported_outlined,
                  size: 32,
                  color: colorScheme.onSurfaceVariant,
                ),
              ),
            ),
            // Category name — top left
            Positioned(
              top: 12,
              left: 12,
              right: 12,
              child: Text(
                category.name,
                style: Theme.of(context).textTheme.titleSmall?.copyWith(fontWeight: FontWeight.w600),
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _BrandCard extends StatelessWidget {
  final BrandEntity brand;

  const _BrandCard({required this.brand});

  Widget _buildBrandImage(String url, ColorScheme colorScheme) {
    final isSvg = url.toLowerCase().endsWith('.svg');
    if (isSvg) {
      return SvgPicture.network(
        url,
        fit: BoxFit.contain,
        placeholderBuilder: (_) =>
            const Center(child: CircularProgressIndicator(strokeWidth: 2)),
      );
    }
    return Image.network(
      url,
      fit: BoxFit.contain,
      errorBuilder: (context, error, stackTrace) => Icon(
        Icons.image_not_supported_outlined,
        size: 32,
        color: colorScheme.onSurfaceVariant,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final imageUrl = brand.image?.light ?? brand.image?.dark;

    return Material(
      color: colorScheme.surfaceContainerLow,
      borderRadius: BorderRadius.circular(12),
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: () => context.go(
              '/catalog/brand/${brand.slug}?title=${Uri.encodeComponent(brand.name)}'),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: imageUrl != null
              ? _buildBrandImage(imageUrl, colorScheme)
              : Icon(
                  Icons.business_center_outlined,
                  size: 32,
                  color: colorScheme.onSurfaceVariant,
                ),
        ),
      ),
    );
  }
}
