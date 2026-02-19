part of 'shops_bloc.dart';

enum ShopsStatus { initial, loading, success, failure }

class ShopsState extends Equatable {
  final ShopsStatus status;
  final List<CityShopsEntity> cities;
  final String? errorMessage;

  const ShopsState({
    this.status = ShopsStatus.initial,
    this.cities = const [],
    this.errorMessage,
  });

  ShopsState copyWith({
    ShopsStatus? status,
    List<CityShopsEntity>? cities,
    String? errorMessage,
  }) {
    return ShopsState(
      status: status ?? this.status,
      cities: cities ?? this.cities,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }

  @override
  List<Object?> get props => [status, cities, errorMessage];
}
