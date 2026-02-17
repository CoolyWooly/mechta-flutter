import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mechta_flutter/app/di.dart';
import 'package:mechta_flutter/core/navigation/app_link_handler.dart';
import 'package:go_router/go_router.dart';
import 'package:mechta_flutter/features/catalog/domain/entities/brand_entity.dart';
import 'package:mechta_flutter/features/home/domain/entities/popular_category_entity.dart';
import 'package:mechta_flutter/core/domain/entities/product_entity.dart';
import 'package:mechta_flutter/core/utils/picture_url_converter.dart';
import 'package:mechta_flutter/features/home/domain/entities/banner_entity.dart';
import 'package:mechta_flutter/features/home/domain/entities/news_entity.dart';
import 'package:mechta_flutter/features/home/domain/entities/social_entity.dart';
import 'package:mechta_flutter/features/home/domain/entities/top_category_entity.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:mechta_flutter/features/home/presentation/bloc/home_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => sl<HomeBloc>()..add(const HomeLoadRequested()),
      child: const _HomeView(),
    );
  }
}

class _HomeView extends StatelessWidget {
  const _HomeView();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Главная')),
      body: BlocBuilder<HomeBloc, HomeState>(
        builder: (context, state) {
          return switch (state.status) {
            HomeStatus.initial || HomeStatus.loading => const Center(
              child: CircularProgressIndicator(),
            ),
            HomeStatus.failure => Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(state.errorMessage ?? 'Ошибка загрузки'),
                  const SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: () => context.read<HomeBloc>().add(
                      const HomeRefreshRequested(),
                    ),
                    child: const Text('Повторить'),
                  ),
                ],
              ),
            ),
            HomeStatus.success => RefreshIndicator(
              onRefresh: () async {
                context.read<HomeBloc>().add(const HomeRefreshRequested());
              },
              child: ListView(
                children: [
                  if (state.banners.isNotEmpty)
                    _BannerPager(banners: state.banners),
                  if (state.categories.isNotEmpty)
                    _CategoriesSection(categories: state.categories),
                  if (state.brands.isNotEmpty)
                    _BrandsSection(brands: state.brands),
                  if (state.topCategories.isNotEmpty)
                    _TopCategoriesSection(topCategories: state.topCategories),
                  if (state.news.isNotEmpty)
                    _NewsSection(news: state.news),
                  if (state.socials.isNotEmpty)
                    _SocialsSection(socials: state.socials),
                ],
              ),
            ),
          };
        },
      ),
    );
  }
}

class _BannerPager extends StatefulWidget {
  final List<BannerEntity> banners;

  const _BannerPager({required this.banners});

  @override
  State<_BannerPager> createState() => _BannerPagerState();
}

class _BannerPagerState extends State<_BannerPager> {
  final _controller = PageController();
  int _currentPage = 0;
  Timer? _autoScrollTimer;

  @override
  void initState() {
    super.initState();
    _startAutoScroll();
  }

  @override
  void dispose() {
    _autoScrollTimer?.cancel();
    _controller.dispose();
    super.dispose();
  }

  void _startAutoScroll() {
    _autoScrollTimer = Timer.periodic(const Duration(seconds: 4), (_) {
      if (!mounted) return;
      final nextPage = (_currentPage + 1) % widget.banners.length;
      _controller.animateToPage(
        nextPage,
        duration: const Duration(milliseconds: 400),
        curve: Curves.easeInOut,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Column(
      children: [
        AspectRatio(
          aspectRatio: 16 / 9,
          child: PageView.builder(
            controller: _controller,
            itemCount: widget.banners.length,
            onPageChanged: (index) => setState(() => _currentPage = index),
            itemBuilder: (context, index) {
              final banner = widget.banners[index];
              return GestureDetector(
                onTap: () {
                  if (banner.url.isNotEmpty) {
                    sl<AppLinkHandler>().handle(context, banner.url);
                  }
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.network(
                      banner.mobile,
                      fit: BoxFit.cover,
                      loadingBuilder: (context, child, loadingProgress) {
                        if (loadingProgress == null) return child;
                        return Container(
                          color: colorScheme.surfaceContainerHighest,
                          child: const Center(
                            child: CircularProgressIndicator(strokeWidth: 2),
                          ),
                        );
                      },
                      errorBuilder: (context, error, stackTrace) {
                        return Container(
                          color: colorScheme.surfaceContainerHighest,
                          child: Center(
                            child: Icon(
                              Icons.image_not_supported_outlined,
                              size: 48,
                              color: colorScheme.onSurfaceVariant,
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
              );
            },
          ),
        ),
        const SizedBox(height: 12),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(
            widget.banners.length,
            (index) => AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              margin: const EdgeInsets.symmetric(horizontal: 3),
              width: _currentPage == index ? 20 : 6,
              height: 6,
              decoration: BoxDecoration(
                color: _currentPage == index
                    ? colorScheme.primary
                    : colorScheme.outlineVariant,
                borderRadius: BorderRadius.circular(3),
              ),
            ),
          ),
        ),
        const SizedBox(height: 16),
      ],
    );
  }
}

class _CategoriesSection extends StatelessWidget {
  final List<PopularCategoryEntity> categories;

  const _CategoriesSection({required this.categories});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            'Популярные категории',
            style: Theme.of(
              context,
            ).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w600),
          ),
        ),
        const SizedBox(height: 12),
        GridView.builder(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            mainAxisSpacing: 12,
            crossAxisSpacing: 12,
            childAspectRatio: 0.9
          ),
          itemCount: categories.length,
          itemBuilder: (context, index) {
            return _CategoryTile(category: categories[index]);
          },
        ),
        const SizedBox(height: 16),
      ],
    );
  }
}

