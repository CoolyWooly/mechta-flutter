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
  static const String subcatalog = 'subcatalog/:slug';
  static const String product = 'product/:productSlug';
  static const String promotions = 'promotions';
  static const String promotionDetail = ':code';
}

abstract class RouteNames {
  static const String splash = 'splash';
  static const String onboarding = 'onboarding';
  static const String home = 'home';
  static const String catalog = 'catalog';
  static const String subcatalog = 'subcatalog';
  static const String cart = 'cart';
  static const String favorites = 'favorites';
  static const String profile = 'profile';
  static const String promotions = 'promotions';
  static const String promotionDetail = 'promotionDetail';
}
