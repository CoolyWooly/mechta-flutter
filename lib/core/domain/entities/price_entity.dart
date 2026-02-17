import 'package:equatable/equatable.dart';

class PriceEntity extends Equatable {
  final int? basePrice;
  final int? finalPrice;

  const PriceEntity({
    this.basePrice,
    this.finalPrice,
  });

  @override
  List<Object?> get props => [basePrice, finalPrice];
}
