import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mechta_flutter/app/di.dart';
import 'package:mechta_flutter/core/domain/entities/product_entity.dart';
import 'package:mechta_flutter/core/router/route_names.dart';
import 'package:mechta_flutter/core/utils/picture_url_converter.dart';
import 'package:mechta_flutter/features/favorites/domain/usecases/is_favorite.dart';
import 'package:mechta_flutter/features/favorites/domain/usecases/toggle_favorite.dart';
import 'package:mechta_flutter/features/subcatalog/domain/entities/category_entity.dart';
import 'package:mechta_flutter/features/subcatalog/domain/entities/filter_entity.dart';
import 'package:mechta_flutter/features/subcatalog/presentation/bloc/subcatalog_bloc.dart';
import 'package:mechta_flutter/l10n/app_localizations.dart';

class SubcatalogPage extends StatelessWidget {
  final String slug;
  final int page;
  final double? minPrice;
  final double? maxPrice;
  final String? orderBy;
  final String? direction;
  final Map<String, List<String>>? properties;

  const SubcatalogPage({
    super.key,
    required this.slug,
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
        ))
        ..add(SubcatalogCategoryChildrenRequested(slug: slug)),
      child: _SubcatalogView(),
    );
  }
}

class _SubcatalogView extends StatefulWidget {

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

  Future<void> _openFilters(BuildContext context) async {
    final bloc = context.read<SubcatalogBloc>();
    final state = bloc.state;
    final currentPath = GoRouterState.of(context).uri.path;
    final result = await context.push<FilterResult>(
      '$currentPath/${RoutePaths.filter}',
      extra: FilterResult(
        properties: state.properties,
        minPrice: state.minPrice,
        maxPrice: state.maxPrice,
      ),
    );
    if (result != null && mounted) {
      bloc.add(SubcatalogLoadRequested(
        slug: state.slug,
        properties: result.properties,
        minPrice: result.minPrice,
        maxPrice: result.maxPrice,
        orderBy: state.orderBy,
        direction: state.direction,
      ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: BlocSelector<SubcatalogBloc, SubcatalogState, String?>(
          selector: (state) => state.categoryName,
          builder: (context, categoryName) {
            return Text(categoryName ?? '');
          },
        ),
        actions: [
          BlocSelector<SubcatalogBloc, SubcatalogState, bool>(
            selector: (state) =>
                (state.properties?.isNotEmpty ?? false) ||
                state.minPrice != null ||
                state.maxPrice != null,
            builder: (context, hasFilters) {
              return IconButton(
                icon: Badge(
                  isLabelVisible: hasFilters,
                  child: const Icon(Icons.tune),
                ),
                onPressed: () => _openFilters(context),
                tooltip: 'Фильтры',
              );
            },
          ),
        ],
      ),
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
                    Text(state.errorMessage ?? AppLocalizations.of(context)!.loadingError),
                    const SizedBox(height: 16),
                    ElevatedButton(
                      onPressed: () => context.read<SubcatalogBloc>().add(
                            SubcatalogLoadRequested(slug: state.slug),
                          ),
                      child: Text(AppLocalizations.of(context)!.retry),
                    ),
                  ],
                ),
              ),
            _ => _buildContent(context, state),
          };
        },
      ),
    );
  }

  Widget _buildContent(BuildContext context, SubcatalogState state) {
    return CustomScrollView(
      controller: _scrollController,
      slivers: [
        // Children categories
        if (state.children.isNotEmpty)
          _ChildrenCategoriesSection(children: state.children),

        // Product grid
        SliverPadding(
          padding: const EdgeInsets.all(16),
          sliver: SliverGrid(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 12,
              crossAxisSpacing: 12,
              childAspectRatio: 0.65,
            ),
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                if (index >= state.products.length) {
                  return const Center(child: CircularProgressIndicator());
                }
                return _ProductCard(product: state.products[index]);
              },
              childCount: state.hasReachedMax
                  ? state.products.length
                  : state.products.length + 1,
            ),
          ),
        ),
      ],
    );
  }
}

class _ChildrenCategoriesSection extends StatelessWidget {
  final List<CategoryChildEntity> children;

  const _ChildrenCategoriesSection({required this.children});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return SliverToBoxAdapter(
      child: SizedBox(
        height: 48,
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          itemCount: children.length,
          separatorBuilder: (_, _) => const SizedBox(width: 8),
          itemBuilder: (context, index) {
            final child = children[index];
            return ActionChip(
              label: Text(child.name),
              backgroundColor: colorScheme.surfaceContainerHighest,
              onPressed: () {
                _navigateToChild(context, child);
              },
            );
          },
        ),
      ),
    );
  }

  void _navigateToChild(BuildContext context, CategoryChildEntity child) {
    final uri = GoRouterState.of(context).uri.path;
    // Find the tab root to build the push path
    const tabRoots = [
      RoutePaths.home,
      RoutePaths.catalog,
      RoutePaths.cart,
      RoutePaths.favorites,
      RoutePaths.profile,
    ];
    var tabRoot = RoutePaths.home;
    for (final root in tabRoots) {
      if (uri.startsWith(root)) {
        tabRoot = root;
        break;
      }
    }
    context.push('$tabRoot/subcatalog/${child.slug}');
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
    _isFavorite = widget.product.id != null && sl<IsFavoriteUseCase>()(widget.product.id!);
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
                        color: _isFavorite ? Colors.red : colorScheme.onSurfaceVariant,
                        size: 22,
                      ),
                      onPressed: _toggleFavorite,
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
