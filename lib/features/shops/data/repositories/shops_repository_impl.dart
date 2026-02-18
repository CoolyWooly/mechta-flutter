import 'package:mechta_flutter/core/error/exceptions.dart';
import 'package:mechta_flutter/core/error/failures.dart';
import 'package:mechta_flutter/features/shops/data/datasources/shops_remote_data_source.dart';
import 'package:mechta_flutter/features/shops/domain/entities/shops_entity.dart';
import 'package:mechta_flutter/features/shops/domain/repositories/shops_repository.dart';

class ShopsRepositoryImpl implements ShopsRepository {
  final ShopsRemoteDataSource remoteDataSource;

  ShopsRepositoryImpl({required this.remoteDataSource});

  @override
  Future<List<CityShopsEntity>> getShops() async {
    try {
      final model = await remoteDataSource.getShops();
      return model.toEntity();
    } on ServerException catch (e) {
      throw ServerFailure(e.message);
    }
  }
}
