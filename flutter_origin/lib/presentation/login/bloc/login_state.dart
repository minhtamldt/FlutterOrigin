// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

class LoginState extends Equatable {
  final String? userName;
  final String? password;
  const LoginState({required this.userName, required this.password});

  LoginState copyWith({
    String? userName,
    String? password,
  }) {
    return LoginState(
      userName: userName ?? this.userName,
      password: password ?? this.password,
    );
  }

  @override
  List<Object?> get props => [userName, password];
}

class UserNameChangeLoginState extends LoginState {
  final String? errorMessage;
  const UserNameChangeLoginState(
      {required super.userName,
      required super.password,
      required this.errorMessage});
}

class PasswordChangeLoginState extends LoginState {
  final String? errorMessage;
  const PasswordChangeLoginState(
      {required super.userName,
      required super.password,
      required this.errorMessage});

  @override
  List<Object?> get props => [userName, password, errorMessage];
}

class SuccessLoginState extends LoginState {
  const SuccessLoginState({required super.userName, required super.password});
}
