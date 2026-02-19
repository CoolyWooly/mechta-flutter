import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mechta_flutter/features/filter/domain/entities/filter_entity.dart';
import 'package:mechta_flutter/features/filter/domain/usecases/get_filters.dart';

part 'filter_event.dart';
part 'filter_state.dart';

class FilterBloc extends Bloc<FilterEvent, FilterState> {
  final GetFiltersUseCase _getFilters;

  FilterBloc({required GetFiltersUseCase getFilters})
      : _getFilters = getFilters,
        super(const FilterState()) {
    on<FilterLoadRequested>(_onLoadRequested);
    on<FilterPropertyToggled>(_onPropertyToggled);
    on<FilterMinPriceChanged>(_onMinPriceChanged);
    on<FilterMaxPriceChanged>(_onMaxPriceChanged);
    on<FilterReset>(_onReset);
  }

  Future<void> _fetchFilters(Emitter<FilterState> emit) async {
    emit(state.copyWith(status: FilterStatus.loading));
    try {
      final result = await _getFilters(FilterParams(
        slug: state.slug,
        properties:
            state.selectedProperties.isEmpty ? null : state.selectedProperties,
        minPrice: state.selectedMinPrice?.toInt(),
        maxPrice: state.selectedMaxPrice?.toInt(),
      ));
      emit(state.copyWith(
        status: FilterStatus.success,
        totalCount: result.totalCount,
        priceRange: result.priceRange,
        properties: result.properties,
      ));
    } catch (e) {
      emit(state.copyWith(
        status: FilterStatus.failure,
        errorMessage: e.toString(),
      ));
    }
  }

  Future<void> _onLoadRequested(
    FilterLoadRequested event,
    Emitter<FilterState> emit,
  ) async {
    emit(FilterState(
      slug: event.slug,
      selectedProperties: Map.from(event.initialProperties ?? {}),
      selectedMinPrice: event.initialMinPrice,
      selectedMaxPrice: event.initialMaxPrice,
    ));
    await _fetchFilters(emit);
  }

  Future<void> _onPropertyToggled(
    FilterPropertyToggled event,
    Emitter<FilterState> emit,
  ) async {
    final updated = Map<String, List<String>>.from(
      state.selectedProperties.map((k, v) => MapEntry(k, List<String>.from(v))),
    );
    final items = List<String>.from(updated[event.propertySlug] ?? []);
    if (items.contains(event.itemSlug)) {
      items.remove(event.itemSlug);
      if (items.isEmpty) {
        updated.remove(event.propertySlug);
      } else {
        updated[event.propertySlug] = items;
      }
    } else {
      updated[event.propertySlug] = [...items, event.itemSlug];
    }
    emit(state.copyWith(selectedProperties: updated));
    await _fetchFilters(emit);
  }

  void _onMinPriceChanged(
    FilterMinPriceChanged event,
    Emitter<FilterState> emit,
  ) {
    emit(FilterState(
      status: state.status,
      slug: state.slug,
      totalCount: state.totalCount,
      priceRange: state.priceRange,
      properties: state.properties,
      selectedProperties: state.selectedProperties,
      selectedMinPrice: event.price,
      selectedMaxPrice: state.selectedMaxPrice,
    ));
  }

  void _onMaxPriceChanged(
    FilterMaxPriceChanged event,
    Emitter<FilterState> emit,
  ) {
    emit(FilterState(
      status: state.status,
      slug: state.slug,
      totalCount: state.totalCount,
      priceRange: state.priceRange,
      properties: state.properties,
      selectedProperties: state.selectedProperties,
      selectedMinPrice: state.selectedMinPrice,
      selectedMaxPrice: event.price,
    ));
  }

  Future<void> _onReset(FilterReset event, Emitter<FilterState> emit) async {
    emit(FilterState(
      slug: state.slug,
      priceRange: state.priceRange,
      properties: state.properties,
    ));
    await _fetchFilters(emit);
  }
}
