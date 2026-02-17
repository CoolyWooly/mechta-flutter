import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mechta_flutter/features/promotions/domain/entities/promotion_detail_entity.dart';
import 'package:mechta_flutter/features/promotions/domain/usecases/get_promotion_detail.dart';

part 'promotion_detail_event.dart';
part 'promotion_detail_state.dart';

class PromotionDetailBloc
    extends Bloc<PromotionDetailEvent, PromotionDetailState> {
  final GetPromotionDetailUseCase _getPromotionDetail;

  PromotionDetailBloc({required GetPromotionDetailUseCase getPromotionDetail})
      : _getPromotionDetail = getPromotionDetail,
        super(const PromotionDetailState()) {
    on<PromotionDetailLoadRequested>(_onLoadRequested);
  }

  Future<void> _onLoadRequested(
    PromotionDetailLoadRequested event,
    Emitter<PromotionDetailState> emit,
  ) async {
    emit(state.copyWith(status: PromotionDetailStatus.loading));
    try {
      final detail = await _getPromotionDetail(event.code);
      emit(state.copyWith(
        status: PromotionDetailStatus.success,
        detail: detail,
      ));
    } catch (e) {
      emit(state.copyWith(
        status: PromotionDetailStatus.failure,
        errorMessage: e.toString(),
      ));
    }
  }
}
