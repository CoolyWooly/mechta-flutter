part of 'bonuses_bloc.dart';

enum BonusesStatus { initial, loading, success, failure, loadingMore }

class BonusesState extends Equatable {
  final BonusesStatus status;
  final BonusesSummaryEntity? summary;
  final ChipsSummaryEntity? chips;
  final List<OrderItemEntity> items;
  final int currentPage;
  final int totalPages;
  final String? errorMessage;

  bool get hasMore => currentPage < totalPages;

  const BonusesState({
    this.status = BonusesStatus.initial,
    this.summary,
    this.chips,
    this.items = const [],
    this.currentPage = 0,
    this.totalPages = 0,
    this.errorMessage,
  });

  BonusesState copyWith({
    BonusesStatus? status,
    BonusesSummaryEntity? summary,
    ChipsSummaryEntity? chips,
    List<OrderItemEntity>? items,
    int? currentPage,
    int? totalPages,
    String? errorMessage,
  }) {
    return BonusesState(
      status: status ?? this.status,
      summary: summary ?? this.summary,
      chips: chips ?? this.chips,
      items: items ?? this.items,
      currentPage: currentPage ?? this.currentPage,
      totalPages: totalPages ?? this.totalPages,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }

  @override
  List<Object?> get props =>
      [status, summary, chips, items, currentPage, totalPages, errorMessage];
}
