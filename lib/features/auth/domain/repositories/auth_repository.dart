import 'package:mechta_flutter/features/auth/domain/entities/auth_token_entity.dart';

abstract class AuthRepository {
  Future<void> sendSms(String phone);
  Future<AuthTokenEntity> login(String phone, String otp);
  Future<String?> getToken();
  Future<void> saveToken(String token);
  Future<void> clearToken();
}
