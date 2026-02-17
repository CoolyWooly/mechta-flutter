part of 'city_bloc.dart';

enum CityStatus { initial, loading, success, failure }

class CityState extends Equatable {
  final CityStatus status;
  final List<CityEntity> cities;
  final CityEntity? selectedCity;
  final String? errorMessage;

  const CityState({
    this.status = CityStatus.initial,
    this.cities = const [],
    this.selectedCity,
    this.errorMessage,
  });

  CityState copyWith({
    CityStatus? status,
    List<CityEntity>? cities,
    CityEntity? selectedCity,
    String? errorMessage,
  }) {
    return CityState(
      status: status ?? this.status,
      cities: cities ?? this.cities,
      selectedCity: selectedCity ?? this.selectedCity,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }

  @override
  List<Object?> get props => [status, cities, selectedCity, errorMessage];
}
