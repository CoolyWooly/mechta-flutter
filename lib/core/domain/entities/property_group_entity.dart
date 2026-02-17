import 'package:equatable/equatable.dart';
import 'package:mechta_flutter/core/domain/entities/property_entity.dart';

class PropertyGroupEntity extends Equatable {
  final String? name;
  final List<PropertyEntity> properties;

  const PropertyGroupEntity({
    this.name,
    this.properties = const [],
  });

  @override
  List<Object?> get props => [name, properties];
}
