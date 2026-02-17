part of 'city_bloc.dart';

abstract class CityEvent extends Equatable {
  const CityEvent();

  @override
  List<Object?> get props => [];
}

class CityLoadRequested extends CityEvent {
  const CityLoadRequested();
}

class CitySelected extends CityEvent {
  final CityEntity city;

  const CitySelected(this.city);

  @override
  List<Object?> get props => [city];
}
