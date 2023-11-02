import 'package:flutter_origin/common/bases/blocs/events/page_event.dart';

class LoginEvent extends PageEvent {
  @override
  List<Object?> get props => [];
}

class LoginCommand extends LoginEvent {
  final String? username;
  final String? password;

  LoginCommand({required this.username, required this.password});

  @override
  List<Object?> get props => [username];
}

class UserNameChanged extends LoginEvent {
  final String? username;

  UserNameChanged({required this.username});

  @override
  List<Object?> get props => [username];
}

class PasswordChanged extends LoginEvent {
  final String? password;

  PasswordChanged({required this.password});

  @override
  List<Object?> get props => [password];
}
