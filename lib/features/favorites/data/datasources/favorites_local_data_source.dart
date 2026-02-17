import 'package:shared_preferences/shared_preferences.dart';

abstract class FavoritesLocalDataSource {
  Set<String> getFavoriteIds();
  Future<void> saveFavoriteIds(Set<String> ids);
  bool isFavorite(String id);
  Future<void> addId(String id);
  Future<void> removeId(String id);
}

class FavoritesLocalDataSourceImpl implements FavoritesLocalDataSource {
  static const _key = 'favorite_ids';
  final SharedPreferences sharedPreferences;

  FavoritesLocalDataSourceImpl({required this.sharedPreferences});

  @override
  Set<String> getFavoriteIds() {
    final list = sharedPreferences.getStringList(_key);
    return list?.toSet() ?? {};
  }

  @override
  Future<void> saveFavoriteIds(Set<String> ids) {
    return sharedPreferences.setStringList(_key, ids.toList());
  }

  @override
  bool isFavorite(String id) {
    return getFavoriteIds().contains(id);
  }

  @override
  Future<void> addId(String id) async {
    final ids = getFavoriteIds();
    ids.add(id);
    await saveFavoriteIds(ids);
  }

  @override
  Future<void> removeId(String id) async {
    final ids = getFavoriteIds();
    ids.remove(id);
    await saveFavoriteIds(ids);
  }
}
