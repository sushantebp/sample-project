import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sample_project/core/core.dart';

part 'splash_event.dart';
part 'splash_state.dart';
part 'splash_bloc.freezed.dart';

class SplashBloc extends Bloc<SplashEvent, SplashState> {
  SplashBloc() : super(const SplashState()) {
    on<CheckUserAuthEvent>(_onChecking);
  }

  Future<void> _onChecking(
    CheckUserAuthEvent event,
    Emitter<SplashState> emit,
  ) async {
    emit(state.copyWith(splashStatus: SplashStatus.checking));

    final refreshToken = await getRefreshToken();
    if (refreshToken == null || refreshToken.isEmpty) {
      emit(state.copyWith(splashStatus: SplashStatus.unauthenticated));
    } else {
      emit(state.copyWith(splashStatus: SplashStatus.authenticated));
    }
  }
}
