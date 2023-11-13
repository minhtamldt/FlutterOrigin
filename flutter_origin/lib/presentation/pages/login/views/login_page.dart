import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_origin/core/base/widgets/page_widget.dart';
import 'package:flutter_origin/presentation/pages/login/bloc/login_page_bloc.dart';
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
    return PageWidget<LoginPageBloc>(child:
        BlocBuilder<LoginPageBloc, LoginPageState>(builder: (context, state) {
      return Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 46, right: 46),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(flex: 30, child: _buildLogo(context)),
              Expanded(flex: 15, child: _buildUserName(context)),
              Expanded(flex: 15, child: _buildPassword(context)),
              Expanded(
                  flex: 0,
                  child: Container(
                    color: Colors.pink,
                  )),
              Expanded(flex: 10, child: _buildButtonLogin(context)),
              Expanded(flex: 10, child: _buildSigninwith(context)),
              Expanded(flex: 10, child: _buildSocialView()),
              Expanded(flex: 10, child: _buildRegister(context)),
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
        GestureDetector(
          onTap: () {},
          child: Image.asset('assets/images/ic_email.png'),
        ),
        GestureDetector(
          onTap: () {},
          child: Image.asset('assets/images/ic_google.png'),
        ),
        GestureDetector(
          onTap: () {},
          child: Image.asset('assets/images/ic_facebook.png'),
        ),
        GestureDetector(
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

  Center _buildButtonLogin(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 150,
        height: 40,
        child: ElevatedButton(
            onPressed: () {},
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ))),
            child: SizedBox(child: Text(AppLocalizations.of(context)!.loign))),
      ),
    );
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

  _buildUserName(BuildContext context) {
    return Column(
      children: <Widget>[
        Align(
            alignment: Alignment.centerLeft,
            child: Text(
              AppLocalizations.of(context)!.userName,
              style: const TextStyle(color: Colors.grey),
            )),
        const TextField()
      ],
    );
  }

  bool _isShowPassword = false;
  _buildPassword(BuildContext context) {
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
                const TextField(),
                Align(
                    alignment: Alignment.centerRight,
                    child: GestureDetector(
                        onTap: () {
                          setState(() {
                            _isShowPassword = !_isShowPassword;
                          });
                        },
                        child: _isShowPassword
                            ? Image.asset('assets/images/ic_eye_on.png')
                            : Image.asset('assets/images/ic_eye_off.png')))
              ],
            )),
        const SizedBox(
          height: 10,
        ),
        GestureDetector(
          onTap: () {},
          child: Align(
              alignment: Alignment.centerRight,
              child: Text(AppLocalizations.of(context)!.forgotPassword)),
        )
      ],
    );
  }
}
