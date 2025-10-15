part of 'splash_bloc.dart';

enum SplashStatus { initial, checking, authenticated, unauthenticated }

@freezed
abstract class SplashState with _$SplashState {
  const factory SplashState({
    @Default(SplashStatus.initial) SplashStatus splashStatus,
  }) = _SplashState;
}
