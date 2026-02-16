import 'package:equatable/equatable.dart';

class PopularCategoryEntity extends Equatable {
  final String title;
  final String url;
  final String image;

  const PopularCategoryEntity({
    required this.title,
    required this.url,
    required this.image,
  });

  @override
  List<Object?> get props => [title, url, image];
}
