import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:mechta_flutter/features/profile/data/models/profile_model.dart';

abstract class ProfileLocalDataSource {
  Future<ProfileModel> getProfile();
  Future<void> saveProfile(ProfileModel profile);
  Future<void> clearProfile();
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

  @override
  Future<void> saveProfile(ProfileModel profile) async {
    await sharedPreferences.setString(_profileKey, jsonEncode(profile.toJson()));
  }

  @override
  Future<void> clearProfile() async {
    await sharedPreferences.remove(_profileKey);
  }
}
