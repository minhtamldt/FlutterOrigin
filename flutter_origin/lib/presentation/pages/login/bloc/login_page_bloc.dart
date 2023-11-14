import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_origin/core/base/bloc/base_bloc.dart';
import 'package:flutter_origin/presentation/pages/login/bloc/login_page_event.dart';
import 'package:flutter_origin/presentation/pages/login/bloc/login_page_state.dart';

class LoginPageBloc extends BaseBloc<LoginPageEvent, LoginPageState> {
  LoginPageBloc(super.initialState) {
    on<HidePasswordEvent>(_hidePasswordEvent);
    on<UsernameChanged>(_onUsernameChanged);
    on<PasswordChanged>(_onPasswordChanged);
  }

  FutureOr<void> _hidePasswordEvent(
      HidePasswordEvent event, Emitter<LoginPageState> emit) {
    emit(state.copyWith(isHidePassword: event.isHidePassword));
  }

  FutureOr<void> _onPasswordChanged(
      PasswordChanged event, Emitter<LoginPageState> emit) {
    var errorPassword = _validatePassword(event.password!);
    emit(
        state.copyWith(passwordError: errorPassword, userName: event.password));
  }

  FutureOr<void> _onUsernameChanged(
      UsernameChanged event, Emitter<LoginPageState> emit) {
    var errorUserName = _validateUsername(event.username!);
    emit(
        state.copyWith(userNameError: errorUserName, userName: event.username));
  }

  UserNameErrorType _validateUsername(String username) {
    // Define the regular expression pattern
    final RegExp usernameRegExp = RegExp(r'^[a-zA-Z0-9_]{3,20}$');

    // Check if the username matches the pattern
    if (!usernameRegExp.hasMatch(username)) {
      return UserNameErrorType.invalid;
      // return 'Invalid username. It should consist of letters, numbers, and underscores, and be between 3 and 20 characters.';
    }
    return UserNameErrorType.valid;
  }

  PasswordErrorType _validatePassword(String password) {
    // Minimum and maximum length criteria
    if (password.length < 8 || password.length > 20) {
      return PasswordErrorType.invalidLenght;
      // return 'Invalid password length. It should be between 8 and 20 characters.';
    }

    // Check if the password contains at least one letter and one number
    if (!(password.contains(RegExp(r'[a-zA-Z]')) &&
        password.contains(RegExp(r'[0-9]')))) {
      return PasswordErrorType.invalidNumber;
      // return 'Invalid password. It should contain at least one letter and one number.';
    }

    // Additional criteria can be added as needed, e.g., special characters
    return PasswordErrorType.valid;
    // If all criteria are met, return a success message
    // return 'Password is valid!';
  }
}
