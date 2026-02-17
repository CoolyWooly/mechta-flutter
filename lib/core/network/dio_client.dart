import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:mechta_flutter/core/constants/api_constants.dart';
import 'package:shared_preferences/shared_preferences.dart';

Dio createDio({
  required String deviceId,
  required SharedPreferences sharedPreferences,
}) {
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
    InterceptorsWrapper(
      onRequest: (options, handler) {
        final token = sharedPreferences.getString('auth_token');
        if (token != null) {
          options.headers['Authorization'] = 'Bearer $token';
        }
        final cityJson = sharedPreferences.getString('selected_city');
        if (cityJson != null) {
          try {
            final cityMap =
                jsonDecode(cityJson) as Map<String, dynamic>;
            final cityCode = cityMap['code'] as String?;
            if (cityCode != null && cityCode.isNotEmpty) {
              options.headers['X-City-Code'] = cityCode;
            }
          } catch (_) {}
        }
        handler.next(options);
      },
    ),
    LogInterceptor(
      requestBody: true,
      responseBody: true,
    ),
  ]);

  return dio;
}
