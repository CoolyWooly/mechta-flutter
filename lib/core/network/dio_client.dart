import 'package:dio/dio.dart';
import 'package:mechta_flutter/core/constants/api_constants.dart';

Dio createDio({required String deviceId}) {
  final dio = Dio(
    BaseOptions(
      baseUrl: ApiConstants.baseUrl,
      connectTimeout: ApiConstants.connectTimeout,
      receiveTimeout: ApiConstants.receiveTimeout,
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
        'X-Mechta-App': 'android',
        'X-Mechta-Device-Id': deviceId,
      },
    ),
  );

  dio.interceptors.addAll([
    LogInterceptor(
      requestBody: true,
      responseBody: true,
    ),
  ]);

  return dio;
}
