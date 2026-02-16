import 'package:equatable/equatable.dart';

class ProfileEntity extends Equatable {
  final String? name;
  final String? email;
  final String? phone;
  final String? avatarUrl;

  const ProfileEntity({
    this.name,
    this.email,
    this.phone,
    this.avatarUrl,
  });

  bool get isAuthenticated => name != null || email != null;

  @override
  List<Object?> get props => [name, email, phone, avatarUrl];
}
