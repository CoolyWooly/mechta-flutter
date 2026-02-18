import 'package:mechta_flutter/core/error/exceptions.dart';
import 'package:mechta_flutter/core/error/failures.dart';
import 'package:mechta_flutter/features/bonuses/data/datasources/bonuses_remote_data_source.dart';
import 'package:mechta_flutter/features/bonuses/domain/entities/bonuses_entity.dart';
import 'package:mechta_flutter/features/bonuses/domain/repositories/bonuses_repository.dart';

class BonusesRepositoryImpl implements BonusesRepository {
  final BonusesRemoteDataSource remoteDataSource;

  BonusesRepositoryImpl({required this.remoteDataSource});

  @override
  Future<BonusesHistoryEntity> getBonusesHistory({
    required int page,
    required int limit,
  }) async {
    try {
      final model = await remoteDataSource.getBonusesHistory(
        page: page,
        limit: limit,
      );
      return model.toEntity();
    } on ServerException catch (e) {
      throw ServerFailure(e.message);
    }
  }
}
