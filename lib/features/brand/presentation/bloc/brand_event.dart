part of 'brand_bloc.dart';

abstract class BrandEvent extends Equatable {
  const BrandEvent();

  @override
  List<Object?> get props => [];
}

class BrandLoadRequested extends BrandEvent {
  final String brand;

  const BrandLoadRequested({required this.brand});

  @override
  List<Object?> get props => [brand];
}
