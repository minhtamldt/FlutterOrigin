import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_origin/presentation/login/bloc/login_event.dart';
import 'package:flutter_origin/presentation/login/bloc/login_state.dart';

class LoginPageBloc extends Bloc<LoginEvent, LoginState> {
  LoginPageBloc(super.initialState) {
    on<UserNameChanged>(_onUserNameChanged);
    on<PasswordChanged>(_onPasswordChanged);
  }

  FutureOr<void> _onUserNameChanged(
      UserNameChanged event, Emitter<LoginState> emit) {
    emit(state.copyWith(userName: event.userName));
  }

  FutureOr<void> _onPasswordChanged(
      PasswordChanged event, Emitter<LoginState> emit) {
    emit(state.copyWith(password: event.password));
  }
}
