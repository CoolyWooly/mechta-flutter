import 'package:equatable/equatable.dart';
import 'package:mechta_flutter/core/domain/entities/image_entity.dart';

class SocialEntity extends Equatable {
  final ImageEntity? icon;
  final String url;

  const SocialEntity({
    this.icon,
    this.url = '',
  });

  @override
  List<Object?> get props => [icon, url];
}
