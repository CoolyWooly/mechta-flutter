import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mechta_flutter/features/brand/domain/entities/brand_entity.dart';
import 'package:mechta_flutter/features/brand/domain/usecases/get_brand.dart';

part 'brand_event.dart';
part 'brand_state.dart';

class BrandBloc extends Bloc<BrandEvent, BrandState> {
  final GetBrandUseCase _getBrand;

  BrandBloc({required GetBrandUseCase getBrand})
      : _getBrand = getBrand,
        super(const BrandState()) {
    on<BrandLoadRequested>(_onLoadRequested);
  }

  Future<void> _onLoadRequested(
    BrandLoadRequested event,
    Emitter<BrandState> emit,
  ) async {
    emit(state.copyWith(status: BrandStatus.loading));
    try {
      final result = await _getBrand(
        BrandParams(brand: event.brand),
      );
      emit(state.copyWith(
        status: BrandStatus.success,
        brand: result,
      ));
    } catch (e) {
      emit(state.copyWith(
        status: BrandStatus.failure,
        errorMessage: e.toString(),
      ));
    }
  }
}
