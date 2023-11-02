// ignore_for_file: public_member_api_docs, sort_constructors_first, must_be_immutable
import 'package:flutter_origin/common/bases/blocs/states/page_state.dart';

class LoginState extends PageState {
  String? username;
  String? password;

  LoginState({
    this.username,
    this.password,
  });

  LoginState copyWith({String? username, String? password}) {
    return LoginState(
        username: username ?? this.username,
        password: password ?? this.password);
  }

  @override
  List<Object?> get props => [username, password];
}
