part of 'login_bloc.dart';

abstract class LoginEvent extends Equatable {
  const LoginEvent();

  @override
  List<Object> get props => [];
}

class EmailChange extends LoginEvent {
  final String email;

  const EmailChange({required this.email});

  @override
  // TODO: implement props
  List<Object> get props => [email];
}

class EmailUnfocused extends LoginEvent {}

class PasswordChange extends LoginEvent {
  final String password;

  const PasswordChange({required this.password});

  @override
  // TODO: implement props
  List<Object> get props => [password];
}

class PasswordUnfocused extends LoginEvent {}

class LoginSubmit extends LoginEvent {}
