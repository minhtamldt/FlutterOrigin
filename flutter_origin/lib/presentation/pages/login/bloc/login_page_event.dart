// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter_origin/core/base/bloc/base_event.dart';

class LoginPageEvent extends BaseEvent {}

class HidePasswordEvent extends LoginPageEvent {
  final bool isHidePassword;
  HidePasswordEvent(this.isHidePassword);
}

class UsernameChanged extends LoginPageEvent {
  final String? username;
  UsernameChanged({
    this.username,
  });
}

class PasswordChanged extends LoginPageEvent {
  final String? password;
  PasswordChanged({
    this.password,
  });
}
