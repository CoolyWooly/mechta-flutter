import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mechta_flutter/features/promotions/domain/entities/promotion_entity.dart';
import 'package:mechta_flutter/features/promotions/domain/usecases/get_promotions.dart';

part 'promotions_event.dart';
part 'promotions_state.dart';

class PromotionsBloc extends Bloc<PromotionsEvent, PromotionsState> {
  final GetPromotionsUseCase _getPromotions;

  PromotionsBloc({required GetPromotionsUseCase getPromotions})
      : _getPromotions = getPromotions,
        super(const PromotionsState()) {
    on<PromotionsLoadRequested>(_onLoadRequested);
    on<PromotionsNextPageRequested>(_onNextPageRequested);
  }

  Future<void> _onLoadRequested(
    PromotionsLoadRequested event,
    Emitter<PromotionsState> emit,
  ) async {
    emit(state.copyWith(
      status: PromotionsStatus.loading,
      promotions: const [],
      page: 1,
      hasReachedMax: false,
    ));
    try {
      final result = await _getPromotions(const PromotionsParams());
      emit(state.copyWith(
        status: PromotionsStatus.success,
        promotions: result.promotions,
        page: 1,
        totalCount: result.totalCount,
        hasReachedMax: result.promotions.length >= result.totalCount,
      ));
    } catch (e) {
      emit(state.copyWith(
        status: PromotionsStatus.failure,
        errorMessage: e.toString(),
      ));
    }
  }

  Future<void> _onNextPageRequested(
    PromotionsNextPageRequested event,
    Emitter<PromotionsState> emit,
  ) async {
    if (state.hasReachedMax || state.status == PromotionsStatus.loading) return;

    final nextPage = state.page + 1;
    emit(state.copyWith(status: PromotionsStatus.loading));
    try {
      final result = await _getPromotions(PromotionsParams(page: nextPage));
      final allPromotions = [...state.promotions, ...result.promotions];
      emit(state.copyWith(
        status: PromotionsStatus.success,
        promotions: allPromotions,
        page: nextPage,
        totalCount: result.totalCount,
        hasReachedMax: allPromotions.length >= result.totalCount,
      ));
    } catch (e) {
      emit(state.copyWith(
        status: PromotionsStatus.failure,
        errorMessage: e.toString(),
      ));
    }
  }
}
