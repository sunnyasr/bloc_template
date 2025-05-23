part of 'login_bloc.dart';

class LoginState extends Equatable {
  final String email;
  final String password;
  final String error;
  final PostApiStatus postApiStatus;

  const LoginState({
    this.email = '',
    this.password = '',
    this.error = '',
    this.postApiStatus = PostApiStatus.initial,
  });

  LoginState copyWith({
    String? email,
    String? password,
    String? error,
    PostApiStatus? postApiStatus,
  }) {
    return LoginState(
      email: email ?? this.email,
      password: password ?? this.password,
      error: error ?? this.error,
      postApiStatus: postApiStatus ?? this.postApiStatus,
    );
  }

  @override
  List<Object?> get props => [email, password, error, postApiStatus];
}
