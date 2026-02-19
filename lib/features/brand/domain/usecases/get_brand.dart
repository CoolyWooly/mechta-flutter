import 'package:equatable/equatable.dart';
import 'package:mechta_flutter/core/usecase/usecase.dart';
import 'package:mechta_flutter/features/brand/domain/entities/brand_entity.dart';
import 'package:mechta_flutter/features/brand/domain/repositories/brand_repository.dart';

class GetBrandUseCase extends UseCase<BrandEntity, BrandParams> {
  final BrandRepository repository;

  GetBrandUseCase(this.repository);

  @override
  Future<BrandEntity> call(BrandParams params) {
    return repository.getBrand(params.brand);
  }
}

class BrandParams extends Equatable {
  final String brand;

  const BrandParams({required this.brand});

  @override
  List<Object?> get props => [brand];
}
