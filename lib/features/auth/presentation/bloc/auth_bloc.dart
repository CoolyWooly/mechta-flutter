import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mechta_flutter/features/auth/domain/usecases/login.dart';
import 'package:mechta_flutter/features/auth/domain/usecases/send_sms.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final SendSmsUseCase _sendSms;
  final LoginUseCase _login;

  AuthBloc({
    required SendSmsUseCase sendSms,
    required LoginUseCase login,
  })  : _sendSms = sendSms,
        _login = login,
        super(const AuthState()) {
    on<AuthSmsRequested>(_onSmsRequested);
    on<AuthLoginRequested>(_onLoginRequested);
  }

  Future<void> _onSmsRequested(
    AuthSmsRequested event,
    Emitter<AuthState> emit,
  ) async {
    emit(state.copyWith(status: AuthStatus.smsSending, phone: event.phone));
    try {
      await _sendSms(event.phone);
      emit(state.copyWith(status: AuthStatus.smsSent));
    } catch (e) {
      emit(state.copyWith(
        status: AuthStatus.failure,
        errorMessage: e.toString(),
      ));
    }
  }

  Future<void> _onLoginRequested(
    AuthLoginRequested event,
    Emitter<AuthState> emit,
  ) async {
    emit(state.copyWith(status: AuthStatus.loggingIn));
    try {
      await _login(LoginParams(phone: event.phone, otp: event.otp));
      emit(state.copyWith(status: AuthStatus.success));
    } catch (e) {
      emit(state.copyWith(
        status: AuthStatus.failure,
        errorMessage: e.toString(),
      ));
    }
  }
}
