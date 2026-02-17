part of 'promotions_bloc.dart';

enum PromotionsStatus { initial, loading, success, failure }

class PromotionsState extends Equatable {
  final PromotionsStatus status;
  final List<PromotionEntity> promotions;
  final int totalCount;
  final int page;
  final bool hasReachedMax;
  final String? errorMessage;

  const PromotionsState({
    this.status = PromotionsStatus.initial,
    this.promotions = const [],
    this.totalCount = 0,
    this.page = 1,
    this.hasReachedMax = false,
    this.errorMessage,
  });

  PromotionsState copyWith({
    PromotionsStatus? status,
    List<PromotionEntity>? promotions,
    int? totalCount,
    int? page,
    bool? hasReachedMax,
    String? errorMessage,
  }) {
    return PromotionsState(
      status: status ?? this.status,
      promotions: promotions ?? this.promotions,
      totalCount: totalCount ?? this.totalCount,
      page: page ?? this.page,
      hasReachedMax: hasReachedMax ?? this.hasReachedMax,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }

  @override
  List<Object?> get props => [
        status,
        promotions,
        totalCount,
        page,
        hasReachedMax,
        errorMessage,
      ];
}
