import 'package:equatable/equatable.dart';

class CategoryInfoEntity extends Equatable {
  final String? name;
  final List<CategoryChildEntity> children;

  const CategoryInfoEntity({
    this.name,
    this.children = const [],
  });

  @override
  List<Object?> get props => [name, children];
}

class CategoryChildEntity extends Equatable {
  final String name;
  final String slug;

  const CategoryChildEntity({
    required this.name,
    required this.slug,
  });

  @override
  List<Object?> get props => [name, slug];
}
