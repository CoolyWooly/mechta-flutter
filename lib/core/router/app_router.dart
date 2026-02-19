import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mechta_flutter/core/router/route_names.dart';
import 'package:mechta_flutter/features/splash/presentation/pages/splash_page.dart';
import 'package:mechta_flutter/features/onboarding/presentation/pages/onboarding_page.dart';
import 'package:mechta_flutter/features/main/presentation/pages/main_page.dart';
import 'package:mechta_flutter/features/home/presentation/pages/home_page.dart';
import 'package:mechta_flutter/features/catalog/presentation/pages/catalog_page.dart';
import 'package:mechta_flutter/features/cart/presentation/pages/cart_page.dart';
import 'package:mechta_flutter/features/favorites/presentation/pages/favorites_page.dart';
import 'package:mechta_flutter/features/profile/presentation/pages/profile_page.dart';
import 'package:mechta_flutter/features/product/presentation/pages/product_page.dart';
import 'package:mechta_flutter/features/subcatalog/presentation/pages/subcatalog_page.dart';
import 'package:mechta_flutter/features/brand/presentation/pages/brand_page.dart';
import 'package:mechta_flutter/features/subcatalog/presentation/pages/filter_page.dart';
import 'package:mechta_flutter/features/subcatalog/domain/entities/filter_entity.dart';
import 'package:mechta_flutter/features/promotions/presentation/pages/promotion_detail_page.dart';
import 'package:mechta_flutter/features/promotions/presentation/pages/promotions_page.dart';
import 'package:mechta_flutter/core/navigation/seo_resolve_page.dart';
import 'package:mechta_flutter/features/bonuses/presentation/pages/bonuses_page.dart';
import 'package:mechta_flutter/features/shops/presentation/pages/shops_page.dart';

GoRoute _productRoute() => GoRoute(
      path: RoutePaths.product,
      builder: (context, state) {
        final slug = state.pathParameters['productSlug']!;
        return ProductPage(slug: slug);
      },
    );

GoRoute _promotionDetailRoute() => GoRoute(
      path: RoutePaths.promotionDetail,
      builder: (context, state) {
        final code = state.pathParameters['promotionCode']!;
        return PromotionDetailPage(code: code);
      },
    );

GoRoute _brandRoute() => GoRoute(
      path: RoutePaths.brand,
      builder: (context, state) {
        final brand = state.pathParameters['brandCode']!;
        final title = state.uri.queryParameters['title'];
        return BrandPage(brand: brand, title: title);
      },
      routes: [_productRoute(), _promotionDetailRoute(), _subcatalogRoute()],
    );

GoRoute _bonusesRoute() => GoRoute(
      path: RoutePaths.bonuses,
      builder: (context, state) => const BonusesPage(),
    );

GoRoute _shopsRoute() => GoRoute(
      path: RoutePaths.shops,
      builder: (context, state) => const ShopsPage(),
    );

GoRoute _filterRoute() => GoRoute(
      path: RoutePaths.filter,
      builder: (context, state) {
        final slug = state.pathParameters['categorySlug']!;
        final extra = state.extra as FilterResult?;
        return FilterPage(
          slug: slug,
          initialProperties: extra?.properties,
          initialMinPrice: extra?.minPrice,
          initialMaxPrice: extra?.maxPrice,
        );
      },
    );

GoRoute _subcatalogRoute() => GoRoute(
      path: RoutePaths.subcatalog,
      builder: (context, state) {
        final slug = state.pathParameters['categorySlug']!;
        final query = state.uri.queryParameters;
        return SubcatalogPage(
          slug: slug,
          page: int.tryParse(query['page'] ?? '') ?? 1,
          minPrice: double.tryParse(query['minPrice'] ?? ''),
          maxPrice: double.tryParse(query['maxPrice'] ?? ''),
          orderBy: query['orderBy'],
          direction: query['direction'],
          properties: _parseProperties(state.uri),
        );
      },
      routes: [_productRoute(), _filterRoute()],
    );

/// Parses `properties[key][]=value` query parameters into a Map.
Map<String, List<String>>? _parseProperties(Uri uri) {
  final properties = <String, List<String>>{};
  final pattern = RegExp(r'^properties\[(.+?)\]\[\]$');
  for (final key in uri.queryParametersAll.keys) {
    final match = pattern.firstMatch(key);
    if (match != null) {
      final propKey = match.group(1)!;
      properties[propKey] = uri.queryParametersAll[key]!;
    }
  }
  return properties.isEmpty ? null : properties;
}

