import 'package:mechta_flutter/features/bonuses/domain/entities/bonuses_entity.dart';

abstract class BonusesRepository {
  Future<BonusesHistoryEntity> getBonusesHistory({
    required int page,
    required int limit,
  });
}
