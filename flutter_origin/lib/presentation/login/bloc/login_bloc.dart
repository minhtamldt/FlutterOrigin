import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_origin/presentation/login/bloc/login_event.dart';
import 'package:flutter_origin/presentation/login/bloc/login_state.dart';

class LoginPageBloc extends Bloc<LoginEvent, LoginState> {
  LoginPageBloc(super.initialState) {
    on<UserNameChanged>(_onUserNameChanged);
    on<PasswordChanged>(_onPasswordChanged);
    on<SubmitedLoginEvent>(_onSubmitedLoginEvent);
  }

  FutureOr<void> _onUserNameChanged(
      UserNameChanged event, Emitter<LoginState> emit) {
    var messageError = _validateUsername(event.userName);
    emit(UserNameChangeLoginState(
        userName: event.userName,
        password: state.password,
        errorMessage: messageError));
  }

  FutureOr<void> _onPasswordChanged(
      PasswordChanged event, Emitter<LoginState> emit) {
    var messageError = _validatePassword(event.password);
    emit(PasswordChangeLoginState(
        userName: state.userName,
        password: event.password,
        errorMessage: messageError));
  }

  String _validatePassword(String password) {
    if (password.length < 8) {
      return "Password must be at least 8 characters long";
    }

    // Check for at least one uppercase letter
    if (!password.contains(RegExp(r'[A-Z]'))) {
      return "Password must contain at least one uppercase letter";
    }

    // Check for at least one lowercase letter
    if (!password.contains(RegExp(r'[a-z]'))) {
      return "Password must contain at least one lowercase letter";
    }

    // Check for at least one digit
    if (!password.contains(RegExp(r'[0-9]'))) {
      return "Password must contain at least one digit";
    }

    // Check for at least one special character
    if (!password.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'))) {
      return "Password must contain at least one special character";
    }

    // If all conditions pass, the password is valid
    return "";
  }

  String _validateUsername(String username) {
    // Check the length of the username (between 4 and 20 characters)
    if (username.length < 4 || username.length > 20) {
      return "Username must be between 4 and 20 characters long";
    }

    // Check if the username contains only alphanumeric characters and underscores
    if (!RegExp(r'^[a-zA-Z0-9_]+$').hasMatch(username)) {
      return "Username can only contain alphanumeric characters and underscores";
    }

    // Additional checks for specific disallowed patterns or words
    // For example, disallowing the word "admin" in the username
    if (username.toLowerCase() == 'admin') {
      return "Username cannot contain the word admin";
    }

    // If all conditions pass, the username is valid
    return "";
  }

  FutureOr<void> _onSubmitedLoginEvent(
      SubmitedLoginEvent event, Emitter<LoginState> emit) {
    var userNameError = _validateUsername(event.userName!);
    var messagePasswordError = _validatePassword(event.password!);

    if (userNameError.isNotEmpty) {
      emit(UserNameChangeLoginState(
          userName: event.userName,
          password: state.password,
          errorMessage: userNameError));
      return ();
    }

    if (messagePasswordError.isNotEmpty) {
      emit(PasswordChangeLoginState(
          userName: state.userName,
          password: event.password,
          errorMessage: messagePasswordError));
      return ();
    }

    emit(SuccessLoginState(userName: event.userName, password: event.password));
  }
}
