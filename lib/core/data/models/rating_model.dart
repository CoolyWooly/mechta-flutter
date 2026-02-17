import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mechta_flutter/core/domain/entities/rating_entity.dart';

part 'rating_model.freezed.dart';
part 'rating_model.g.dart';

@freezed
abstract class RatingModel with _$RatingModel {
  const RatingModel._();

  const factory RatingModel({
    @JsonKey(name: 'averageRating') double? averageRating,
    @JsonKey(name: 'reviewsCount') int? reviewsCount,
  }) = _RatingModel;

  factory RatingModel.fromJson(Map<String, dynamic> json) =>
      _$RatingModelFromJson(json);

  RatingEntity toEntity() => RatingEntity(
        averageRating: averageRating,
        reviewsCount: reviewsCount,
      );
}
