import 'package:equatable/equatable.dart';

class CategoryEntity extends Equatable {
  final String name;
  final String url;
  final String image;

  const CategoryEntity({
    required this.name,
    required this.url,
    required this.image,
  });

  @override
  List<Object?> get props => [name, url, image];
}
