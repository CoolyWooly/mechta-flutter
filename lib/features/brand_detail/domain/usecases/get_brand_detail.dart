import 'package:equatable/equatable.dart';
import 'package:mechta_flutter/core/usecase/usecase.dart';
import 'package:mechta_flutter/features/brand_detail/domain/entities/brand_detail_entity.dart';
import 'package:mechta_flutter/features/brand_detail/domain/repositories/brand_detail_repository.dart';

class GetBrandDetailUseCase extends UseCase<BrandDetailEntity, BrandDetailParams> {
  final BrandDetailRepository repository;

  GetBrandDetailUseCase(this.repository);

  @override
  Future<BrandDetailEntity> call(BrandDetailParams params) {
    return repository.getBrandDetail(params.brand);
  }
}

class BrandDetailParams extends Equatable {
  final String brand;

  const BrandDetailParams({required this.brand});

  @override
  List<Object?> get props => [brand];
}
