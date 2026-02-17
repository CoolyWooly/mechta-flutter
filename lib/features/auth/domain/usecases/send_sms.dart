import 'package:mechta_flutter/core/usecase/usecase.dart';
import 'package:mechta_flutter/features/auth/domain/repositories/auth_repository.dart';

class SendSmsUseCase extends UseCase<void, String> {
  final AuthRepository repository;

  SendSmsUseCase(this.repository);

  @override
  Future<void> call(String phone) {
    return repository.sendSms(phone);
  }
}
