import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_origin/config/multi_language/multi_languages.dart';
import 'package:flutter_origin/core/base/widgets/page_widget.dart';
import 'package:flutter_origin/presentation/pages/login/bloc/login_page_bloc.dart';
import 'package:flutter_origin/presentation/pages/login/bloc/login_page_state.dart';

@RoutePage()
class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return PageWidget<LoginPageBloc>(child:
        BlocBuilder<LoginPageBloc, LoginPageState>(builder: (context, state) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
           _buidLogo(),
           _buildEmailField(),
          ],
        ),
      );
    }));
  }
  
  _buidLogo() {
    return Column(
      children: <Widget>[
        Image.asset(
          'assets/images/news_logo.png',
        ),
          const SizedBox(
          height: 20,
        ),
        Text(MultiLanguages.of(context).translate("login"), style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),)
      ],
    );
  }
  
  _buildEmailField() {
    return Column(
      children: <Widget>[
        Text(MultiLanguages.of(context).translate("login")),
        const SizedBox(
          height: 10,
        ),
        TextFormField(
          decoration: const InputDecoration(
            hintText: 'Email',
            border: OutlineInputBorder(),
          ),
        ),],
    );
  }
}