class _CategoryTile extends StatelessWidget {
  final PopularCategoryEntity category;

  const _CategoryTile({required this.category});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Material(
      color: colorScheme.surfaceContainerLow,
      borderRadius: BorderRadius.circular(12),
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: () => sl<AppLinkHandler>().handle(context, category.url),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8),
              child: Image.network(
                category.image,
                fit: BoxFit.contain,
                height: 64,
                width: 64,
                errorBuilder: (context, error, stackTrace) => Icon(
                  Icons.image_not_supported_outlined,
                  color: colorScheme.onSurfaceVariant,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(8, 0, 8, 8),
              child: Text(
                category.title,
                style: Theme.of(
                  context,
                ).textTheme.labelSmall?.copyWith(fontWeight: FontWeight.w600),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _BrandsSection extends StatelessWidget {
  final List<BrandEntity> brands;

  const _BrandsSection({required this.brands});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            'Популярные бренды',
            style: Theme.of(
              context,
            ).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w600),
          ),
        ),
        const SizedBox(height: 12),
        GridView.builder(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            mainAxisSpacing: 12,
            crossAxisSpacing: 12,
            childAspectRatio: 2
          ),
          itemCount: brands.length,
          itemBuilder: (context, index) {
            return _BrandTile(brand: brands[index]);
          },
        ),
        const SizedBox(height: 16),
      ],
    );
  }
}

class _BrandTile extends StatelessWidget {
  final BrandEntity brand;

  const _BrandTile({required this.brand});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final imageUrl = brand.image?.light ?? brand.image?.dark;

    return Material(
      color: colorScheme.surfaceContainerLow,
      borderRadius: BorderRadius.circular(12),
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: () {
          // TODO: Implement brand tap navigation
        },
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: imageUrl != null
              ? _buildImage(imageUrl, colorScheme)
              : Icon(
                  Icons.business_center_outlined,
                  size: 32,
                  color: colorScheme.onSurfaceVariant,
                ),
        ),
      ),
    );
  }

  Widget _buildImage(String url, ColorScheme colorScheme) {
    if (url.toLowerCase().endsWith('.svg')) {
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
}

class _TopCategoriesSection extends StatelessWidget {
  final List<TopCategoryEntity> topCategories;

  const _TopCategoriesSection({required this.topCategories});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        for (final topCategory in topCategories)
          if (topCategory.products.isNotEmpty)
            _TopCategoryBlock(topCategory: topCategory),
      ],
    );
  }
}

class _TopCategoryBlock extends StatelessWidget {
  final TopCategoryEntity topCategory;

  const _TopCategoryBlock({required this.topCategory});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            topCategory.category?.name ?? '',
            style: Theme.of(context)
                .textTheme
                .titleMedium
                ?.copyWith(fontWeight: FontWeight.w600),
          ),
        ),
        const SizedBox(height: 12),
        SizedBox(
          height: 260,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            itemCount: topCategory.products.length,
            separatorBuilder: (_, _) => const SizedBox(width: 12),
            itemBuilder: (context, index) {
              return _ProductCard(product: topCategory.products[index]);
            },
          ),
        ),
        const SizedBox(height: 16),
      ],
    );
  }
}

class _ProductCard extends StatelessWidget {
  final ProductEntity product;

  const _ProductCard({required this.product});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final hasDiscount = product.prices?.basePrice != null &&
        product.prices?.finalPrice != null &&
        product.prices!.basePrice! > product.prices!.finalPrice!;

