part of 'auth_bloc.dart';

enum AuthStatus { initial, smsSending, smsSent, loggingIn, success, failure }

class AuthState extends Equatable {
  final AuthStatus status;
  final String? phone;
  final String? errorMessage;

  const AuthState({
    this.status = AuthStatus.initial,
    this.phone,
    this.errorMessage,
  });

  AuthState copyWith({
    AuthStatus? status,
    String? phone,
    String? errorMessage,
  }) {
    return AuthState(
      status: status ?? this.status,
      phone: phone ?? this.phone,
      errorMessage: errorMessage,
    );
  }

  @override
  List<Object?> get props => [status, phone, errorMessage];
}
