import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mechta_flutter/app/di.dart';
import 'package:mechta_flutter/core/router/route_names.dart';
import 'package:mechta_flutter/features/subcatalog/domain/entities/category_entity.dart';
import 'package:mechta_flutter/features/filter/domain/entities/filter_entity.dart';
import 'package:mechta_flutter/features/subcatalog/presentation/bloc/subcatalog_bloc.dart';
import 'package:mechta_flutter/core/widgets/product_card.dart';
import 'package:mechta_flutter/core/widgets/product_card_skeleton.dart';
import 'package:mechta_flutter/core/widgets/search_bar_button.dart';
import 'package:mechta_flutter/l10n/app_localizations.dart';

class SubcatalogPage extends StatelessWidget {
  final String slug;
  final int page;
  final double? minPrice;
  final double? maxPrice;
  final String? orderBy;
  final String? direction;
  final Map<String, List<String>>? properties;
  final String? query;

  const SubcatalogPage({
    super.key,
    required this.slug,
    this.page = 1,
    this.minPrice,
    this.maxPrice,
    this.orderBy,
    this.direction,
    this.properties,
    this.query,
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
          query: query,
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
  ProductCardViewMode _viewMode = ProductCardViewMode.vertical;

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
          IconButton(
            icon: Icon(
              _viewMode == ProductCardViewMode.vertical
                  ? Icons.view_list
                  : Icons.grid_view,
            ),
            onPressed: () => setState(() {
              _viewMode = _viewMode == ProductCardViewMode.vertical
                  ? ProductCardViewMode.horizontal
                  : ProductCardViewMode.vertical;
            }),
            tooltip: _viewMode == ProductCardViewMode.vertical
                ? 'Список'
                : 'Плитка',
          ),
        ],
      ),
      body: BlocBuilder<SubcatalogBloc, SubcatalogState>(
        builder: (context, state) {
          return switch (state.status) {
            SubcatalogStatus.initial => _SubcatalogSkeleton(viewMode: _viewMode),
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
        // Search bar button
        SliverToBoxAdapter(
          child: SearchBarButton(
            text: state.query,
            onTap: () {
              final uri = GoRouterState.of(context).uri.path;
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
              context.go('$tabRoot/search');
            },
          ),
        ),

        // Available categories from search
        if (state.availableCategories.isNotEmpty)
          SliverToBoxAdapter(
            child: SizedBox(
              height: 44,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: 16),
                itemCount: state.availableCategories.length,
                separatorBuilder: (context, index) => const SizedBox(width: 8),
                itemBuilder: (context, index) {
                  final cat = state.availableCategories[index];
                  final isSelected = cat.slug == state.slug;
                  return ChoiceChip(
                    label: Text('${cat.name} (${cat.productsCount})'),
                    selected: isSelected,
                    onSelected: (_) {
                      if (!isSelected) {
                        context.read<SubcatalogBloc>().add(
                              SubcatalogSearchCategoryChanged(slug: cat.slug),
                            );
                      }
                    },
                  );
                },
              ),
            ),
          ),

        // Children categories
        if (state.children.isNotEmpty)
          _ChildrenCategoriesSection(children: state.children),

        // Product grid or list
        SliverPadding(
          padding: const EdgeInsets.all(16),
          sliver: _viewMode == ProductCardViewMode.vertical
              ? SliverGrid(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 12,
                    crossAxisSpacing: 12,
                    childAspectRatio: 0.65,
                  ),
                  delegate: _buildProductDelegate(state),
                )
              : SliverList(
                  delegate: _buildProductDelegate(state),
                ),
        ),
      ],
    );
  }

  SliverChildBuilderDelegate _buildProductDelegate(SubcatalogState state) {
    return SliverChildBuilderDelegate(
      (context, index) {
        if (index >= state.products.length) {
          return const Center(
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: CircularProgressIndicator(),
            ),
          );
        }
        final product = state.products[index];
        final child = ProductCard(
          product: product,
          mode: _viewMode,
          onTap: () {
            final uri = GoRouterState.of(context).uri;
            context.go('${uri.path}/product/${product.slug}');
          },
        );

        if (_viewMode == ProductCardViewMode.horizontal) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 12),
            child: SizedBox(height: 140, child: child),
          );
        }

        return child;
      },
      childCount: state.hasReachedMax
          ? state.products.length
          : state.products.length + 1,
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

class _SubcatalogSkeleton extends StatelessWidget {
  final ProductCardViewMode viewMode;

  const _SubcatalogSkeleton({required this.viewMode});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverPadding(
          padding: const EdgeInsets.all(16),
          sliver: viewMode == ProductCardViewMode.vertical
              ? SliverGrid.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 12,
                    crossAxisSpacing: 12,
                    childAspectRatio: 0.65,
                  ),
                  itemCount: 6,
                  itemBuilder: (context, index) => const ProductCardSkeleton(
                    mode: ProductCardViewMode.vertical,
                  ),
                )
              : SliverList.builder(
                  itemCount: 6,
                  itemBuilder: (context, index) => const Padding(
                    padding: EdgeInsets.only(bottom: 12),
                    child: SizedBox(
                      height: 140,
                      child: ProductCardSkeleton(
                        mode: ProductCardViewMode.horizontal,
                      ),
                    ),
                  ),
                ),
        ),
      ],
    );
  }
}
