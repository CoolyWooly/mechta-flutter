import 'package:equatable/equatable.dart';

class ShipmentEntity extends Equatable {
  final bool? todayDelivery;
  final bool? expressDelivery;
  final bool? pickupAvailable;
  final int? subdivisions;

  const ShipmentEntity({
    this.todayDelivery,
    this.expressDelivery,
    this.pickupAvailable,
    this.subdivisions,
  });

  @override
  List<Object?> get props => [
        todayDelivery,
        expressDelivery,
        pickupAvailable,
        subdivisions,
      ];
}
