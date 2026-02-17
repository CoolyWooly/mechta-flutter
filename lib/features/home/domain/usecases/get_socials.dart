import 'package:mechta_flutter/core/usecase/usecase.dart';
import 'package:mechta_flutter/features/home/domain/entities/social_entity.dart';
import 'package:mechta_flutter/features/home/domain/repositories/home_repository.dart';

class GetSocialsUseCase extends UseCase<List<SocialEntity>, NoParams> {
  final HomeRepository repository;

  GetSocialsUseCase(this.repository);

  @override
  Future<List<SocialEntity>> call(NoParams params) {
    return repository.getSocials();
  }
}
