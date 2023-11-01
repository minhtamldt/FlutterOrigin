import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_origin/common/bases/widgets/base_stateless_widget.dart';
import 'package:flutter_origin/presentations/navigators/routes/route_constants.dart';

@RoutePage()
class PageD extends BaseStatelessWidget {
  PageD({super.key});

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
            const Text("Page D"),
            const SizedBox(height: 16),
            ElevatedButton(
                onPressed: () {
                  AutoRouter.of(context).pop(context);
                },
                child: const Text("Back To Page C")),
            ElevatedButton(
                onPressed: () {
                  AutoRouter.of(context).navigateNamed(RouteConstants.pageB);
                },
                child: const Text("Back To Page B")),
            ElevatedButton(
                onPressed: () {
                  AutoRouter.of(context).popUntilRoot();
                },
                child: const Text("Back To Root")),
          ],
        ),
      )),
    );
  }
}
