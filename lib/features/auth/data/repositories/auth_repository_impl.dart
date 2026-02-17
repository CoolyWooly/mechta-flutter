import 'package:mechta_flutter/core/error/exceptions.dart';
import 'package:mechta_flutter/core/error/failures.dart';
import 'package:mechta_flutter/features/auth/data/datasources/auth_local_data_source.dart';
import 'package:mechta_flutter/features/auth/data/datasources/auth_remote_data_source.dart';
import 'package:mechta_flutter/features/auth/domain/entities/auth_token_entity.dart';
import 'package:mechta_flutter/features/auth/domain/repositories/auth_repository.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthRemoteDataSource remoteDataSource;
  final AuthLocalDataSource localDataSource;

  AuthRepositoryImpl({
    required this.remoteDataSource,
    required this.localDataSource,
  });

  @override
  Future<void> sendSms(String phone) async {
    try {
      await remoteDataSource.sendSms(phone);
    } on ServerException catch (e) {
      throw ServerFailure(e.message);
    }
  }

  @override
  Future<AuthTokenEntity> login(String phone, String otp) async {
    try {
      final model = await remoteDataSource.login(phone, otp);
      if (model.token != null) {
        await localDataSource.saveToken(model.token!);
      }
      return model.toEntity();
    } on ServerException catch (e) {
      throw ServerFailure(e.message);
    }
  }

  @override
  Future<String?> getToken() {
    return localDataSource.getToken();
  }

  @override
  Future<void> saveToken(String token) {
    return localDataSource.saveToken(token);
  }

  @override
  Future<void> clearToken() {
    return localDataSource.clearToken();
  }
}
