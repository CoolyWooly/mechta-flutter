import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mechta_flutter/features/bonuses/domain/entities/bonuses_entity.dart';
import 'package:mechta_flutter/features/bonuses/domain/usecases/get_bonuses_history.dart';

part 'bonuses_event.dart';
part 'bonuses_state.dart';

const _pageLimit = 20;

class BonusesBloc extends Bloc<BonusesEvent, BonusesState> {
  final GetBonusesHistoryUseCase _getBonusesHistory;

  BonusesBloc({required GetBonusesHistoryUseCase getBonusesHistory})
      : _getBonusesHistory = getBonusesHistory,
        super(const BonusesState()) {
    on<BonusesLoadRequested>(_onLoadRequested);
    on<BonusesLoadMoreRequested>(_onLoadMoreRequested);
  }

  Future<void> _onLoadRequested(
    BonusesLoadRequested event,
    Emitter<BonusesState> emit,
  ) async {
    emit(state.copyWith(status: BonusesStatus.loading));
    try {
      final result = await _getBonusesHistory(
        const BonusesHistoryParams(page: 1, limit: _pageLimit),
      );
      emit(state.copyWith(
        status: BonusesStatus.success,
        summary: result.summary,
        chips: result.chips,
        items: result.items,
        currentPage: result.pageNumber ?? 1,
        totalPages: result.allPages ?? 1,
      ));
    } catch (e) {
      emit(state.copyWith(
        status: BonusesStatus.failure,
        errorMessage: e.toString(),
      ));
    }
  }

  Future<void> _onLoadMoreRequested(
    BonusesLoadMoreRequested event,
    Emitter<BonusesState> emit,
  ) async {
    if (!state.hasMore || state.status == BonusesStatus.loadingMore) return;
    emit(state.copyWith(status: BonusesStatus.loadingMore));
    try {
      final nextPage = state.currentPage + 1;
      final result = await _getBonusesHistory(
        BonusesHistoryParams(page: nextPage, limit: _pageLimit),
      );
      emit(state.copyWith(
        status: BonusesStatus.success,
        items: [...state.items, ...result.items],
        currentPage: result.pageNumber ?? nextPage,
        totalPages: result.allPages ?? state.totalPages,
      ));
    } catch (e) {
      emit(state.copyWith(
        status: BonusesStatus.failure,
        errorMessage: e.toString(),
      ));
    }
  }
}
