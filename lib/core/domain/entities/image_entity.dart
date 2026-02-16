import 'package:equatable/equatable.dart';

class ImageEntity extends Equatable {
  final String? dark;
  final String? light;

  const ImageEntity({
    this.dark,
    this.light,
  });

  @override
  List<Object?> get props => [dark, light];
}
