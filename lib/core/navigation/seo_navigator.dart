import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mechta_flutter/core/data/datasources/seo_remote_data_source.dart';
import 'package:mechta_flutter/core/data/models/seo_response_model.dart';
import 'package:mechta_flutter/core/router/route_names.dart';

/// Returns the current tab root path (e.g. '/home', '/catalog') from context.
String _currentTabRoot(BuildContext context) {
  final uri = GoRouterState.of(context).uri.path;
  const tabRoots = [
    RoutePaths.home,
    RoutePaths.catalog,
    RoutePaths.cart,
    RoutePaths.favorites,
    RoutePaths.profile,
  ];
  for (final root in tabRoots) {
    if (uri.startsWith(root)) return root;
  }
  return RoutePaths.home;
}

/// Resolves a URL path via seo-resolve API (following redirects up to 3 times),
/// then navigates to SubcatalogPage with the resolved parameters.
class SeoNavigator {
  final SeoRemoteDataSource _dataSource;

  SeoNavigator({required SeoRemoteDataSource dataSource})
      : _dataSource = dataSource;

  static const _maxRedirects = 3;

  /// Resolves [path] and navigates to SubcatalogPage within the current tab.
  /// Shows a loading overlay during resolution.
  Future<void> navigateToSection(BuildContext context, String path) async {
    _showLoading(context);
    try {
      final category = await _resolve(path);
      if (!context.mounted) return;
      Navigator.of(context, rootNavigator: true).pop(); // dismiss loading

      if (category?.slug == null) return;

      final tabRoot = _currentTabRoot(context);
      final query = _buildQuery(category!);
      context.push('$tabRoot/subcatalog/${category.slug}$query');
    } catch (e) {
      if (!context.mounted) return;
      Navigator.of(context, rootNavigator: true).pop(); // dismiss loading
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Ошибка: $e')),
      );
    }
  }

  /// Resolves [path] and returns the route string (for deep link redirect).
  /// Uses [tabRoot] as prefix (defaults to '/home').
  /// Returns null if resolution fails.
  Future<String?> resolveToRoute(String path, {String tabRoot = '/home'}) async {
    try {
      final category = await _resolve(path);
      if (category?.slug == null) return null;

      final query = _buildQuery(category!);
      return '$tabRoot/subcatalog/${category.slug}$query';
    } catch (_) {
      return null;
    }
  }

  String _buildQuery(SeoCategoryModel category) {
    final queryParts = <String>[];
    queryParts.add('title=${Uri.encodeComponent(category.slug!)}');
    if (category.minPrice != null) {
      queryParts.add('minPrice=${category.minPrice}');
    }
    if (category.maxPrice != null) {
      queryParts.add('maxPrice=${category.maxPrice}');
    }
    if (category.properties != null) {
      for (final entry in category.properties!.entries) {
        final values = entry.value.values ?? [];
        for (final v in values) {
          queryParts.add(
            'properties[${Uri.encodeComponent(entry.key)}][]=${Uri.encodeComponent(v)}',
          );
        }
      }
    }
    return queryParts.isNotEmpty ? '?${queryParts.join('&')}' : '';
  }

  Future<SeoCategoryModel?> _resolve(String path) async {
    var currentPath = path;
    for (var i = 0; i < _maxRedirects; i++) {
      final response = await _dataSource.resolve(currentPath);

      final redirectUrl = response.redirect?.url;
      if (redirectUrl != null && redirectUrl.isNotEmpty) {
        currentPath = Uri.parse(redirectUrl).path;
        continue;
      }

      return response.meta?.appDecode?.category;
    }
    return null;
  }

  void _showLoading(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (_) => const Center(child: CircularProgressIndicator()),
    );
  }
}
