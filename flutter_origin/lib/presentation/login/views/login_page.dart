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
  const LoginPage({super.key});

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
    TextEditingController usernameController = TextEditingController();
    TextEditingController passwordControler = TextEditingController();
    return Scaffold(
      body: Container(
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
        child: SafeArea(
          child: BlocProvider<LoginPageBloc>(
            create: (context) => getIt<LoginPageBloc>(),
            child: BlocListener<LoginPageBloc, LoginState>(
              listenWhen: (previous, current) => true,
              listener: (BuildContext context, LoginState state) {
                var snackBar = SnackBar(
                  content: Text(
                      "username: ${state.userName} password: ${state.password}"),
                );
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                      flex: 6,
                      child: SizedBox(
                          width: 200,
                          height: 200,
                          child: Image.asset("assets/images/flutter.png"))),
                  const Text(
                    "Hello, Flutter!",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    padding: const EdgeInsets.only(left: 50, right: 50),
                    height: 50,
                    child: BlocBuilder<LoginPageBloc, LoginState>(
                      builder: (context, state) {
                        return TextField(
                          controller: usernameController,
                          decoration: InputDecoration(
                            hintText: 'Enter your username',
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: const BorderSide(color: Colors.blue),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide:
                                  const BorderSide(color: Colors.blueGrey),
                            ),
                          ),
                          onChanged: (username) {
                            context
                                .read<LoginPageBloc>()
                                .add(UserNameChanged(userName: username));
                          },
                        );
                      },
                    ),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    padding: const EdgeInsets.only(left: 50, right: 50),
                    height: 50,
                    child: BlocBuilder<LoginPageBloc, LoginState>(
                      builder: (BuildContext context, LoginState state) {
                        return TextField(
                          controller: passwordControler,
                          style: const TextStyle(fontSize: 14, height: 1),
                          decoration: InputDecoration(
                            hintText: 'Enter your password',
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: const BorderSide(color: Colors.blue),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide:
                                  const BorderSide(color: Colors.blueGrey),
                            ),
                          ),
                          onChanged: (password) {
                            context
                                .read<LoginPageBloc>()
                                .add(PasswordChanged(password: password));
                          },
                        );
                      },
                    ),
                  ),
                  const SizedBox(height: 10),
                  SizedBox(
                    width: 200,
                    child: BlocBuilder<LoginPageBloc, LoginState>(
                      builder: (context, state) {
                        return ElevatedButton(
                          onPressed: () async {
                            var snackBar = SnackBar(
                              content: Text(
                                  "username: ${state.userName} password: ${state.password}"),
                            );
                            ScaffoldMessenger.of(context)
                                .showSnackBar(snackBar);
                            AutoRouter.of(context)
                                .replaceNamed(RouterConstants.homeTabbedPage);
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0),
                              side: const BorderSide(
                                  color: Colors.blue, width: 2.0),
                            ),
                          ),
                          child: const Text(
                            'Login',
                            style: TextStyle(color: Colors.blue),
                          ),
                        );
                      },
                    ),
                  ),
                  Expanded(
                    flex: 4,
                    child: Container(
                      color: Colors.transparent,
                    ),
                  ),
                  BlocBuilder<LoginPageBloc, LoginState>(
                      builder: (context, state) {
                    return const Text(
                      "Welcome to Flutter Multi-platform App UI",
                      style: TextStyle(color: Colors.white),
                    );
                  }),
                  const SizedBox(height: 10),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
