import 'package:mechta_flutter/core/error/exceptions.dart';
import 'package:mechta_flutter/core/error/failures.dart';
import 'package:mechta_flutter/features/product/data/datasources/product_remote_data_source.dart';
import 'package:mechta_flutter/features/product/domain/entities/product_entity.dart';
import 'package:mechta_flutter/features/product/domain/repositories/product_repository.dart';

class ProductRepositoryImpl implements ProductRepository {
  final ProductRemoteDataSource remoteDataSource;

  ProductRepositoryImpl({required this.remoteDataSource});

  @override
  Future<ProductEntity> getProduct(int id) async {
    try {
      final model = await remoteDataSource.getProduct(id);
      return model.toEntity();
    } on ServerException catch (e) {
      throw ServerFailure(e.message);
    }
  }
}
