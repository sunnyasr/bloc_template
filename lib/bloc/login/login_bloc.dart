import 'package:bloc/bloc.dart';
import 'package:bloc_course/repository/auth/login_repository.dart';
import 'package:bloc_course/services/session_manager/session_controller.dart';
import 'package:bloc_course/utils/enums.dart';
import 'package:equatable/equatable.dart';

part 'login_event.dart';

part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginRepository loginRepository;

  LoginBloc({required this.loginRepository}) : super(LoginState()) {
    on<EmailChange>(_emailChange);
    on<PasswordChange>(_passwordChange);
    on<LoginSubmit>(_loginSubmit);
  }

  void _emailChange(EmailChange event, Emitter<LoginState> emit) {
    print(event.email);
    emit(state.copyWith(email: event.email));
  }

  void _passwordChange(PasswordChange event, Emitter<LoginState> emit) {
    emit(state.copyWith(password: event.password));
  }

  void _loginSubmit(LoginSubmit event, Emitter<LoginState> emit) async {
    emit(state.copyWith(postApiStatus: PostApiStatus.loading));

    Map data = {"email": state.email, "password": state.password};
    await loginRepository
        .loginApi(data)
        .then((value) async {
          if (value.error.isEmpty) {
            await SessionController().saveUserInPreference(value);
            await SessionController().getUserFromPreference();
            emit(state.copyWith(postApiStatus: PostApiStatus.success));
          } else {
            emit(
              state.copyWith(
                postApiStatus: PostApiStatus.error,
                error: value.error.toString(),
              ),
            );
          }
        })
        .onError((error, stackTrace) {
          emit(
            state.copyWith(
              postApiStatus: PostApiStatus.error,
              error: error.toString(),
            ),
          );
        });
  }
}
