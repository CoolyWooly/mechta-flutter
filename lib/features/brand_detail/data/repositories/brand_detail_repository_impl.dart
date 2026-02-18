import 'package:mechta_flutter/core/error/exceptions.dart';
import 'package:mechta_flutter/core/error/failures.dart';
import 'package:mechta_flutter/features/brand_detail/data/datasources/brand_detail_remote_data_source.dart';
import 'package:mechta_flutter/features/brand_detail/domain/entities/brand_detail_entity.dart';
import 'package:mechta_flutter/features/brand_detail/domain/repositories/brand_detail_repository.dart';

class BrandDetailRepositoryImpl implements BrandDetailRepository {
  final BrandDetailRemoteDataSource remoteDataSource;

  BrandDetailRepositoryImpl({required this.remoteDataSource});

  @override
  Future<BrandDetailEntity> getBrandDetail(String brand) async {
    try {
      final response = await remoteDataSource.getBrandDetail(brand);
      return response.toEntity();
    } on ServerException catch (e) {
      throw ServerFailure(e.message);
    }
  }
}
