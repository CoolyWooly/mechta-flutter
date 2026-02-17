import 'package:mechta_flutter/features/profile/domain/entities/profile_entity.dart';

abstract class ProfileRepository {
  Future<ProfileEntity> getProfile();
  Future<ProfileEntity> fetchAndSaveProfile();
  Future<void> logout();
}
