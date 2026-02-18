part of 'bonuses_bloc.dart';

abstract class BonusesEvent extends Equatable {
  const BonusesEvent();

  @override
  List<Object?> get props => [];
}

class BonusesLoadRequested extends BonusesEvent {
  const BonusesLoadRequested();
}

class BonusesLoadMoreRequested extends BonusesEvent {
  const BonusesLoadMoreRequested();
}
