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
import 'package:mechta_flutter/features/promotions/presentation/pages/promotion_detail_page.dart';
import 'package:mechta_flutter/features/promotions/presentation/pages/promotions_page.dart';
import 'package:mechta_flutter/core/navigation/seo_resolve_page.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();
final _homeNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'home');
final _catalogNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'catalog');
final _cartNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'cart');
final _favoritesNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'favorites');
final _profileNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'profile');

GoRoute _productRoute() => GoRoute(
      path: RoutePaths.product,
      builder: (context, state) {
        final productId = state.pathParameters['id']!;
        return ProductPage(productId: productId);
      },
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

/// Builds a SubcatalogPage from route state, parsing all query params.
SubcatalogPage _buildSubcatalogPage(GoRouterState state) {
  final slug = state.pathParameters['slug']!;
  final query = state.uri.queryParameters;
  return SubcatalogPage(
    slug: slug,
    title: query['title'] ?? slug,
    page: int.tryParse(query['page'] ?? '') ?? 1,
    minPrice: double.tryParse(query['minPrice'] ?? ''),
    maxPrice: double.tryParse(query['maxPrice'] ?? ''),
    orderBy: query['orderBy'],
    direction: query['direction'],
    properties: _parseProperties(state.uri),
  );
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
    return '/home/${RoutePaths.promotions}/${promoDetailMatch.group(1)}';
  }
  if (path == '/useful/shares' || path == '/useful/shares/') {
    return '/home/${RoutePaths.promotions}';
  }

  // /section/{slug}?params → seo-resolve page (resolves via API)
  if (path.startsWith('/section/')) {
    final fullPath = uri.query.isNotEmpty ? '$path?${uri.query}' : path;
    return '${RoutePaths.seoResolve}?path=${Uri.encodeComponent(fullPath)}';
  }

  // /product/{code} → /home/product/{code}
  final productMatch = RegExp(r'^/product/(.+)$').firstMatch(path);
  if (productMatch != null) {
    return '/home/product/${productMatch.group(1)}';
  }

  // Fallback
  return RoutePaths.home;
}

final GoRouter appRouter = GoRouter(
  navigatorKey: _rootNavigatorKey,
  initialLocation: RoutePaths.splash,
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
      parentNavigatorKey: _rootNavigatorKey,
      builder: (context, state, navigationShell) {
        return MainPage(navigationShell: navigationShell);
      },
      branches: [
        StatefulShellBranch(
          navigatorKey: _homeNavigatorKey,
          routes: [
            GoRoute(
              path: RoutePaths.home,
              name: RouteNames.home,
              pageBuilder: (context, state) => const NoTransitionPage(
                child: HomePage(),
              ),
              routes: [
                _productRoute(),
                GoRoute(
                  path: RoutePaths.promotions,
                  name: RouteNames.promotions,
                  builder: (context, state) => const PromotionsPage(),
                  routes: [
                    GoRoute(
                      path: RoutePaths.promotionDetail,
                      name: RouteNames.promotionDetail,
                      builder: (context, state) {
                        final code = state.pathParameters['code']!;
                        return PromotionDetailPage(code: code);
                      },
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
        StatefulShellBranch(
          navigatorKey: _catalogNavigatorKey,
          routes: [
            GoRoute(
              path: RoutePaths.catalog,
              name: RouteNames.catalog,
              pageBuilder: (context, state) => const NoTransitionPage(
                child: CatalogPage(),
              ),
              routes: [
                GoRoute(
                  path: RoutePaths.subcatalog,
                  name: RouteNames.subcatalog,
                  builder: (context, state) => _buildSubcatalogPage(state),
                  routes: [_productRoute()],
                ),
                _productRoute(),
              ],
            ),
          ],
        ),
        StatefulShellBranch(
          navigatorKey: _cartNavigatorKey,
          routes: [
            GoRoute(
              path: RoutePaths.cart,
              name: RouteNames.cart,
              pageBuilder: (context, state) => const NoTransitionPage(
                child: CartPage(),
              ),
              routes: [_productRoute()],
            ),
          ],
        ),
        StatefulShellBranch(
          navigatorKey: _favoritesNavigatorKey,
          routes: [
            GoRoute(
              path: RoutePaths.favorites,
              name: RouteNames.favorites,
              pageBuilder: (context, state) => const NoTransitionPage(
                child: FavoritesPage(),
              ),
              routes: [_productRoute()],
            ),
          ],
        ),
        StatefulShellBranch(
          navigatorKey: _profileNavigatorKey,
          routes: [
            GoRoute(
              path: RoutePaths.profile,
              name: RouteNames.profile,
              pageBuilder: (context, state) => const NoTransitionPage(
                child: ProfilePage(),
              ),
              routes: [_productRoute()],
            ),
          ],
        ),
      ],
    ),
  ],
);
