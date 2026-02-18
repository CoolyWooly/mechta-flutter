abstract class RoutePaths {
  static const String splash = '/splash';
  static const String onboarding = '/onboarding';

  // Tab roots
  static const String home = '/home';
  static const String catalog = '/catalog';
  static const String cart = '/cart';
  static const String favorites = '/favorites';
  static const String profile = '/profile';

  // Root-level utility routes
  static const String seoResolve = '/seo-resolve';

  // Shared sub-routes (relative paths for nesting)
  static const String subcatalog = 'subcatalog/:categorySlug';
  static const String product = 'product/:productSlug';
  static const String brand = 'brand/:brandCode';
  static const String promotions = 'promotions';
  static const String promotionDetail = 'promotion/:promotionCode';
}

abstract class RouteNames {
  static const String splash = 'splash';
  static const String onboarding = 'onboarding';
  static const String home = 'home';
  static const String catalog = 'catalog';
  static const String cart = 'cart';
  static const String favorites = 'favorites';
  static const String profile = 'profile';
  static const String promotions = 'promotions';
}
