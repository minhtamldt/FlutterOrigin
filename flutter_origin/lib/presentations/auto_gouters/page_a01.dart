import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_origin/common/bases/widgets/base_stateless_widget.dart';
import 'package:flutter_origin/presentations/navigators/routes/app_routes.gr.dart';

@RoutePage()
class PageA01 extends BaseStatelessWidget {
  PageA01({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Page A 01"),
      ),
      body: Container(
        color: Colors.blueGrey,
        child: SafeArea(
            child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 16),
              ElevatedButton(
                  onPressed: () {
                    context.pushRoute(RouteA02());
                  },
                  child: const Text(
                    "Go to Page A 02",
                    style: TextStyle(color: Colors.black),
                  )),
              ElevatedButton(
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                  child: const Text(
                    "Show Drawer",
                    style: TextStyle(color: Colors.black),
                  )),
            ],
          ),
        )),
      ),
    );
  }
}
