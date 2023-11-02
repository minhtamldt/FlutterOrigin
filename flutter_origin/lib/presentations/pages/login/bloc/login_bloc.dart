import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_origin/common/bases/blocs/events/page_event.dart';
import 'package:flutter_origin/common/bases/blocs/page_bloc.dart';
import 'package:flutter_origin/presentations/pages/login/bloc/login_event.dart';
import 'package:flutter_origin/presentations/pages/login/bloc/login_state.dart';

class LoginBloc extends PageBloc<LoginEvent, LoginState> {
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

  @override
  FutureOr<void> onInActivedEvent(InActived event, Emitter<LoginState> emit) {}

  @override
  FutureOr<void> onResumeEvent(ResumeEvent event, Emitter<LoginState> emit) {
    // TODO: implement onResumeEvent
    throw UnimplementedError();
  }
}
