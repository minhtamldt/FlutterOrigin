import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_origin/common/bases/widgets/base_stateless_widget.dart';
import 'package:flutter_origin/presentations/navigators/routes/app_routes.gr.dart';

class PageB extends BaseStatelessWidget {
  PageB({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Page B"),
      ),
      body: Container(
        color: Colors.blueAccent,
        child: SafeArea(
            child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text("Page B"),
              const SizedBox(height: 16),
              ElevatedButton(
                  onPressed: () {
                    AutoRouter.of(context).navigate(RouteC());
                  },
                  child: const Text("Selected Tab C")),
            ],
          ),
        )),
      ),
    );
  }
}
