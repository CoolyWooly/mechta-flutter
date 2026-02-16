import 'package:mechta_flutter/features/profile/data/datasources/profile_local_data_source.dart';
import 'package:mechta_flutter/features/profile/domain/entities/profile_entity.dart';
import 'package:mechta_flutter/features/profile/domain/repositories/profile_repository.dart';

class ProfileRepositoryImpl implements ProfileRepository {
  final ProfileLocalDataSource localDataSource;

  ProfileRepositoryImpl({required this.localDataSource});

  @override
  Future<ProfileEntity> getProfile() async {
    final model = await localDataSource.getProfile();
    return model.toEntity();
  }
}
