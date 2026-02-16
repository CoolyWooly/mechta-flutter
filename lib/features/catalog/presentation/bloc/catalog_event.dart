part of 'catalog_bloc.dart';

abstract class CatalogEvent extends Equatable {
  const CatalogEvent();

  @override
  List<Object?> get props => [];
}

class CatalogLoadRequested extends CatalogEvent {
  const CatalogLoadRequested();
}

class BrandsLoadRequested extends CatalogEvent {
  const BrandsLoadRequested();
}
