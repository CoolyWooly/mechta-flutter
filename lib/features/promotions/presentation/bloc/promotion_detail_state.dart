part of 'promotion_detail_bloc.dart';

enum PromotionDetailStatus { initial, loading, success, failure }

class PromotionDetailState extends Equatable {
  final PromotionDetailStatus status;
  final PromotionDetailEntity? detail;
  final String? errorMessage;

  const PromotionDetailState({
    this.status = PromotionDetailStatus.initial,
    this.detail,
    this.errorMessage,
  });

  PromotionDetailState copyWith({
    PromotionDetailStatus? status,
    PromotionDetailEntity? detail,
    String? errorMessage,
  }) {
    return PromotionDetailState(
      status: status ?? this.status,
      detail: detail ?? this.detail,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }

  @override
  List<Object?> get props => [status, detail, errorMessage];
}
