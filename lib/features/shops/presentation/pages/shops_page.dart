import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mechta_flutter/app/di.dart';
import 'package:mechta_flutter/features/shops/domain/entities/shops_entity.dart';
import 'package:mechta_flutter/features/shops/presentation/bloc/shops_bloc.dart';
import 'package:mechta_flutter/l10n/app_localizations.dart';
import 'package:url_launcher/url_launcher.dart';

class ShopsPage extends StatelessWidget {
  const ShopsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => sl<ShopsBloc>()..add(const ShopsLoadRequested()),
      child: const _ShopsView(),
    );
  }
}

class _ShopsView extends StatelessWidget {
  const _ShopsView();

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text(l10n.ourShops),
          bottom: TabBar(
            tabs: [
              Tab(icon: const Icon(Icons.list_rounded), text: l10n.list),
              Tab(icon: const Icon(Icons.map_outlined), text: l10n.map),
            ],
          ),
        ),
        body: BlocBuilder<ShopsBloc, ShopsState>(
          builder: (context, state) {
            return switch (state.status) {
              ShopsStatus.initial || ShopsStatus.loading =>
                const Center(child: CircularProgressIndicator()),
              ShopsStatus.failure => Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(state.errorMessage ?? l10n.loadingError),
                      const SizedBox(height: 16),
                      ElevatedButton(
                        onPressed: () => context
                            .read<ShopsBloc>()
                            .add(const ShopsLoadRequested()),
                        child: Text(l10n.retry),
                      ),
                    ],
                  ),
                ),
              ShopsStatus.success => state.cities.isEmpty
                  ? Center(child: Text(l10n.shopsEmpty))
                  : TabBarView(
                      children: [
                        _ShopsListTab(cities: state.cities),
                        _ShopsMapTab(cities: state.cities),
                      ],
                    ),
            };
          },
        ),
      ),
    );
  }
}

// ─── List tab ────────────────────────────────────────────────────────────────

class _ShopsListTab extends StatelessWidget {
  final List<CityShopsEntity> cities;

  const _ShopsListTab({required this.cities});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.symmetric(vertical: 8),
      itemCount: cities.length,
      itemBuilder: (context, index) => _CitySection(city: cities[index]),
    );
  }
}

class _CitySection extends StatelessWidget {
  final CityShopsEntity city;

  const _CitySection({required this.city});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    if (city.shops.isEmpty) return const SizedBox.shrink();

    return ExpansionTile(
      initiallyExpanded: true,
      tilePadding: const EdgeInsets.symmetric(horizontal: 16),
      title: Text(
        city.name ?? '',
        style: textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),
      ),
      leading: Icon(Icons.location_city, color: colorScheme.primary),
      children: city.shops
          .map((shop) => _ShopListCard(shop: shop))
          .toList(),
    );
  }
}

class _ShopListCard extends StatelessWidget {
  final ShopEntity shop;

  const _ShopListCard({required this.shop});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (shop.address != null) ...[
              const SizedBox(height: 6),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(Icons.place_outlined,
                      size: 16, color: colorScheme.onSurfaceVariant),
                  const SizedBox(width: 6),
                  Expanded(
                    child: Text(
                      shop.address!,
                      style: textTheme.bodySmall,
                    ),
                  ),
                ],
              ),
            ],
            if (shop.schedule != null) ...[
              const SizedBox(height: 4),
              Row(
                children: [
                  Icon(Icons.access_time_outlined,
                      size: 16, color: colorScheme.onSurfaceVariant),
                  const SizedBox(width: 6),
                  Text(
                    shop.schedule!,
                    style: textTheme.bodySmall,
                  ),
                ],
              ),
            ],
            if (shop.phone != null) ...[
              const SizedBox(height: 8),
              InkWell(
                onTap: () => _callPhone(shop.phone!),
                borderRadius: BorderRadius.circular(8),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.phone_outlined,
                        size: 16, color: colorScheme.primary),
                    const SizedBox(width: 6),
                    Text(
                      shop.phone!,
                      style: textTheme.bodySmall?.copyWith(
                        color: colorScheme.primary,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ],
                ),
              ),
            ],
            if (shop.latitude != null && shop.longitude != null) ...[
              const SizedBox(height: 8),
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: _StaticMapImage(
                  latitude: shop.latitude!,
                  longitude: shop.longitude!,
                  height: 140,
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }

  void _callPhone(String phone) {
    final cleaned = phone.replaceAll(RegExp(r'[^\d+]'), '');
    launchUrl(Uri.parse('tel:$cleaned'));
  }
}

// ─── Map tab ─────────────────────────────────────────────────────────────────

class _ShopsMapTab extends StatelessWidget {
  final List<CityShopsEntity> cities;

  const _ShopsMapTab({required this.cities});

  @override
  Widget build(BuildContext context) {
    // Flatten all shops with their city name
    final items = <({ShopEntity shop, String? cityName})>[];
    for (final city in cities) {
      for (final shop in city.shops) {
        if (shop.latitude != null && shop.longitude != null) {
          items.add((shop: shop, cityName: city.name));
        }
      }
    }

    if (items.isEmpty) {
      return Center(
        child: Text(AppLocalizations.of(context)!.shopsEmpty),
      );
    }

    return ListView.builder(
      padding: const EdgeInsets.all(16),
      itemCount: items.length,
      itemBuilder: (context, index) {
        final item = items[index];
        return _ShopMapCard(
          shop: item.shop,
          cityName: item.cityName,
        );
      },
    );
  }
}

class _ShopMapCard extends StatelessWidget {
  final ShopEntity shop;
  final String? cityName;

  const _ShopMapCard({required this.shop, this.cityName});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;

    return Card(
      margin: const EdgeInsets.only(bottom: 16),
      clipBehavior: Clip.antiAlias,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _StaticMapImage(
            latitude: shop.latitude!,
            longitude: shop.longitude!,
            height: 200,
          ),
          Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (cityName != null || shop.address != null) ...[
                  const SizedBox(height: 4),
                  Text(
                    [if (cityName != null) cityName!, if (shop.address != null) shop.address!]
                        .join(', '),
                    style: textTheme.bodySmall
                        ?.copyWith(color: colorScheme.onSurfaceVariant),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// ─── Shared static map widget ─────────────────────────────────────────────────

class _StaticMapImage extends StatelessWidget {
  final double latitude;
  final double longitude;
  final double height;

  const _StaticMapImage({
    required this.latitude,
    required this.longitude,
    required this.height,
  });

  String get _mapUrl {
    // Width is dynamic, height matches the card
    // Format: c=latitude,longitude per user spec
    return 'https://static.maps.2gis.com/1.0?s=468x657&c=$latitude,$longitude&z=17';
  }

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return SizedBox(
      height: height,
      width: double.infinity,
      child: Image.network(
        _mapUrl,
        fit: BoxFit.cover,
        loadingBuilder: (context, child, progress) {
          if (progress == null) return child;
          return Container(
            color: colorScheme.surfaceContainerHighest,
            child: const Center(child: CircularProgressIndicator()),
          );
        },
        errorBuilder: (context, error, stackTrace) => Container(
          color: colorScheme.surfaceContainerHighest,
          child: Icon(
            Icons.map_outlined,
            size: 48,
            color: colorScheme.onSurfaceVariant,
          ),
        ),
      ),
    );
  }
}
