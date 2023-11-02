import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_origin/presentations/pages/login/bloc/login_event.dart';
import 'package:flutter_origin/presentations/pages/login/bloc/login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(LoginState()) {
    on<UserNameChanged>(_onUsernameChanged);
    on<PasswordChanged>(_onPasswordChanged);
  }

  FutureOr<void> _onUsernameChanged(
      UserNameChanged event, Emitter<LoginState> emit) {
    state.username = event.username;
  }

  FutureOr<void> _onPasswordChanged(
      PasswordChanged event, Emitter<LoginState> emit) {
    state.password = event.password;
  }
}
