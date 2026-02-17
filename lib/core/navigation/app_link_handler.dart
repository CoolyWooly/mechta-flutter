import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mechta_flutter/core/navigation/seo_navigator.dart';
import 'package:mechta_flutter/core/router/route_names.dart';

/// Centralized handler for in-app link taps.
/// Inspects the URL path and decides how to navigate.
class AppLinkHandler {
  final SeoNavigator _seoNavigator;

  AppLinkHandler({required SeoNavigator seoNavigator})
      : _seoNavigator = seoNavigator;

  /// Handles a tap on a link with the given [url].
  /// Parses the path and navigates accordingly.
  Future<void> handle(BuildContext context, String url) async {
    final uri = Uri.tryParse(url);
    if (uri == null) return;

    final path = uri.path;

    // /useful/shares/ (exact, no trailing slug) → promotions list
    if (_isPromotionsList(path)) {
      context.go('/home/${RoutePaths.promotions}');
      return;
    }

    // /useful/shares/{code} → promotion detail
    if (_isPromotionDetail(path)) {
      final code = _extractPromotionCode(path);
      if (code != null) {
        context.go('/home/${RoutePaths.promotions}/$code');
      }
      return;
    }

    // /product/{code} → product page
    final productMatch = RegExp(r'^/product/(.+)$').firstMatch(path);
    if (productMatch != null) {
      context.go('/home/product/${productMatch.group(1)}');
      return;
    }

    // /section/{slug}?params → seo-resolve → SubcatalogPage
    if (path.startsWith('/section/')) {
      await _seoNavigator.navigateToSection(context, path);
      return;
    }

    // Fallback: try seo-resolve for unknown mechta.kz paths
    if (_isMechtaUrl(url)) {
      await _seoNavigator.navigateToSection(context, path);
      return;
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

  bool _isMechtaUrl(String url) {
    final host = Uri.tryParse(url)?.host ?? '';
    return host == 'mechta.kz' || host == 'www.mechta.kz';
  }
}
