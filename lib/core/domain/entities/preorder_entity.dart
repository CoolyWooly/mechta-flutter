import 'package:equatable/equatable.dart';

class PreorderEntity extends Equatable {
  final String? activeFrom;
  final String? activeTo;
  final String? sellFrom;

  const PreorderEntity({
    this.activeFrom,
    this.activeTo,
    this.sellFrom,
  });

  @override
  List<Object?> get props => [activeFrom, activeTo, sellFrom];
}
