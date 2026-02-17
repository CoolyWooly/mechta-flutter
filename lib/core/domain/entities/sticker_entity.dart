import 'package:equatable/equatable.dart';

class StickerEntity extends Equatable {
  final String? code;
  final String? name;
  final String? link;
  final String? color;
  final bool? isSuperAction;
  final String? description;

  const StickerEntity({
    this.code,
    this.name,
    this.link,
    this.color,
    this.isSuperAction,
    this.description,
  });

  @override
  List<Object?> get props => [code, name, link, color, isSuperAction, description];
}
