import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:mechta_flutter/features/favorites/data/models/favorite_model.dart';

abstract class FavoritesLocalDataSource {
  Future<List<FavoriteModel>> getFavorites();
}

class FavoritesLocalDataSourceImpl implements FavoritesLocalDataSource {
  final SharedPreferences sharedPreferences;
  static const String _favoritesKey = 'favorites';

  FavoritesLocalDataSourceImpl({required this.sharedPreferences});

  @override
  Future<List<FavoriteModel>> getFavorites() async {
    final jsonString = sharedPreferences.getString(_favoritesKey);
    if (jsonString == null) return [];
    final List<dynamic> jsonList = json.decode(jsonString);
    return jsonList
        .map((json) => FavoriteModel.fromJson(json as Map<String, dynamic>))
        .toList();
  }
}
