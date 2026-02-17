import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mechta_flutter/app/di.dart';
import 'package:mechta_flutter/core/domain/entities/product_entity.dart';
import 'package:mechta_flutter/core/utils/picture_url_converter.dart';
import 'package:mechta_flutter/features/subcatalog/presentation/bloc/subcatalog_bloc.dart';

class SubcatalogPage extends StatelessWidget {
  final String slug;
  final String title;
  final int page;
  final double? minPrice;
  final double? maxPrice;
  final String? orderBy;
  final String? direction;
  final Map<String, List<String>>? properties;

  const SubcatalogPage({
    super.key,
    required this.slug,
    required this.title,
    this.page = 1,
    this.minPrice,
    this.maxPrice,
    this.orderBy,
    this.direction,
    this.properties,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => sl<SubcatalogBloc>()
        ..add(SubcatalogLoadRequested(
          slug: slug,
          page: page,
          minPrice: minPrice,
          maxPrice: maxPrice,
          orderBy: orderBy,
          direction: direction,
          properties: properties,
        )),
      child: _SubcatalogView(title: title),
    );
  }
}

class _SubcatalogView extends StatefulWidget {
  final String title;

  const _SubcatalogView({required this.title});

  @override
  State<_SubcatalogView> createState() => _SubcatalogViewState();
}

class _SubcatalogViewState extends State<_SubcatalogView> {
  final _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    _scrollController
      ..removeListener(_onScroll)
      ..dispose();
    super.dispose();
  }

  void _onScroll() {
    if (_isBottom) {
      context.read<SubcatalogBloc>().add(const SubcatalogNextPageRequested());
    }
  }

  bool get _isBottom {
    if (!_scrollController.hasClients) return false;
    final maxScroll = _scrollController.position.maxScrollExtent;
    final currentScroll = _scrollController.offset;
    return currentScroll >= maxScroll - 200;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: BlocBuilder<SubcatalogBloc, SubcatalogState>(
        builder: (context, state) {
          return switch (state.status) {
            SubcatalogStatus.initial => const Center(
                child: CircularProgressIndicator(),
              ),
            SubcatalogStatus.failure when state.products.isEmpty => Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(state.errorMessage ?? 'Ошибка загрузки'),
                    const SizedBox(height: 16),
                    ElevatedButton(
                      onPressed: () => context.read<SubcatalogBloc>().add(
                            SubcatalogLoadRequested(slug: state.slug),
                          ),
                      child: const Text('Повторить'),
                    ),
                  ],
                ),
              ),
            _ => _buildProductGrid(context, state),
          };
        },
      ),
    );
  }

  Widget _buildProductGrid(BuildContext context, SubcatalogState state) {
    return GridView.builder(
      controller: _scrollController,
      padding: const EdgeInsets.all(16),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 12,
        crossAxisSpacing: 12,
        childAspectRatio: 0.65,
      ),
      itemCount:
          state.hasReachedMax ? state.products.length : state.products.length + 1,
      itemBuilder: (context, index) {
        if (index >= state.products.length) {
          return const Center(child: CircularProgressIndicator());
        }
        return _ProductCard(product: state.products[index]);
      },
    );
  }
}

class _ProductCard extends StatelessWidget {
  final ProductEntity product;

  const _ProductCard({required this.product});

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
          final uri = GoRouterState.of(context).uri;
          context.go('${uri.path}/product/${product.slug}');
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Center(
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
