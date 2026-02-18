import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mechta_flutter/core/usecase/usecase.dart';
import 'package:mechta_flutter/features/shops/domain/entities/shops_entity.dart';
import 'package:mechta_flutter/features/shops/domain/usecases/get_shops.dart';

part 'shops_event.dart';
part 'shops_state.dart';

class ShopsBloc extends Bloc<ShopsEvent, ShopsState> {
  final GetShopsUseCase _getShops;

  ShopsBloc({required GetShopsUseCase getShops})
      : _getShops = getShops,
        super(const ShopsState()) {
    on<ShopsLoadRequested>(_onLoadRequested);
  }

  Future<void> _onLoadRequested(
    ShopsLoadRequested event,
    Emitter<ShopsState> emit,
  ) async {
    emit(state.copyWith(status: ShopsStatus.loading));
    try {
      final cities = await _getShops(NoParams());
      emit(state.copyWith(
        status: ShopsStatus.success,
        cities: cities,
      ));
    } catch (e) {
      emit(state.copyWith(
        status: ShopsStatus.failure,
        errorMessage: e.toString(),
      ));
    }
  }
}
