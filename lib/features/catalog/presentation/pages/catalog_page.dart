import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mechta_flutter/app/di.dart';
import 'package:mechta_flutter/features/catalog/domain/entities/brand_entity.dart';
import 'package:mechta_flutter/features/catalog/domain/entities/category_entity.dart';
import 'package:mechta_flutter/features/catalog/presentation/bloc/catalog_bloc.dart';

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
    return DefaultTabController(
      length: 2, // For 'Catalog' and 'Brands'
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Каталог'),
          bottom: const TabBar(
            tabs: [
              Tab(text: 'Каталог'),
              Tab(text: 'Бренды'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            // Existing Catalog content
            BlocBuilder<CatalogBloc, CatalogState>(
              builder: (context, state) {
                return switch (state.status) {
                  CatalogStatus.initial ||
                  CatalogStatus.loading =>
                    const Center(
                      child: CircularProgressIndicator(),
                    ),
                  CatalogStatus.failure => Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(state.errorMessage ?? 'Ошибка загрузки'),
                          const SizedBox(height: 16),
                          ElevatedButton(
                            onPressed: () => context
                                .read<CatalogBloc>()
                                .add(const CatalogLoadRequested()),
                            child: const Text('Повторить'),
                          ),
                        ],
                      ),
                    ),
                  CatalogStatus.success => GridView.builder(
                      padding: const EdgeInsets.all(16),
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisSpacing: 12,
                        crossAxisSpacing: 12,
                      ),
                      itemCount: state.categories.length,
                      itemBuilder: (context, index) {
                        return _CategoryCard(
                            category: state.categories[index]);
                      },
                    ),
                };
              },
            ),
            // Brands content
            BlocBuilder<CatalogBloc, CatalogState>(
              builder: (context, state) {
                return switch (state.status) {
                  CatalogStatus.initial ||
                  CatalogStatus.loading =>
                    const Center(
                      child: CircularProgressIndicator(),
                    ),
                  CatalogStatus.failure => Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(state.errorMessage ?? 'Ошибка загрузки'),
                          const SizedBox(height: 16),
                          ElevatedButton(
                            onPressed: () => context
                                .read<CatalogBloc>()
                                .add(const CatalogLoadRequested()),
                            child: const Text('Повторить'),
                          ),
                        ],
                      ),
                    ),
                  CatalogStatus.success => ListView.builder(
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
        onTap: () => context.go('/catalog/product/${category.url}'),
        child: Stack(
          children: [
            // Category name — top left
            Positioned(
              top: 12,
              left: 12,
              right: 48,
              child: Text(
                category.name,
                style: Theme.of(context).textTheme.titleSmall?.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
              ),
            ),
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
          ],
        ),
      ),
    );
  }
}

class _BrandCard extends StatelessWidget {
  final BrandEntity brand;

  const _BrandCard({required this.brand});

  @override
  Widget build(BuildContext context) {
    final imageUrl = brand.image?.light ?? brand.image?.dark;
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: ListTile(
        leading: imageUrl != null
            ? Image.network(
                imageUrl,
                width: 50,
                height: 50,
                fit: BoxFit.contain,
                errorBuilder: (context, error, stackTrace) =>
                    const Icon(Icons.image_not_supported_outlined),
              )
            : const Icon(Icons.business_center_outlined),
        title: Text(brand.name),
        onTap: () {
          // TODO: Implement brand tap navigation
        },
      ),
    );
  }
}
