import 'package:mechta_flutter/core/error/exceptions.dart';
import 'package:mechta_flutter/core/error/failures.dart';
import 'package:mechta_flutter/features/brand/data/datasources/brand_remote_data_source.dart';
import 'package:mechta_flutter/features/brand/domain/entities/brand_entity.dart';
import 'package:mechta_flutter/features/brand/domain/repositories/brand_repository.dart';

class BrandRepositoryImpl implements BrandRepository {
  final BrandRemoteDataSource remoteDataSource;

  BrandRepositoryImpl({required this.remoteDataSource});

  @override
  Future<BrandEntity> getBrand(String brand) async {
    try {
      final response = await remoteDataSource.getBrand(brand);
      return response.toEntity();
    } on ServerException catch (e) {
      throw ServerFailure(e.message);
    }
  }
}
