import 'package:equatable/equatable.dart';
import 'package:mechta_flutter/core/domain/entities/image_entity.dart';

class BrandEntity extends Equatable {
  final String name;
  final String code;
  final ImageEntity? image;

  const BrandEntity({
    required this.name,
    required this.code,
    this.image,
  });

  @override
  List<Object?> get props => [name, code, image];
}
