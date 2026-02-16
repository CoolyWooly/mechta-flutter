abstract class RoutePaths {
  static const String splash = '/splash';
  static const String onboarding = '/onboarding';

  // Tab roots
  static const String home = '/home';
  static const String catalog = '/catalog';
  static const String cart = '/cart';
  static const String favorites = '/favorites';
  static const String profile = '/profile';

  // Shared sub-routes (relative paths for nesting)
  static const String product = 'product/:id';
}

abstract class RouteNames {
  static const String splash = 'splash';
  static const String onboarding = 'onboarding';
  static const String home = 'home';
  static const String catalog = 'catalog';
  static const String cart = 'cart';
  static const String favorites = 'favorites';
  static const String profile = 'profile';
}
