part of 'brand_detail_bloc.dart';

abstract class BrandDetailEvent extends Equatable {
  const BrandDetailEvent();

  @override
  List<Object?> get props => [];
}

class BrandDetailLoadRequested extends BrandDetailEvent {
  final String brand;

  const BrandDetailLoadRequested({required this.brand});

  @override
  List<Object?> get props => [brand];
}
