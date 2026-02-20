import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mechta_flutter/core/navigation/seo_navigator.dart';
import 'package:mechta_flutter/core/router/route_names.dart';
import 'package:url_launcher/url_launcher.dart';

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

/// Centralized handler for in-app link taps.
/// Inspects the URL path and decides how to navigate.
/// Navigates within the current tab to avoid switching tabs.
class AppLinkHandler {
  final SeoNavigator _seoNavigator;

  AppLinkHandler({required SeoNavigator seoNavigator})
      : _seoNavigator = seoNavigator;

  /// Handles a tap on a link with the given [url].
  /// Parses the path and pushes the destination on top of the current route.
  Future<void> handle(BuildContext context, String url, {String? searchQuery}) async {
    final uri = Uri.tryParse(url);
    if (uri == null) return;

    final path = uri.path;
    final tabRoot = _currentTabRoot(context);

    // /useful/shares/ (exact, no trailing slug) → promotions list
    if (_isPromotionsList(path)) {
      context.push('$tabRoot/${RoutePaths.promotions}');
      return;
    }

    // /useful/shares/{code} → promotion detail
    if (_isPromotionDetail(path)) {
      final code = _extractPromotionCode(path);
      if (code != null) {
        context.push('$tabRoot/promotion/$code');
      }
      return;
    }

    // /product/{code} → product page
    final productMatch = RegExp(r'^/product/(.+)$').firstMatch(path);
    if (productMatch != null) {
      context.push('$tabRoot/product/${productMatch.group(1)}');
      return;
    }

    // /search/?q=...&section_id=... → SubcatalogPage with query
    if (_isSearchPath(path)) {
      final q = uri.queryParameters['q'];
      final sectionId = uri.queryParameters['section_id'];
      if (q != null && q.isNotEmpty) {
        final slug = (sectionId != null && sectionId.isNotEmpty)
            ? sectionId
            : 'search-results';
        final queryParam = Uri.encodeComponent(q);
        context.push('$tabRoot/subcatalog/$slug?query=$queryParam');
        return;
      }
    }

    // /section/{slug}?params → seo-resolve → SubcatalogPage
    if (path.startsWith('/section/')) {
      await _seoNavigator.navigateToSection(context, path, searchQuery: searchQuery);
      return;
    }

    // Fallback: try seo-resolve for unknown mechta.kz paths
    if (_isMechtaUrl(url)) {
      await _seoNavigator.navigateToSection(context, path, searchQuery: searchQuery);
      return;
    }

    // External URLs → open in in-app browser
    if (uri.hasScheme) {
      await launchUrl(uri, mode: LaunchMode.inAppBrowserView);
    }
  }

  bool _isPromotionsList(String path) {
    final normalized = path.endsWith('/') ? path.substring(0, path.length - 1) : path;
    return normalized == '/useful/shares';
  }

  bool _isPromotionDetail(String path) {
    final normalized = path.endsWith('/') ? path.substring(0, path.length - 1) : path;
    return normalized.startsWith('/useful/shares/') &&
        normalized.substring('/useful/shares/'.length).isNotEmpty;
  }

  String? _extractPromotionCode(String path) {
    final normalized = path.endsWith('/') ? path.substring(0, path.length - 1) : path;
    return normalized.substring('/useful/shares/'.length);
  }

  bool _isSearchPath(String path) {
    final normalized = path.endsWith('/') ? path.substring(0, path.length - 1) : path;
    return normalized == '/search';
  }

  bool _isMechtaUrl(String url) {
    final host = Uri.tryParse(url)?.host ?? '';
    return host == 'mechta.kz' || host == 'www.mechta.kz';
  }
}
