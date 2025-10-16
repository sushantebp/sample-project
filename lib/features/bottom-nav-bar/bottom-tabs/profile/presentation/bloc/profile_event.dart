part of 'profile_bloc.dart';

sealed class ProfileEvent {
  const ProfileEvent();
}

final class FetchUserDetailEvent extends ProfileEvent {}

final class LogoutUserEvent extends ProfileEvent {}
