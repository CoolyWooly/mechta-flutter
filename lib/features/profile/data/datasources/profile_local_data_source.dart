import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:mechta_flutter/features/profile/data/models/profile_model.dart';

abstract class ProfileLocalDataSource {
  Future<ProfileModel> getProfile();
}

class ProfileLocalDataSourceImpl implements ProfileLocalDataSource {
  final SharedPreferences sharedPreferences;
  static const String _profileKey = 'profile';

  ProfileLocalDataSourceImpl({required this.sharedPreferences});

  @override
  Future<ProfileModel> getProfile() async {
    final jsonString = sharedPreferences.getString(_profileKey);
    if (jsonString == null) return const ProfileModel();
    final json = jsonDecode(jsonString) as Map<String, dynamic>;
    return ProfileModel.fromJson(json);
  }
}
