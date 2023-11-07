import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_origin/core/constants/router_contanstants.dart';
import 'package:flutter_origin/main.dart';
import 'package:flutter_origin/presentation/login/bloc/login_bloc.dart';
import 'package:flutter_origin/presentation/login/bloc/login_event.dart';
import 'package:flutter_origin/presentation/login/bloc/login_state.dart';

@RoutePage()
class LoginPage extends StatefulWidget {
  LoginPage({super.key});

  final LoginPageBloc _bloc = getIt<LoginPageBloc>();
  LoginPageBloc get bloc => _bloc;

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<LoginPageBloc>(
        create: (context) => widget.bloc,
        child: Scaffold(
          body: SafeArea(child: _buildBody()),
        ));
  }

  Container _buildBody() {
    return Container(
      decoration: const BoxDecoration(
          shape: BoxShape.rectangle,
          gradient: LinearGradient(
            colors: [
              Colors.white,
              Colors.white,
              Colors.white,
              Colors.white,
              Colors.white,
              Colors.blue
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          )),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
              flex: 5,
              child: SizedBox(
                  width: 200,
                  height: 200,
                  child: Image.asset("assets/images/flutter.png"))),
          const Text(
            "Hello, Flutter!",
            style: TextStyle(
                fontSize: 30, fontWeight: FontWeight.bold, color: Colors.blue),
          ),
          const SizedBox(height: 20),
          Container(
            padding: const EdgeInsets.only(left: 50, right: 50),
            child: _buildUserName(),
          ),
          const SizedBox(height: 10),
          Container(
            padding: const EdgeInsets.only(left: 50, right: 50),
            child: _buildPassword(),
          ),
          const SizedBox(height: 10),
          SizedBox(
            height: 50,
            width: 200,
            child: BlocListener<LoginPageBloc, LoginState>(
                listener: (context, state) {
                  if (state is SuccessLoginState) {
                    AutoRouter.of(context)
                        .replaceNamed(RouterConstants.homeTabbedPage);
                  }
                },
                child: ElevatedButton(
                  onPressed: () async {
                    SubmitedLoginEvent event = SubmitedLoginEvent(
                        userName: _userCtl.text, password: _passwordCtl.text);
                    widget.bloc.add(event);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                      side: const BorderSide(color: Colors.blue, width: 2.0),
                    ),
                  ),
                  child: const Text(
                    'Login',
                    style: TextStyle(color: Colors.blue),
                  ),
                )),
          ),
          Expanded(
            flex: 5,
            child: Container(
              color: Colors.transparent,
            ),
          ),
          const Text(
            "Welcome to Flutter Multi-platform App UI",
            style: TextStyle(color: Colors.white),
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }

  final TextEditingController _passwordCtl = TextEditingController();
  BlocBuilder<LoginPageBloc, LoginState> _buildPassword() {
    return BlocBuilder<LoginPageBloc, LoginState>(
      buildWhen: (previous, current) {
        return current is PasswordChangeLoginState;
      },
      builder: (BuildContext context, LoginState state) {
        _passwordCtl.text = state.password ?? "";

        String passwordMessageError = "";
        if (state is PasswordChangeLoginState) {
          passwordMessageError = state.errorMessage ?? "";
        }

        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 50,
              child: TextField(
                controller: _passwordCtl,
                style: const TextStyle(fontSize: 14, height: 1),
                decoration: InputDecoration(
                  hintText: 'Enter your password',
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(color: Colors.blue),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(color: Colors.blueGrey),
                  ),
                ),
                onChanged: (password) {
                  widget.bloc.add(PasswordChanged(password: password));
                },
              ),
            ),
            Visibility(
                visible: passwordMessageError.isNotEmpty,
                child: Text(
                  passwordMessageError,
                  style: const TextStyle(color: Colors.green, fontSize: 12),
                ))
          ],
        );
      },
    );
  }

  final TextEditingController _userCtl = TextEditingController();
  BlocBuilder<LoginPageBloc, LoginState> _buildUserName() {
    return BlocBuilder<LoginPageBloc, LoginState>(
      buildWhen: (previous, current) {
        return current is UserNameChangeLoginState;
      },
      builder: (context, state) {
        _userCtl.text = state.userName ?? "";
        var placeHolder = 'Enter your username';

        String userNameMessageError = "";
        if (state is UserNameChangeLoginState) {
          userNameMessageError = state.errorMessage ?? "";
        }

        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 50,
              child: TextField(
                controller: _userCtl,
                decoration: InputDecoration(
                  hintText: placeHolder,
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(color: Colors.blue),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(color: Colors.blueGrey),
                  ),
                ),
                onChanged: (username) {
                  widget.bloc.add(UserNameChanged(userName: username));
                },
              ),
            ),
            Visibility(
                visible: userNameMessageError.isNotEmpty,
                child: Text(
                  userNameMessageError,
                  style: const TextStyle(color: Colors.red, fontSize: 12),
                ))
          ],
        );
      },
    );
  }
}
