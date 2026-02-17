import 'package:mechta_flutter/core/error/exceptions.dart';
import 'package:mechta_flutter/core/error/failures.dart';
import 'package:mechta_flutter/features/subcatalog/data/datasources/subcatalog_remote_data_source.dart';
import 'package:mechta_flutter/features/subcatalog/domain/entities/subcatalog_products_entity.dart';
import 'package:mechta_flutter/features/subcatalog/domain/repositories/subcatalog_repository.dart';
import 'package:mechta_flutter/features/subcatalog/domain/usecases/get_subcatalog_products.dart';

class SubcatalogRepositoryImpl implements SubcatalogRepository {
  final SubcatalogRemoteDataSource remoteDataSource;

  SubcatalogRepositoryImpl({required this.remoteDataSource});

  @override
  Future<SubcatalogProductsEntity> getProducts(SubcatalogParams params) async {
    try {
      final response = await remoteDataSource.getProducts(params);
      return SubcatalogProductsEntity(
        products:
            response.products?.map((m) => m.toEntity()).toList() ?? const [],
        totalCount: response.meta?.totalCount ?? 0,
      );
    } on ServerException catch (e) {
      throw ServerFailure(e.message);
    }
  }
}
