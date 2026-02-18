import 'package:mechta_flutter/core/error/exceptions.dart';
import 'package:mechta_flutter/core/error/failures.dart';
import 'package:mechta_flutter/features/subcatalog/data/datasources/subcatalog_remote_data_source.dart';
import 'package:mechta_flutter/features/subcatalog/domain/entities/category_entity.dart';
import 'package:mechta_flutter/features/subcatalog/domain/entities/subcatalog_entity.dart';
import 'package:mechta_flutter/features/subcatalog/domain/repositories/subcatalog_repository.dart';
import 'package:mechta_flutter/features/subcatalog/domain/usecases/get_subcatalog.dart';

class SubcatalogRepositoryImpl implements SubcatalogRepository {
  final SubcatalogRemoteDataSource remoteDataSource;

  SubcatalogRepositoryImpl({required this.remoteDataSource});

  @override
  Future<SubcatalogEntity> getSubcatalog(SubcatalogParams params) async {
    try {
      final response = await remoteDataSource.getSubcatalog(params);
      return SubcatalogEntity(
        products:
            response.products?.map((m) => m.toEntity()).toList() ?? const [],
        totalCount: response.meta?.totalCount ?? 0,
      );
    } on ServerException catch (e) {
      throw ServerFailure(e.message);
    }
  }

  @override
  Future<CategoryInfoEntity> getCategory(String slug) async {
    try {
      final response = await remoteDataSource.getCategory(slug);
      final children = response.children
              ?.where((c) => c.name != null && c.slug != null)
              .map((c) => CategoryChildEntity(
                    name: c.name!,
                    slug: c.slug!,
                  ))
              .toList() ??
          const [];
      return CategoryInfoEntity(
        name: response.category?.name,
        children: children,
      );
    } on ServerException catch (e) {
      throw ServerFailure(e.message);
    }
  }
}
