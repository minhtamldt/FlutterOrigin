// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

class LoginState extends Equatable {
  final String? userName;
  final String? password;

  const LoginState(this.userName, this.password);

  @override
  List<Object?> get props => [];

  LoginState copyWith({
    String? userName,
    String? password,
  }) {
    return LoginState(
      userName ?? this.userName,
      password ?? this.password,
    );
  }
}