String? _deepLinkRedirect(BuildContext context, GoRouterState state) {
  final uri = state.uri;
  final path = uri.path;

  // App routes — pass through
  final appPrefixes = ['/splash', '/onboarding', '/seo-resolve', '/home', '/catalog', '/cart', '/favorites', '/profile'];
  if (appPrefixes.any((p) => path.startsWith(p))) return null;

  // Root path → home
  if (path == '/' || path.isEmpty) return RoutePaths.home;

  // /useful/shares/ → promotions list or /useful/shares/{code} → detail
  final promoDetailMatch = RegExp(r'^/useful/shares/(.+?)/?$').firstMatch(path);
  if (promoDetailMatch != null) {
    return '/home/${RoutePaths.promotions}/promotion/${promoDetailMatch.group(1)}';
  }
  if (path == '/useful/shares' || path == '/useful/shares/') {
    return '/home/${RoutePaths.promotions}';
  }

  // /section/{slug}?params → seo-resolve page (resolves via API)
  if (path.startsWith('/section/')) {
    final fullPath = uri.query.isNotEmpty ? '$path?${uri.query}' : path;
    return '${RoutePaths.seoResolve}?path=${Uri.encodeComponent(fullPath)}';
  }

  // /brands/{code} → /home/brand/{code}
  final brandMatch = RegExp(r'^/brands/(.+?)/?$').firstMatch(path);
  if (brandMatch != null) {
    return '/home/brand/${brandMatch.group(1)}';
  }

  // /product/{code} → /home/product/{code}
  final productMatch = RegExp(r'^/product/(.+)$').firstMatch(path);
  if (productMatch != null) {
    return '/home/product/${productMatch.group(1)}';
  }

  // Fallback
  return RoutePaths.home;
}

GoRouter createAppRouter() {
  final rootNavigatorKey = GlobalKey<NavigatorState>();
  final homeNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'home');
  final catalogNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'catalog');
  final cartNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'cart');
  final favoritesNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'favorites');
  final profileNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'profile');

  return GoRouter(
    navigatorKey: rootNavigatorKey,
    initialLocation: RoutePaths.home,
    debugLogDiagnostics: true,
    redirect: _deepLinkRedirect,
    routes: [
      GoRoute(
        path: RoutePaths.splash,
        name: RouteNames.splash,
        builder: (context, state) => const SplashPage(),
      ),
      GoRoute(
        path: RoutePaths.onboarding,
        name: RouteNames.onboarding,
        builder: (context, state) => const OnboardingPage(),
      ),
      GoRoute(
        path: RoutePaths.seoResolve,
        builder: (context, state) {
          final path = state.uri.queryParameters['path'] ?? '/';
          return SeoResolvePage(path: path);
        },
      ),
      StatefulShellRoute.indexedStack(
        parentNavigatorKey: rootNavigatorKey,
        builder: (context, state, navigationShell) {
          return MainPage(navigationShell: navigationShell);
        },
        branches: [
          StatefulShellBranch(
            navigatorKey: homeNavigatorKey,
            routes: [
              GoRoute(
                path: RoutePaths.home,
                name: RouteNames.home,
                pageBuilder: (context, state) => const NoTransitionPage(
                  child: HomePage(),
                ),
                routes: [
                  _productRoute(),
                  _subcatalogRoute(),
                  _brandRoute(),
                  _promotionDetailRoute(),
                  GoRoute(
                    path: RoutePaths.promotions,
                    name: RouteNames.promotions,
                    builder: (context, state) => const PromotionsPage(),
                    routes: [_promotionDetailRoute()],
                  ),
                ],
              ),
            ],
          ),
          StatefulShellBranch(
            navigatorKey: catalogNavigatorKey,
            routes: [
              GoRoute(
                path: RoutePaths.catalog,
                name: RouteNames.catalog,
                pageBuilder: (context, state) => const NoTransitionPage(
                  child: CatalogPage(),
                ),
                routes: [
                  _subcatalogRoute(),
                  _brandRoute(),
                  _promotionDetailRoute(),
                  _productRoute(),
                ],
              ),
            ],
          ),
          StatefulShellBranch(
            navigatorKey: cartNavigatorKey,
            routes: [
              GoRoute(
                path: RoutePaths.cart,
                name: RouteNames.cart,
                pageBuilder: (context, state) => const NoTransitionPage(
                  child: CartPage(),
                ),
                routes: [
                  _productRoute(),
                  _subcatalogRoute(),
                  _promotionDetailRoute(),
                ],
              ),
            ],
          ),
          StatefulShellBranch(
            navigatorKey: favoritesNavigatorKey,
            routes: [
              GoRoute(
                path: RoutePaths.favorites,
                name: RouteNames.favorites,
                pageBuilder: (context, state) => const NoTransitionPage(
                  child: FavoritesPage(),
                ),
                routes: [
                  _productRoute(),
                  _subcatalogRoute(),
                  _promotionDetailRoute(),
                ],
              ),
            ],
          ),
          StatefulShellBranch(
            navigatorKey: profileNavigatorKey,
            routes: [
              GoRoute(
                path: RoutePaths.profile,
                name: RouteNames.profile,
                pageBuilder: (context, state) => const NoTransitionPage(
                  child: ProfilePage(),
                ),
                routes: [
                  _productRoute(),
                  _subcatalogRoute(),
                  _promotionDetailRoute(),
                  _bonusesRoute(),
                  _shopsRoute(),
                ],
              ),
            ],
          ),
        ],
      ),
    ],
  );
}
