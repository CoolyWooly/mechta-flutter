import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mechta_flutter/features/auth/domain/entities/auth_token_entity.dart';

part 'auth_token_model.freezed.dart';
part 'auth_token_model.g.dart';

@freezed
abstract class AuthTokenModel with _$AuthTokenModel {
  const AuthTokenModel._();

  const factory AuthTokenModel({
    @JsonKey(name: 'justRegistered') @Default(false) bool justRegistered,
    @JsonKey(name: 'token') String? token,
  }) = _AuthTokenModel;

  factory AuthTokenModel.fromJson(Map<String, dynamic> json) =>
      _$AuthTokenModelFromJson(json);

  AuthTokenEntity toEntity() => AuthTokenEntity(
        justRegistered: justRegistered,
        token: token ?? '',
      );
}