    return SizedBox(
      width: 150,
      child: Material(
        color: colorScheme.surfaceContainerLow,
        borderRadius: BorderRadius.circular(12),
        clipBehavior: Clip.antiAlias,
        child: InkWell(
          onTap: () {
            if (product.slug != null) {
              context.go('/home/product/${product.slug}');
            }
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius:
                    const BorderRadius.vertical(top: Radius.circular(12)),
                child: Image.network(
                  PictureUrlConverter.getCompressed(
                    product.images.isNotEmpty ? product.images.first : null,
                    300,
                  ),
                  width: 150,
                  height: 150,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) => Container(
                    width: 150,
                    height: 150,
                    color: colorScheme.surfaceContainerHighest,
                    child: Center(
                      child: Icon(
                        Icons.image_not_supported_outlined,
                        size: 32,
                        color: colorScheme.onSurfaceVariant,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    if (product.prices?.finalPrice != null)
                      Text(
                        '${_formatPrice(product.prices!.finalPrice!)} ₸',
                        style: Theme.of(context)
                            .textTheme
                            .titleSmall
                            ?.copyWith(fontWeight: FontWeight.w700),
                      ),
                    if (hasDiscount)
                      Text(
                        '${_formatPrice(product.prices!.basePrice!)} ₸',
                        style:
                            Theme.of(context).textTheme.labelSmall?.copyWith(
                                  color: colorScheme.onSurfaceVariant,
                                  decoration: TextDecoration.lineThrough,
                                ),
                      ),
                    const SizedBox(height: 4),
                    Text(
                      product.name ?? '',
                      style: Theme.of(context).textTheme.labelSmall,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
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

  String _formatPrice(int price) {
    final str = price.toString();
    final buffer = StringBuffer();
    for (var i = 0; i < str.length; i++) {
      if (i > 0 && (str.length - i) % 3 == 0) buffer.write(' ');
      buffer.write(str[i]);
    }
    return buffer.toString();
  }
}

class _NewsSection extends StatelessWidget {
  final List<NewsEntity> news;

  const _NewsSection({required this.news});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            'Новости',
            style: Theme.of(context)
                .textTheme
                .titleMedium
                ?.copyWith(fontWeight: FontWeight.w600),
          ),
        ),
        const SizedBox(height: 12),
        SizedBox(
          height: 290,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            itemCount: news.length,
            separatorBuilder: (_, _) => const SizedBox(width: 12),
            itemBuilder: (context, index) {
              final item = news[index];
              return SizedBox(
                width: 180,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.network(
                        item.image,
                        width: 180,
                        height: 180,
                        fit: BoxFit.cover,
                        errorBuilder: (context, error, stackTrace) =>
                            Container(
                          width: 180,
                          height: 180,
                          color: colorScheme.surfaceContainerHighest,
                          child: Center(
                            child: Icon(
                              Icons.image_not_supported_outlined,
                              size: 32,
                              color: colorScheme.onSurfaceVariant,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      item.title,
                      style: Theme.of(context).textTheme.labelMedium?.copyWith(
                            fontWeight: FontWeight.w600,
                          ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    if (item.previewText.isNotEmpty) ...[
                      const SizedBox(height: 2),
                      Text(
                        item.previewText,
                        style: Theme.of(context).textTheme.labelSmall?.copyWith(
                              color: colorScheme.onSurfaceVariant,
                            ),
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ],
                ),
              );
            },
          ),
        ),
        const SizedBox(height: 16),
      ],
    );
  }
}

class _SocialsSection extends StatelessWidget {
  final List<SocialEntity> socials;

  const _SocialsSection({required this.socials});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Мы в соцсетях',
            style: Theme.of(context)
                .textTheme
                .titleMedium
                ?.copyWith(fontWeight: FontWeight.w600),
          ),
          const SizedBox(height: 12),
          Row(
            children: socials.map((social) {
              final iconUrl = social.icon?.light ?? social.icon?.dark;
              return Padding(
                padding: const EdgeInsets.only(right: 12),
                child: InkWell(
                  borderRadius: BorderRadius.circular(24),
                  onTap: () {
                    if (social.url.isNotEmpty) {
                      launchUrl(
                        Uri.parse(social.url),
                        mode: LaunchMode.externalApplication,
                      );
                    }
                  },
                  child: iconUrl != null && iconUrl.isNotEmpty
                      ? _buildIcon(iconUrl, colorScheme)
                      : CircleAvatar(
                          radius: 24,
                          backgroundColor: colorScheme.surfaceContainerHighest,
                          child: Icon(
                            Icons.link,
                            color: colorScheme.onSurfaceVariant,
                          ),
                        ),
                ),
              );
            }).toList(),
          ),
          const SizedBox(height: 24),
        ],
      ),
    );
  }

  Widget _buildIcon(String url, ColorScheme colorScheme) {
    if (url.toLowerCase().endsWith('.svg')) {
      return SvgPicture.network(
        url,
        width: 48,
        height: 48,
        placeholderBuilder: (_) => const SizedBox(
          width: 48,
          height: 48,
          child: Center(child: CircularProgressIndicator(strokeWidth: 2)),
        ),
      );
    }
    return ClipOval(
      child: Image.network(
        url,
        width: 48,
        height: 48,
        fit: BoxFit.cover,
        errorBuilder: (_, _, _) => CircleAvatar(
          radius: 24,
          backgroundColor: colorScheme.surfaceContainerHighest,
          child: Icon(Icons.link, color: colorScheme.onSurfaceVariant),
        ),
      ),
    );
  }
}
