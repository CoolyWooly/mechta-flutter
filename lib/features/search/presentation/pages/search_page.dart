import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mechta_flutter/core/navigation/app_link_handler.dart';
import 'package:mechta_flutter/app/di.dart';
import 'package:mechta_flutter/features/search/domain/entities/search_entity.dart';
import 'package:mechta_flutter/features/search/presentation/bloc/search_bloc.dart';
import 'package:mechta_flutter/l10n/app_localizations.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final _controller = TextEditingController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _onChipTapped(String searchText) {
    _controller.text = searchText;
    _controller.selection = TextSelection.fromPosition(
      TextPosition(offset: searchText.length),
    );
    context.read<SearchBloc>().add(SearchChipTapped(searchText));
  }

  void _onVariantTapped(String text) {
    _controller.text = text;
    _controller.selection = TextSelection.fromPosition(
      TextPosition(offset: text.length),
    );
    context.read<SearchBloc>().add(SearchChipTapped(text));
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0,
        title: TextField(
          controller: _controller,
          autofocus: true,
          textInputAction: TextInputAction.search,
          decoration: InputDecoration(
            hintText: l10n.searchProducts,
            border: InputBorder.none,
            contentPadding: const EdgeInsets.symmetric(horizontal: 4),
          ),
          onChanged: (text) {
            context.read<SearchBloc>().add(SearchQueryChanged(text));
          },
          onSubmitted: (text) {
            final trimmed = text.trim();
            if (trimmed.isEmpty) return;
            final uri = GoRouterState.of(context).uri.path;
            final tabRoot = uri.contains('/home')
                ? '/home'
                : uri.contains('/catalog')
                    ? '/catalog'
                    : uri.contains('/cart')
                        ? '/cart'
                        : uri.contains('/favorites')
                            ? '/favorites'
                            : '/profile';
            context.go(
              '$tabRoot/subcatalog/search-results?query=${Uri.encodeComponent(trimmed)}',
            );
          },
        ),
        actions: [
          if (_controller.text.isNotEmpty)
            IconButton(
              icon: const Icon(Icons.close),
              onPressed: () {
                _controller.clear();
                context.read<SearchBloc>().add(const SearchQueryChanged(''));
              },
            ),
        ],
      ),
      body: BlocBuilder<SearchBloc, SearchState>(
        builder: (context, state) {
          if (state.status == SearchStatus.initial) {
            return const SizedBox.shrink();
          }

          if (state.status == SearchStatus.loading && state.chips.isEmpty) {
            return const Center(child: CircularProgressIndicator());
          }

          return ListView(
            children: [

              // Chips
              if (state.chips.isNotEmpty)
                _ChipsSection(
                  chips: state.chips.take(5).toList(),
                  onChipTapped: _onChipTapped,
                ),

              // Variants
              if (state.variants.isNotEmpty)
                _VariantsSection(
                  variants: state.variants.take(5).toList(),
                  onVariantTapped: _onVariantTapped,
                ),

              // Categories
              if (state.categories.isNotEmpty)
                _CategoriesSection(
                  categories: state.categories.take(5).toList(),
                  searchQuery: state.query,
                ),

              // Products
              if (state.products.isNotEmpty)
                _ProductsSection(products: state.products.take(5).toList()),
            ],
          );
        },
      ),
    );
  }
}

class _ChipsSection extends StatelessWidget {
  final List<SearchChipEntity> chips;
  final ValueChanged<String> onChipTapped;

  const _ChipsSection({required this.chips, required this.onChipTapped});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        itemCount: chips.length,
        separatorBuilder: (_, _) => const SizedBox(width: 8),
        itemBuilder: (context, index) {
          final chip = chips[index];
          return ActionChip(
            label: Text(chip.label),
            onPressed: () => onChipTapped(chip.searchText),
          );
        },
      ),
    );
  }
}

class _CategoriesSection extends StatelessWidget {
  final List<SearchCategoryEntity> categories;
  final String? searchQuery;

  const _CategoriesSection({required this.categories, this.searchQuery});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 8, 16, 4),
          child: Text(
            'Категории',
            style: textTheme.titleSmall?.copyWith(
              fontWeight: FontWeight.w600,
              color: colorScheme.onSurfaceVariant,
            ),
          ),
        ),
        ...categories.map((category) => ListTile(
              leading: Icon(
                Icons.category_outlined,
                color: colorScheme.onSurfaceVariant,
              ),
              title: Text(category.name),
              dense: true,
              onTap: () {
                sl<AppLinkHandler>().handle(
                  context,
                  category.link,
                  searchQuery: searchQuery,
                );
              },
            )),
      ],
    );
  }
}

class _VariantsSection extends StatelessWidget {
  final List<SearchVariantEntity> variants;
  final ValueChanged<String> onVariantTapped;

  const _VariantsSection({
    required this.variants,
    required this.onVariantTapped,
  });

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 8, 16, 4),
          child: Text(
            'Часто ищут',
            style: textTheme.titleSmall?.copyWith(
              fontWeight: FontWeight.w600,
              color: colorScheme.onSurfaceVariant,
            ),
          ),
        ),
        ...variants.map((variant) {
          return ListTile(
            leading: Icon(Icons.search, color: colorScheme.onSurfaceVariant),
            title: Text(variant.text),
            dense: true,
            onTap: () => onVariantTapped(variant.text),
          );
        }),
      ],
    );
  }
}

class _ProductsSection extends StatelessWidget {
  final List<SearchProductEntity> products;

  const _ProductsSection({required this.products});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 12, 16, 8),
          child: Text(
            'Товары',
            style: textTheme.titleSmall?.copyWith(
              fontWeight: FontWeight.w600,
              color: colorScheme.onSurfaceVariant,
            ),
          ),
        ),
        ...products.map((product) => _ProductTile(product: product)),
      ],
    );
  }
}

class _ProductTile extends StatelessWidget {
  final SearchProductEntity product;

  const _ProductTile({required this.product});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    return InkWell(
      onTap: () {
        sl<AppLinkHandler>().handle(context, product.link);
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.network(
                product.imageUrl,
                width: 56,
                height: 56,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) => Container(
                  width: 56,
                  height: 56,
                  color: colorScheme.surfaceContainerHighest,
                  child: Icon(
                    Icons.image_not_supported_outlined,
                    size: 24,
                    color: colorScheme.onSurfaceVariant,
                  ),
                ),
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    product.name,
                    style: textTheme.bodyMedium,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 2),
                  Text(
                    '${product.price} ₸',
                    style: textTheme.titleSmall?.copyWith(
                      fontWeight: FontWeight.w700,
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
