import 'package:mechta_flutter/features/profile/domain/entities/profile_entity.dart';
import 'package:mechta_flutter/features/profile/domain/repositories/profile_repository.dart';

class FetchProfileUseCase {
  final ProfileRepository repository;

  FetchProfileUseCase(this.repository);

  Future<ProfileEntity> call() {
    return repository.fetchAndSaveProfile();
  }
}
