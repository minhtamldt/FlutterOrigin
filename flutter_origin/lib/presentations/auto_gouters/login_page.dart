import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_origin/common/bases/widgets/base_stateless_widget.dart';
import 'package:flutter_origin/presentations/navigators/routes/route_constants.dart';

@RoutePage()
class LoginPage extends BaseStatelessWidget {
  LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Page C"),
      ),
      body: SafeArea(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  AutoRouter.of(context)
                      .replaceNamed(RouteConstants.mainTabbedPage);
                },
                child: const Text("Login")),
          ],
        ),
      )),
    );
  }
}
