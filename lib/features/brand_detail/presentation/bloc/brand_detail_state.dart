part of 'brand_detail_bloc.dart';

enum BrandDetailStatus { initial, loading, success, failure }

class BrandDetailState extends Equatable {
  final BrandDetailStatus status;
  final BrandDetailEntity? brandDetail;
  final String? errorMessage;

  const BrandDetailState({
    this.status = BrandDetailStatus.initial,
    this.brandDetail,
    this.errorMessage,
  });

  BrandDetailState copyWith({
    BrandDetailStatus? status,
    BrandDetailEntity? brandDetail,
    String? errorMessage,
  }) {
    return BrandDetailState(
      status: status ?? this.status,
      brandDetail: brandDetail ?? this.brandDetail,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }

  @override
  List<Object?> get props => [status, brandDetail, errorMessage];
}
