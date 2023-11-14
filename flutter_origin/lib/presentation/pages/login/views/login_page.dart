import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_origin/core/base/widgets/page_widget.dart';
import 'package:flutter_origin/core/constants/router_contants.dart';
import 'package:flutter_origin/presentation/pages/login/bloc/login_page_bloc.dart';
import 'package:flutter_origin/presentation/pages/login/bloc/login_page_event.dart';
import 'package:flutter_origin/presentation/pages/login/bloc/login_page_state.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

@RoutePage()
class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return PageWidget<LoginPageBloc>(child: Builder(builder: (context) {
      return Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 46, right: 46),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(flex: 40, child: _buildLogo(context)),
              _buildUserName(context),
              const SizedBox(
                height: 10,
              ),
              _buildPassword(context),
              Expanded(flex: 15, child: _buildButtonLogin(context)),
              Expanded(flex: 15, child: _buildSigninwith(context)),
              Expanded(flex: 15, child: _buildSocialView()),
              Expanded(flex: 15, child: _buildRegister(context)),
            ],
          ),
        ),
      );
    }));
  }

  GestureDetector _buildRegister(BuildContext context) {
    return GestureDetector(
        onTap: () {
          // context.router.pushNamed('/home');
        },
        child: RichText(
            text: TextSpan(
                text: AppLocalizations.of(context)!.noAccount,
                style: const TextStyle(color: Colors.black),
                children: [
              const TextSpan(text: " "),
              TextSpan(
                  text: AppLocalizations.of(context)!.register,
                  style: const TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold))
            ])));
  }

  Row _buildSocialView() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        InkWell(
          onTap: () {},
          child: Image.asset('assets/images/ic_email.png'),
        ),
        InkWell(
          onTap: () {},
          child: Image.asset('assets/images/ic_google.png'),
        ),
        InkWell(
          onTap: () {},
          child: Image.asset('assets/images/ic_facebook.png'),
        ),
        InkWell(
          onTap: () {},
          child: Image.asset('assets/images/ic_apple.png'),
        ),
      ],
    );
  }

  Row _buildSigninwith(BuildContext context) {
    return Row(
      children: <Widget>[
        const Expanded(
          child: Divider(
            color: Colors.black,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: Text(
            AppLocalizations.of(context)!.signInWith,
          ),
        ),
        const Expanded(
          child: Divider(
            color: Colors.black,
          ),
        ),
      ],
    );
  }

  _buildButtonLogin(BuildContext context) {
    return Builder(builder: (context) {
      return Center(
        child: SizedBox(
          width: 150,
          height: 40,
          child: ElevatedButton(
              onPressed: () {
                AutoRouter.of(context)
                    .pushNamed(RouterContants.forgotPasswordPage);
              },
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.black),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ))),
              child:
                  SizedBox(child: Text(AppLocalizations.of(context)!.loign))),
        ),
      );
    });
  }

  _buildLogo(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Image.asset("assets/images/news_logo.png"),
        const SizedBox(
          height: 10,
        ),
        Text(
          AppLocalizations.of(context)!.appName,
          style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        )
      ],
    );
  }

  final TextEditingController _userNameController = TextEditingController();
  _buildUserName(BuildContext context) {
    return BlocBuilder<LoginPageBloc, LoginPageState>(
      buildWhen: (previous, current) {
        return current.userName != previous.userName ||
            current.userNameError != previous.userNameError;
      },
      builder: (context, state) {
        _userNameController.text = state.userName!;
        return Column(
          children: <Widget>[
            Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  AppLocalizations.of(context)!.userName,
                  style: const TextStyle(color: Colors.grey),
                )),
            TextField(
              controller: _userNameController,
              onChanged: (value) {
                var bloc = PageWidget.of<LoginPageBloc>(context);
                bloc.add(UsernameChanged(username: value));
              },
            ),
            const SizedBox(
              height: 5,
            ),
            Visibility(
              visible: state.userNameError == UserNameErrorType.invalid,
              child: Text(AppLocalizations.of(context)!.userNameError,
                  style: const TextStyle(color: Colors.red, fontSize: 12)),
            )
          ],
        );
      },
    );
  }

  final TextEditingController _passwordController = TextEditingController();
  _buildPassword(BuildContext context) {
    return BlocBuilder<LoginPageBloc, LoginPageState>(
      buildWhen: (previous, current) {
        return current.password != previous.password ||
            current.isHidePassword != previous.isHidePassword;
      },
      builder: (context, state) {
        var bloc = PageWidget.of<LoginPageBloc>(context);
        _passwordController.text = state.password!;
        return Column(
          children: <Widget>[
            Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  AppLocalizations.of(context)!.password,
                  style: const TextStyle(color: Colors.grey),
                )),
            SizedBox(
                height: 40,
                child: Stack(
                  children: [
                    TextField(
                      controller: _passwordController,
                      obscureText: state.isHidePassword!,
                      decoration: const InputDecoration(
                          contentPadding: EdgeInsets.only(right: 25)),
                      onChanged: (value) {
                        bloc.add(PasswordChanged(password: value));
                      },
                    ),
                    Align(
                        alignment: Alignment.centerRight,
                        child: GestureDetector(
                            onTap: () {
                              bloc.add(
                                  HidePasswordEvent(!state.isHidePassword!));
                            },
                            child: Image.asset(state.isHidePassword!
                                ? 'assets/images/ic_eye_on.png'
                                : 'assets/images/ic_eye_off.png')))
                  ],
                )),
            const SizedBox(
              height: 10,
            ),
            Visibility(
              visible: state.passwordError != PasswordErrorType.valid,
              child: Text(AppLocalizations.of(context)!.passwordErrorLenght,
                  style: const TextStyle(color: Colors.red, fontSize: 12)),
            ),
            GestureDetector(
              onTap: () {},
              child: Align(
                  alignment: Alignment.centerRight,
                  child: Text(AppLocalizations.of(context)!.forgotPassword)),
            ),
          ],
        );
      },
    );
  }
}
