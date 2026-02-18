import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:mechta_flutter/app/di.dart';
import 'package:mechta_flutter/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:mechta_flutter/l10n/app_localizations.dart';

class AuthBottomSheet extends StatelessWidget {
  final VoidCallback? onSuccess;

  const AuthBottomSheet({super.key, this.onSuccess});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => sl<AuthBloc>(),
      child: _AuthBottomSheetView(onSuccess: onSuccess),
    );
  }
}

class _AuthBottomSheetView extends StatefulWidget {
  final VoidCallback? onSuccess;

  const _AuthBottomSheetView({this.onSuccess});

  @override
  State<_AuthBottomSheetView> createState() => _AuthBottomSheetViewState();
}

class _AuthBottomSheetViewState extends State<_AuthBottomSheetView> {
  final _phoneController = TextEditingController();
  final _otpController = TextEditingController();
  final _phoneMask = MaskTextInputFormatter(
    mask: '+7 (###) ###-##-##',
    filter: {'#': RegExp(r'[0-9]')},
  );

  @override
  void dispose() {
    _phoneController.dispose();
    _otpController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthBloc, AuthState>(
      listener: (context, state) {
        if (state.status == AuthStatus.success) {
          Navigator.of(context).pop();
          widget.onSuccess?.call();
        }
        if (state.status == AuthStatus.failure && state.errorMessage != null) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(state.errorMessage!)),
          );
        }
      },
      builder: (context, state) {
        final isSmsSent = state.status == AuthStatus.smsSent ||
            state.status == AuthStatus.loggingIn;

        return Padding(
          padding: EdgeInsets.only(
            left: 24,
            right: 24,
            top: 24,
            bottom: MediaQuery.of(context).viewInsets.bottom + 24,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                isSmsSent ? AppLocalizations.of(context)!.enterSmsCode : AppLocalizations.of(context)!.signInTitle,
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(height: 16),
              if (!isSmsSent) ...[
                TextField(
                  controller: _phoneController,
                  keyboardType: TextInputType.phone,
                  inputFormatters: [_phoneMask],
                  decoration: InputDecoration(
                    labelText: AppLocalizations.of(context)!.phoneNumber,
                    hintText: '+7 (___) ___-__-__',
                    border: const OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 16),
                ElevatedButton(
                  onPressed: state.status == AuthStatus.smsSending
                      ? null
                      : () {
                          final phone = _phoneMask.getUnmaskedText();
                          if (phone.length == 10) {
                            context
                                .read<AuthBloc>()
                                .add(AuthSmsRequested('7$phone'));
                          }
                        },
                  child: state.status == AuthStatus.smsSending
                      ? const SizedBox(
                          height: 20,
                          width: 20,
                          child: CircularProgressIndicator(strokeWidth: 2),
                        )
                      : Text(AppLocalizations.of(context)!.getSms),
                ),
              ] else ...[
                TextField(
                  controller: _otpController,
                  keyboardType: TextInputType.number,
                  maxLength: 4,
                  inputFormatters: [
                    FilteringTextInputFormatter.digitsOnly,
                  ],
                  decoration: InputDecoration(
                    labelText: AppLocalizations.of(context)!.smsCode,
                    counterText: '',
                    border: const OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 16),
                ElevatedButton(
                  onPressed: state.status == AuthStatus.loggingIn
                      ? null
                      : () {
                          final otp = _otpController.text.trim();
                          if (otp.isNotEmpty && state.phone != null) {
                            context.read<AuthBloc>().add(
                                  AuthLoginRequested(
                                    phone: state.phone!,
                                    otp: otp,
                                  ),
                                );
                          }
                        },
                  child: state.status == AuthStatus.loggingIn
                      ? const SizedBox(
                          height: 20,
                          width: 20,
                          child: CircularProgressIndicator(strokeWidth: 2),
                        )
                      : Text(AppLocalizations.of(context)!.send),
                ),
              ],
            ],
          ),
        );
      },
    );
  }
}
