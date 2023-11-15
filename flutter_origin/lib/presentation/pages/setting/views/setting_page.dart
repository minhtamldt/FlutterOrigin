import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_origin/core/base/widgets/page_widget.dart';
import 'package:flutter_origin/core/constants/router_contants.dart';
import 'package:flutter_origin/presentation/pages/setting/bloc/setting_page_bloc.dart';

@RoutePage()
class SettingPage extends StatefulWidget {
  const SettingPage({super.key});

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    return PageWidget<SettingPageBloc>(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('Setting Page'),
            ElevatedButton(
              onPressed: () {
                AutoRouter.of(context).replaceNamed(RouterContants.loginPage);
              },
              child: const Text('Log Out'),
            ),
          ],
        ),
      ),
    );
  }
}
