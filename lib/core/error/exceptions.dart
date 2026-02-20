class ServerException implements Exception {
  final String message;
  final int? statusCode;
  final List<String>? errors;
  
  const ServerException({
    required this.message, 
    this.statusCode,
    this.errors,
  });
}

class CacheException implements Exception {
  final String message;
  const CacheException({required this.message});
}
