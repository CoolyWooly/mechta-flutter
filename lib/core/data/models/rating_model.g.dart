// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rating_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RatingModel _$RatingModelFromJson(Map<String, dynamic> json) => _RatingModel(
  averageRating: (json['averageRating'] as num?)?.toDouble(),
  reviewsCount: (json['reviewsCount'] as num?)?.toInt(),
);

Map<String, dynamic> _$RatingModelToJson(_RatingModel instance) =>
    <String, dynamic>{
      'averageRating': instance.averageRating,
      'reviewsCount': instance.reviewsCount,
    };
