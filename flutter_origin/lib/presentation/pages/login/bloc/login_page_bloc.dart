import 'package:flutter_origin/core/base/bloc/base_bloc.dart';
import 'package:flutter_origin/presentation/pages/login/bloc/login_page_event.dart';
import 'package:flutter_origin/presentation/pages/login/bloc/login_page_state.dart';

class LoginPageBloc extends BaseBloc<LoginPageEvent, LoginPageState> {
  LoginPageBloc(super.initialState);
}
