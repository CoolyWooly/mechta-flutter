import 'package:mechta_flutter/core/usecase/usecase.dart';
import 'package:mechta_flutter/features/profile/domain/entities/profile_entity.dart';
import 'package:mechta_flutter/features/profile/domain/repositories/profile_repository.dart';

class GetProfileUseCase extends UseCase<ProfileEntity, NoParams> {
  final ProfileRepository repository;

  GetProfileUseCase(this.repository);

  @override
  Future<ProfileEntity> call(NoParams params) {
    return repository.getProfile();
  }
}
