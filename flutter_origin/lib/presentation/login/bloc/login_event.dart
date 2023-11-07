import 'package:equatable/equatable.dart';

sealed class LoginEvent extends Equatable {}

class UserNameChanged extends LoginEvent {
  final String userName;

  UserNameChanged({required this.userName});

  @override
  List<Object?> get props => [userName];
}

class PasswordChanged extends LoginEvent {
  final String password;

  PasswordChanged({required this.password});

  @override
  List<Object?> get props => [password];
}

class SubmitedLoginEvent extends LoginEvent {
  final String? userName;
  final String? password;

  SubmitedLoginEvent({required this.userName, required this.password});

  @override
  List<Object?> get props => [userName, password];
}
