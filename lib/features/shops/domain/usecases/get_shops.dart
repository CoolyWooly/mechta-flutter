import 'package:mechta_flutter/core/usecase/usecase.dart';
import 'package:mechta_flutter/features/shops/domain/entities/shops_entity.dart';
import 'package:mechta_flutter/features/shops/domain/repositories/shops_repository.dart';

class GetShopsUseCase extends UseCase<List<CityShopsEntity>, NoParams> {
  final ShopsRepository repository;

  GetShopsUseCase(this.repository);

  @override
  Future<List<CityShopsEntity>> call(NoParams params) {
    return repository.getShops();
  }
}
