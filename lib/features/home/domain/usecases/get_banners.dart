import 'package:mechta_flutter/core/usecase/usecase.dart';
import 'package:mechta_flutter/features/home/domain/entities/banner_entity.dart';
import 'package:mechta_flutter/features/home/domain/repositories/home_repository.dart';

class GetBannersUseCase extends UseCase<List<BannerEntity>, NoParams> {
  final HomeRepository repository;

  GetBannersUseCase(this.repository);

  @override
  Future<List<BannerEntity>> call(NoParams params) {
    return repository.getBanners();
  }
}
