import 'package:equatable/equatable.dart';
import 'package:mechta_flutter/core/usecase/usecase.dart';
import 'package:mechta_flutter/features/auth/domain/entities/auth_token_entity.dart';
import 'package:mechta_flutter/features/auth/domain/repositories/auth_repository.dart';

class LoginUseCase extends UseCase<AuthTokenEntity, LoginParams> {
  final AuthRepository repository;

  LoginUseCase(this.repository);

  @override
  Future<AuthTokenEntity> call(LoginParams params) {
    return repository.login(params.phone, params.otp);
  }
}

class LoginParams extends Equatable {
  final String phone;
  final String otp;

  const LoginParams({required this.phone, required this.otp});

  @override
  List<Object?> get props => [phone, otp];
}
