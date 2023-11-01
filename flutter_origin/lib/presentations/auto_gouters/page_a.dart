import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_origin/common/bases/widgets/base_stateless_widget.dart';
import 'package:flutter_origin/presentations/navigators/routes/app_routes.gr.dart';
import 'package:flutter_origin/presentations/navigators/routes/route_constants.dart';

@RoutePage()
class PageA extends BaseStatelessWidget {
  PageA({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Page A"),
      ),
      body: SafeArea(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text("Page A"),
            const SizedBox(height: 16),
            ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                onPressed: () {
                  AutoRouter.of(context).push(RouteB());
                },
                child: const Text("Push RouteB")),
            ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                onPressed: () {
                  AutoRouter.of(context).pushNamed(RouteConstants.pageB);
                },
                child: const Text("PushName RouteB")),
          ],
        ),
      )),
    );
  }
}
