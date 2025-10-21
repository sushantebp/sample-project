// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_bloc.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_LoginState _$LoginStateFromJson(Map<String, dynamic> json) => _LoginState(
  username: json['username'] as String? ?? "",
  password: json['password'] as String? ?? "",
  loginStatus:
      $enumDecodeNullable(_$LoginStatusEnumMap, json['loginStatus']) ??
      LoginStatus.initial,
  errorMessage: json['errorMessage'] as String?,
);

Map<String, dynamic> _$LoginStateToJson(_LoginState instance) =>
    <String, dynamic>{
      'username': instance.username,
      'password': instance.password,
      'loginStatus': _$LoginStatusEnumMap[instance.loginStatus]!,
      'errorMessage': instance.errorMessage,
    };

const _$LoginStatusEnumMap = {
  LoginStatus.initial: 'initial',
  LoginStatus.loading: 'loading',
  LoginStatus.submitted: 'submitted',
  LoginStatus.failed: 'failed',
};
