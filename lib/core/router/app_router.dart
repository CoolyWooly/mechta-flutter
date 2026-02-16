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

final GoRouter appRouter = GoRouter(
  navigatorKey: _rootNavigatorKey,
  initialLocation: RoutePaths.splash,
  debugLogDiagnostics: true,
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
              routes: [_productRoute()],
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
              routes: [_productRoute()],
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
