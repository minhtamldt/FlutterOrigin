// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter_origin/core/base/bloc/base_state.dart';

enum UserNameErrorType { invalid, valid }

enum PasswordErrorType { invalidLenght, invalidNumber, valid }

class LoginPageState extends BaseState {
  final String? userName;
  final String? password;
  final UserNameErrorType? userNameError;
  final PasswordErrorType? passwordError;
  final bool? isHidePassword;

  LoginPageState({
    this.userName = 'tamtm',
    this.password = '123456',
    this.userNameError = UserNameErrorType.valid,
    this.passwordError = PasswordErrorType.valid,
    this.isHidePassword = false,
  });

  @override
  List<Object?> get props => [
        userName,
        password,
        userNameError,
        passwordError,
        isHidePassword,
      ];

  LoginPageState copyWith({
    String? userName,
    String? password,
    UserNameErrorType? userNameError,
    PasswordErrorType? passwordError,
    bool? isHidePassword,
  }) {
    return LoginPageState(
      userName: userName ?? this.userName,
      password: password ?? this.password,
      userNameError: userNameError ?? this.userNameError,
      passwordError: passwordError ?? this.passwordError,
      isHidePassword: isHidePassword ?? this.isHidePassword,
    );
  }
}
