import 'package:equatable/equatable.dart';

class MetricsEntity extends Equatable {
  final String? name;
  final String? brand;
  final String? category;

  const MetricsEntity({
    this.name,
    this.brand,
    this.category,
  });

  @override
  List<Object?> get props => [name, brand, category];
}
