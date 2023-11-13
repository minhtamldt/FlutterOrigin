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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(AppLocalizations.of(context)!.loign),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  // context.read<LoginPageBloc>().add(LoginPageEvent());
                },
                child: const Text('Login'))
          ],
        ),
      );
    }));
  }
}
