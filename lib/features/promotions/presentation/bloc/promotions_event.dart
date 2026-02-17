part of 'promotions_bloc.dart';

abstract class PromotionsEvent extends Equatable {
  const PromotionsEvent();

  @override
  List<Object?> get props => [];
}

class PromotionsLoadRequested extends PromotionsEvent {
  const PromotionsLoadRequested();
}

class PromotionsNextPageRequested extends PromotionsEvent {
  const PromotionsNextPageRequested();
}
