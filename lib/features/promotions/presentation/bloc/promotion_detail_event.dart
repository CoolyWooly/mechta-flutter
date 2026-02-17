part of 'promotion_detail_bloc.dart';

abstract class PromotionDetailEvent extends Equatable {
  const PromotionDetailEvent();

  @override
  List<Object?> get props => [];
}

class PromotionDetailLoadRequested extends PromotionDetailEvent {
  final String code;

  const PromotionDetailLoadRequested({required this.code});

  @override
  List<Object?> get props => [code];
}
