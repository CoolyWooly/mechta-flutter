import 'package:dio/dio.dart';

class ServerException implements Exception {
  final String message;
  final int? statusCode;
  final List<String>? errors;
  
  const ServerException({
    required this.message, 
    this.statusCode,
    this.errors,
  });

  factory ServerException.fromDioException(DioException e) {
    String parsedMessage = e.message ?? 'Unknown error';
    List<String>? parsedErrors;

    if (e.response?.data is Map<String, dynamic>) {
      final data = e.response!.data as Map<String, dynamic>;

      // v2 API: {"errors": ["...", "..."]}
      if (data['errors'] is List) {
        parsedErrors = (data['errors'] as List).map((e) => e.toString()).toList();
        if (parsedErrors.isNotEmpty) {
          parsedMessage = parsedErrors.join(', ');
        }
      } 
      // v3 API: {"error": {"code": "...", "message": "..."}}
      else if (data['error'] is Map<String, dynamic>) {
        final errorObj = data['error'] as Map<String, dynamic>;
        if (errorObj['message'] != null) {
          parsedMessage = errorObj['message'].toString();
          parsedErrors = [parsedMessage];
        }
      }
      // Fallback API: {"message": "..."}
      else if (data['message'] != null) {
         parsedMessage = data['message'].toString();
         parsedErrors = [parsedMessage];
      }
    }

    return ServerException(
      message: parsedMessage,
      statusCode: e.response?.statusCode,
      errors: parsedErrors,
    );
  }
}

class CacheException implements Exception {
  final String message;
  const CacheException({required this.message});
}
