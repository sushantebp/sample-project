import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:sample_project/features/login/domain/domain.dart';

part 'login_event.dart';
part 'login_state.dart';

part 'login_bloc.freezed.dart';
part 'login_bloc.g.dart';

class LoginBloc extends HydratedBloc<LoginEvent, LoginState> {
  final LoginRepository loginRepository;
  LoginBloc({required this.loginRepository}) : super(const LoginState()) {
    on<UserNameChangedEvent>(_onUserNameChanged);
    on<PasswordChangedEvent>(_onPasswordChanged);
    on<LoginSubmittedEvent>(_onLoginSubmitted);
  }

  void _onUserNameChanged(
    UserNameChangedEvent event,
    Emitter<LoginState> emit,
  ) => emit(state.copyWith(username: event.username));

  void _onPasswordChanged(
    PasswordChangedEvent event,
    Emitter<LoginState> emit,
  ) => emit(state.copyWith(password: event.password));

  Future<void> _onLoginSubmitted(
    LoginSubmittedEvent event,
    Emitter<LoginState> emit,
  ) async {
    emit(state.copyWith(loginStatus: LoginStatus.loading));

    await Future.delayed(const Duration(seconds: 2));

    LoginRequestEntity loginRequest = LoginRequestEntity(
      username: state.username,
      password: state.password,
    );
    final result = await loginRepository.login(loginRequest);

    result.fold(
      (failure) => emit(
        state.copyWith(
          loginStatus: LoginStatus.failed,
          errorMessage: failure.message,
        ),
      ),
      (_) => emit(
        state.copyWith(loginStatus: LoginStatus.submitted, errorMessage: null),
      ),
    );
  }

  @override
  LoginState? fromJson(Map<String, dynamic> json) {
    try {
      return LoginState.fromJson(json);
    } catch (_) {
      return null;
    }
  }

  @override
  Map<String, dynamic>? toJson(LoginState state) {
    try {
      return state.toJson();
    } catch (_) {
      return null;
    }
  }
}
