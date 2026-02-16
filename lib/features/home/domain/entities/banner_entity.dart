import 'package:equatable/equatable.dart';

class BannerEntity extends Equatable {
  final String name;
  final String mobile;
  final String url;

  const BannerEntity({
    required this.name,
    required this.mobile,
    required this.url,
  });

  @override
  List<Object?> get props => [name, mobile, url];
}
