import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sample_project/core/core.dart';
import 'package:sample_project/features/login/domain/domain.dart';

part 'login_event.dart';
part 'login_state.dart';

part 'login_bloc.freezed.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
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
    try {
      final loginRequest = LoginRequestEntity(
        username: state.username,
        password: state.password,
      );
      await loginRepository.login(loginRequest);
      emit(
        state.copyWith(loginStatus: LoginStatus.submitted, errorMessage: null),
      );
    } on AppException catch (e) {
      String customMessage;
      if (e is BadRequestException) {
        customMessage = e.message;
      } else if (e is ServerException) {
        customMessage = e.message;
      } else {
        customMessage = e.message;
      }

      emit(
        state.copyWith(
          loginStatus: LoginStatus.failed,
          errorMessage: customMessage,
        ),
      );
    } catch (_) {
      emit(
        state.copyWith(
          loginStatus: LoginStatus.failed,
          errorMessage: "Unexpected error occurred",
        ),
      );
    }
  }
}
