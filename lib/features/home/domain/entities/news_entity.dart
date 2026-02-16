import 'package:equatable/equatable.dart';

class NewsEntity extends Equatable {
  final String title;
  final String image;
  final String previewText;

  const NewsEntity({
    required this.title,
    required this.image,
    required this.previewText,
  });

  @override
  List<Object?> get props => [title, image, previewText];
}
