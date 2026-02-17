part of 'auth_bloc.dart';

abstract class AuthEvent extends Equatable {
  const AuthEvent();

  @override
  List<Object?> get props => [];
}

class AuthSmsRequested extends AuthEvent {
  final String phone;

  const AuthSmsRequested(this.phone);

  @override
  List<Object?> get props => [phone];
}

class AuthLoginRequested extends AuthEvent {
  final String phone;
  final String otp;

  const AuthLoginRequested({required this.phone, required this.otp});

  @override
  List<Object?> get props => [phone, otp];
}
