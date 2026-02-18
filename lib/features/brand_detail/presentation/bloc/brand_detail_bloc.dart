import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mechta_flutter/features/brand_detail/domain/entities/brand_detail_entity.dart';
import 'package:mechta_flutter/features/brand_detail/domain/usecases/get_brand_detail.dart';

part 'brand_detail_event.dart';
part 'brand_detail_state.dart';

class BrandDetailBloc extends Bloc<BrandDetailEvent, BrandDetailState> {
  final GetBrandDetailUseCase _getBrandDetail;

  BrandDetailBloc({required GetBrandDetailUseCase getBrandDetail})
      : _getBrandDetail = getBrandDetail,
        super(const BrandDetailState()) {
    on<BrandDetailLoadRequested>(_onLoadRequested);
  }

  Future<void> _onLoadRequested(
    BrandDetailLoadRequested event,
    Emitter<BrandDetailState> emit,
  ) async {
    emit(state.copyWith(status: BrandDetailStatus.loading));
    try {
      final result = await _getBrandDetail(
        BrandDetailParams(brand: event.brand),
      );
      emit(state.copyWith(
        status: BrandDetailStatus.success,
        brandDetail: result,
      ));
    } catch (e) {
      emit(state.copyWith(
        status: BrandDetailStatus.failure,
        errorMessage: e.toString(),
      ));
    }
  }
}
