import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mechta_flutter/core/usecase/usecase.dart';
import 'package:mechta_flutter/features/city/domain/entities/city_entity.dart';
import 'package:mechta_flutter/features/city/domain/usecases/get_cities.dart';
import 'package:mechta_flutter/features/city/domain/usecases/get_selected_city.dart';
import 'package:mechta_flutter/features/city/domain/usecases/save_city.dart';

part 'city_event.dart';
part 'city_state.dart';

class CityBloc extends Bloc<CityEvent, CityState> {
  final GetCitiesUseCase _getCities;
  final SaveCityUseCase _saveCity;
  final GetSelectedCityUseCase _getSelectedCity;

  CityBloc({
    required GetCitiesUseCase getCities,
    required SaveCityUseCase saveCity,
    required GetSelectedCityUseCase getSelectedCity,
  })  : _getCities = getCities,
        _saveCity = saveCity,
        _getSelectedCity = getSelectedCity,
        super(const CityState()) {
    on<CityLoadRequested>(_onLoadRequested);
    on<CitySelected>(_onCitySelected);
  }

  Future<void> _onLoadRequested(
    CityLoadRequested event,
    Emitter<CityState> emit,
  ) async {
    emit(state.copyWith(status: CityStatus.loading));
    try {
      final results = await Future.wait([
        _getCities(NoParams()),
        _getSelectedCity(NoParams()),
      ]);
      emit(state.copyWith(
        status: CityStatus.success,
        cities: results[0] as List<CityEntity>,
        selectedCity: results[1] as CityEntity?,
      ));
    } catch (e) {
      emit(state.copyWith(
        status: CityStatus.failure,
        errorMessage: e.toString(),
      ));
    }
  }

  Future<void> _onCitySelected(
    CitySelected event,
    Emitter<CityState> emit,
  ) async {
    await _saveCity(event.city);
    emit(state.copyWith(selectedCity: event.city));
  }
}
