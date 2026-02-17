import 'package:equatable/equatable.dart';

class AuthTokenEntity extends Equatable {
  final bool justRegistered;
  final String token;

  const AuthTokenEntity({
    required this.justRegistered,
    required this.token,
  });

  @override
  List<Object?> get props => [justRegistered, token];
}
