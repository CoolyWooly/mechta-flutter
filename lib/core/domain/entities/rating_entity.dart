import 'package:equatable/equatable.dart';

class RatingEntity extends Equatable {
  final double? averageRating;
  final int? reviewsCount;

  const RatingEntity({
    this.averageRating,
    this.reviewsCount,
  });

  @override
  List<Object?> get props => [averageRating, reviewsCount];
}
