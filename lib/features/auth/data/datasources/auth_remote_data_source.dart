import 'package:dio/dio.dart';
import 'package:mechta_flutter/core/error/exceptions.dart';
import 'package:mechta_flutter/features/auth/data/models/auth_token_model.dart';

abstract class AuthRemoteDataSource {
  Future<void> sendSms(String phone);
  Future<AuthTokenModel> login(String phone, String otp);
}

class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  final Dio dio;

  AuthRemoteDataSourceImpl({required this.dio});

  @override
  Future<void> sendSms(String phone) async {
    try {
      await dio.post(
        'api/v3/auth/send-sms',
        data: FormData.fromMap({'phone': phone}),
      );
    } on DioException catch (e) {
      throw ServerException(
        message: e.response?.data?.toString() ?? e.message ?? 'SMS send failed',
        statusCode: e.response?.statusCode,
      );
    }
  }

  @override
  Future<AuthTokenModel> login(String phone, String otp) async {
    try {
      final response = await dio.post(
        'api/v3/auth/login',
        data: FormData.fromMap({'phone': phone, 'otp': otp}),
      );
      return AuthTokenModel.fromJson(response.data as Map<String, dynamic>);
    } on DioException catch (e) {
      throw ServerException(
        message: e.response?.data?.toString() ?? e.message ?? 'Login failed',
        statusCode: e.response?.statusCode,
      );
    }
  }
}
