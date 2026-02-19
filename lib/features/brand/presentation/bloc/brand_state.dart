part of 'brand_bloc.dart';

enum BrandStatus { initial, loading, success, failure }

class BrandState extends Equatable {
  final BrandStatus status;
  final BrandEntity? brand;
  final String? errorMessage;

  const BrandState({
    this.status = BrandStatus.initial,
    this.brand,
    this.errorMessage,
  });

  BrandState copyWith({
    BrandStatus? status,
    BrandEntity? brand,
    String? errorMessage,
  }) {
    return BrandState(
      status: status ?? this.status,
      brand: brand ?? this.brand,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }

  @override
  List<Object?> get props => [status, brand, errorMessage];
}
