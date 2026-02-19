import 'package:equatable/equatable.dart';
import 'package:mechta_flutter/core/usecase/usecase.dart';
import 'package:mechta_flutter/features/bonuses/domain/entities/bonuses_entity.dart';
import 'package:mechta_flutter/features/bonuses/domain/repositories/bonuses_repository.dart';

class GetBonusesHistoryUseCase
    extends UseCase<BonusesHistoryEntity, BonusesHistoryParams> {
  final BonusesRepository repository;

  GetBonusesHistoryUseCase(this.repository);

  @override
  Future<BonusesHistoryEntity> call(BonusesHistoryParams params) {
    return repository.getBonusesHistory(
      page: params.page,
      limit: params.limit,
    );
  }
}

class BonusesHistoryParams extends Equatable {
  final int page;
  final int limit;

  const BonusesHistoryParams({required this.page, required this.limit});

  @override
  List<Object?> get props => [page, limit];
}
