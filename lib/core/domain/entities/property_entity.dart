import 'package:equatable/equatable.dart';

class PropertyEntity extends Equatable {
  final String? name;
  final String? url;
  final String? value;

  const PropertyEntity({
    this.name,
    this.url,
    this.value,
  });

  @override
  List<Object?> get props => [name, url, value];
}
