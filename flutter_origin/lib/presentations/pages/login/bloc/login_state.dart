import 'package:equatable/equatable.dart';

class LoginState extends Equatable {
  String? username;
  String? password;

  LoginState({this.username = "hellodart", this.password = "123456"});

  LoginState copyWith({String? username, String? password}) {
    return LoginState(
        username: username ?? this.username,
        password: password ?? this.password);
  }

  @override
  List<Object?> get props => [username, password];
}
