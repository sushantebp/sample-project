part of 'login_bloc.dart';

enum LoginStatus { initial, loading, submitted, failed }

@freezed
abstract class LoginState with _$LoginState {
  const factory LoginState({
    @Default("") String username,
    @Default("") String password,
    @Default(LoginStatus.initial) LoginStatus loginStatus,
    String? errorMessage,
  }) = _LoginState;

  factory LoginState.fromJson(Map<String, dynamic> json) =>
      _$LoginStateFromJson(json);
}
