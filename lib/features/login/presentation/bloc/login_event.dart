part of 'login_bloc.dart';

sealed class LoginEvent {
  const LoginEvent();
}

final class UserNameChangedEvent extends LoginEvent {
  final String username;
  UserNameChangedEvent(this.username);
}

final class PasswordChangedEvent extends LoginEvent {
  final String password;
  PasswordChangedEvent(this.password);
}

final class LoginSubmittedEvent extends LoginEvent {
  const LoginSubmittedEvent();
}
